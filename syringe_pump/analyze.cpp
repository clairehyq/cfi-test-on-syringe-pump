#include <iostream>
#include <fstream>
#include <sstream>
#include <string>

using namespace std;
static int test = 2;

int main(int argc, char const *argv[])
{
    string file_name = "output.txt";
    fstream file;
    file.open(file_name);

    int num_normal_one = 0;
    int num_normal_two = 0;
    int num_total_one = 0;
    int num_total_two = 0;
    double overhead_one = 0.0;
    double overhead_two = 0.0;
    double avg_overhead_one = 0.0;
    double avg_overhead_two = 0.0;
    
    if (!file.is_open())
    {
        if(num_normal_one < test){
            int data = file.get();
            int data_cfi = file.get();

            if(data < data_cfi){
                num_normal_one++;
                overhead_one += (data_cfi - data) / data;
            }
            num_normal_one++;
        }else{
            int data_cfi = file.get();
            int data = file.get();

            if(data < data_cfi){
                num_normal_two++;
                overhead_two += (data_cfi - data) / data;
            }
        }
    }

    avg_overhead_one = overhead_one / num_normal_one;
    avg_overhead_two = overhead_two / num_normal_two;
    
    cout << "Total execution is: " << test << ", normal execution is: " << num_normal_one << endl;
    cout << "Avg overhead is: " << avg_overhead_one << "%." << endl;

    cout << "Total execution is: " << test << ", normal execution is: " << num_normal_two << endl;
    cout << "Avg overhead is: " << avg_overhead_two << "%." << endl;

    return 0;
}
