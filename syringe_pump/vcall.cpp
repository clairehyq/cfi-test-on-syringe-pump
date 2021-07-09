#define _GNU_SOURCE
#include <sched.h>
#include <unistd.h> /* sysconf */
#include <iostream>
#include <string>
#include <chrono>
#include <iomanip>

using namespace std;

struct Account {
    Account(const std::string &s) : name(s) {}
    virtual ~Account() {}
    void showName() {
        // std::cout << "Account name is: " << name << std::endl;
    }
    void adminStuff() { 
        // std::cout << "Not Implemented" << std::endl; 
    }
    std::string name;
};

struct UserAccount : Account {
    UserAccount(const std::string &s) : Account(s) {}
    virtual ~UserAccount() {}
    void adminStuff() { 
        // std::cout << "Admin Work not permitted for a user account!" << std::endl;
    }
};

struct AdminAccount : Account {
    AdminAccount(const std::string &s) : Account(s) {}
    virtual ~AdminAccount() {}
    void adminStuff() { 
        // std::cout << "Would do admin work in context of: " << this->name << std::endl;
    }
};

int main(int argc, const char *argv[]) {

    cpu_set_t mask;
    unsigned long bitmask = 0;
    
    CPU_ZERO(&mask);
    
    // CPU_SET(0, &mask); /* add CPU0 to cpu set */
    CPU_SET(3, &mask); /* add CPU2 to cpu set */

      /* Set the CPU affinity for a pid */
    if (sched_setaffinity(0, sizeof(cpu_set_t), &mask) == -1) 
    {   
        perror("sched_setaffinity");
        // exit(EXIT_FAILURE);
    }
    
    CPU_ZERO(&mask);    


    UserAccount* user = new UserAccount("user");
    AdminAccount* admin = new AdminAccount("admin");

    (void)(argc);
    (void)(argv);
    auto start = chrono::high_resolution_clock::now();


    for(int i = 0; i < 100000000; i++){

    // std::cout << "Admin check: " << std::endl;
    admin->showName();
    admin->adminStuff();

    // std::cout << "User check: " << std::endl;
    user->showName();
    user->adminStuff();
    
    // imagine this change happens via memory corruption,
    // type confusion, deserialization vulnerability,
    // or a similar flaw
    Account *account = static_cast<Account*>(user);
    AdminAccount *admin_it = static_cast<AdminAccount*>(account);

    admin_it->showName();
    // std::cout << "CFI Should prevent the actions below:" << std::endl;


    // HERE:

        admin_it->adminStuff();
    }

    auto end = chrono::high_resolution_clock::now();

    double time_taken = chrono::duration_cast<chrono::nanoseconds>(end - start).count();
  
    time_taken *= 1e-6;
  
    cout << "Time taken by program is : " << time_taken;
    cout << " millisec" << endl;

    cout << "Time taken by program is : " << time_taken / 1000;
    cout << " sec" << endl;

    return 0;
}
