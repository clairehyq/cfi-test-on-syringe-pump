; ModuleID = 'vcall.cpp'
source_filename = "vcall.cpp"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv6k-unknown-linux-gnueabihf"

%"class.std::ios_base::Init" = type { i8 }
%struct.UserAccount = type { %struct.Account }
%struct.Account = type { i32 (...)**, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider", i32, %union.anon }
%"struct.std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider" = type { i8* }
%union.anon = type { i32, [12 x i8] }
%"class.std::allocator" = type { i8 }
%struct.AdminAccount = type { %struct.Account }

$_ZN11UserAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN12AdminAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN7Account8showNameEv = comdat any

$_ZN12AdminAccount10adminStuffEv = comdat any

$_ZN11UserAccount10adminStuffEv = comdat any

$_ZN7AccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN11UserAccountD2Ev = comdat any

$_ZN11UserAccountD0Ev = comdat any

$_ZN7AccountD2Ev = comdat any

$_ZN7AccountD0Ev = comdat any

$_ZN12AdminAccountD2Ev = comdat any

$_ZN12AdminAccountD0Ev = comdat any

$_ZTV11UserAccount = comdat any

$_ZTS11UserAccount = comdat any

$_ZTS7Account = comdat any

$_ZTI7Account = comdat any

$_ZTI11UserAccount = comdat any

$_ZTV7Account = comdat any

$_ZTV12AdminAccount = comdat any

$_ZTS12AdminAccount = comdat any

$_ZTI12AdminAccount = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@_ZTV11UserAccount = linkonce_odr hidden unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI11UserAccount to i8*), i8* bitcast (%struct.UserAccount* (%struct.UserAccount*)* @_ZN11UserAccountD2Ev to i8*), i8* bitcast (void (%struct.UserAccount*)* @_ZN11UserAccountD0Ev to i8*)] }, comdat, align 4, !type !0, !type !1, !type !2, !type !1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTS11UserAccount = linkonce_odr hidden constant [14 x i8] c"11UserAccount\00", comdat
@_ZTVN10__cxxabiv117__class_type_infoE = external dso_local global i8*
@_ZTS7Account = linkonce_odr hidden constant [9 x i8] c"7Account\00", comdat
@_ZTI7Account = linkonce_odr hidden constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @_ZTS7Account, i32 0, i32 0) }, comdat
@_ZTI11UserAccount = linkonce_odr hidden constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @_ZTS11UserAccount, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7Account to i8*) }, comdat
@_ZTV7Account = linkonce_odr hidden unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI7Account to i8*), i8* bitcast (%struct.Account* (%struct.Account*)* @_ZN7AccountD2Ev to i8*), i8* bitcast (void (%struct.Account*)* @_ZN7AccountD0Ev to i8*)] }, comdat, align 4, !type !2, !type !1
@_ZTV12AdminAccount = linkonce_odr hidden unnamed_addr constant { [4 x i8*] } { [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTI12AdminAccount to i8*), i8* bitcast (%struct.AdminAccount* (%struct.AdminAccount*)* @_ZN12AdminAccountD2Ev to i8*), i8* bitcast (void (%struct.AdminAccount*)* @_ZN12AdminAccountD0Ev to i8*)] }, comdat, align 4, !type !3, !type !1, !type !2, !type !1
@_ZTS12AdminAccount = linkonce_odr hidden constant [15 x i8] c"12AdminAccount\00", comdat
@_ZTI12AdminAccount = linkonce_odr hidden constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i32 2) to i8*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @_ZTS12AdminAccount, i32 0, i32 0), i8* bitcast ({ i8*, i8* }* @_ZTI7Account to i8*) }, comdat
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_vcall.cpp, i8* null }]

; Function Attrs: noinline
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  %1 = call %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %2 = call i32 @__cxa_atexit(void (i8*)* bitcast (%"class.std::ios_base::Init"* (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3
  ret void
}

declare dso_local %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* returned) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local %"class.std::ios_base::Init"* @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* returned) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: noinline norecurse optnone
define hidden i32 @main(i32, i8**) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca %struct.UserAccount*, align 4
  %7 = alloca %"class.std::__cxx11::basic_string", align 4
  %8 = alloca %"class.std::allocator", align 1
  %9 = alloca i8*
  %10 = alloca i32
  %11 = alloca i1, align 1
  %12 = alloca %struct.AdminAccount*, align 4
  %13 = alloca %"class.std::__cxx11::basic_string", align 4
  %14 = alloca %"class.std::allocator", align 1
  %15 = alloca i1, align 1
  %16 = alloca i32, align 4
  %17 = alloca %struct.Account*, align 4
  %18 = alloca %struct.AdminAccount*, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  %19 = call i8* @_Znwj(i32 28) #9
  store i1 true, i1* %11, align 1
  %20 = bitcast i8* %19 to %struct.UserAccount*
  %21 = call %"class.std::allocator"* @_ZNSaIcEC1Ev(%"class.std::allocator"* %8) #3
  %22 = invoke %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %8)
          to label %23 unwind label %57

; <label>:23:                                     ; preds = %2
  %24 = invoke %struct.UserAccount* @_ZN11UserAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.UserAccount* %20, %"class.std::__cxx11::basic_string"* dereferenceable(24) %7)
          to label %25 unwind label %61

; <label>:25:                                     ; preds = %23
  store i1 false, i1* %11, align 1
  %26 = call %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %7) #3
  %27 = call %"class.std::allocator"* @_ZNSaIcED1Ev(%"class.std::allocator"* %8) #3
  store %struct.UserAccount* %20, %struct.UserAccount** %6, align 4
  %28 = call i8* @_Znwj(i32 28) #9
  store i1 true, i1* %15, align 1
  %29 = bitcast i8* %28 to %struct.AdminAccount*
  %30 = call %"class.std::allocator"* @_ZNSaIcEC1Ev(%"class.std::allocator"* %14) #3
  %31 = invoke %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %"class.std::allocator"* dereferenceable(1) %14)
          to label %32 unwind label %71

; <label>:32:                                     ; preds = %25
  %33 = invoke %struct.AdminAccount* @_ZN12AdminAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.AdminAccount* %29, %"class.std::__cxx11::basic_string"* dereferenceable(24) %13)
          to label %34 unwind label %75

; <label>:34:                                     ; preds = %32
  store i1 false, i1* %15, align 1
  %35 = call %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %13) #3
  %36 = call %"class.std::allocator"* @_ZNSaIcED1Ev(%"class.std::allocator"* %14) #3
  store %struct.AdminAccount* %29, %struct.AdminAccount** %12, align 4
  store i32 0, i32* %16, align 4
  br label %37

; <label>:37:                                     ; preds = %54, %34
  %38 = load i32, i32* %16, align 4
  %39 = icmp slt i32 %38, 100000000
  br i1 %39, label %40, label %85

; <label>:40:                                     ; preds = %37
  %41 = load %struct.AdminAccount*, %struct.AdminAccount** %12, align 4
  %42 = bitcast %struct.AdminAccount* %41 to %struct.Account*
  call void @_ZN7Account8showNameEv(%struct.Account* %42)
  %43 = load %struct.AdminAccount*, %struct.AdminAccount** %12, align 4
  call void @_ZN12AdminAccount10adminStuffEv(%struct.AdminAccount* %43)
  %44 = load %struct.UserAccount*, %struct.UserAccount** %6, align 4
  %45 = bitcast %struct.UserAccount* %44 to %struct.Account*
  call void @_ZN7Account8showNameEv(%struct.Account* %45)
  %46 = load %struct.UserAccount*, %struct.UserAccount** %6, align 4
  call void @_ZN11UserAccount10adminStuffEv(%struct.UserAccount* %46)
  %47 = load %struct.UserAccount*, %struct.UserAccount** %6, align 4
  %48 = bitcast %struct.UserAccount* %47 to %struct.Account*
  store %struct.Account* %48, %struct.Account** %17, align 4
  %49 = load %struct.Account*, %struct.Account** %17, align 4
  %50 = bitcast %struct.Account* %49 to %struct.AdminAccount*
  store %struct.AdminAccount* %50, %struct.AdminAccount** %18, align 4
  %51 = load %struct.AdminAccount*, %struct.AdminAccount** %18, align 4
  %52 = bitcast %struct.AdminAccount* %51 to %struct.Account*
  call void @_ZN7Account8showNameEv(%struct.Account* %52)
  %53 = load %struct.AdminAccount*, %struct.AdminAccount** %18, align 4
  call void @_ZN12AdminAccount10adminStuffEv(%struct.AdminAccount* %53)
  br label %54

; <label>:54:                                     ; preds = %40
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %16, align 4
  br label %37

; <label>:57:                                     ; preds = %2
  %58 = landingpad { i8*, i32 }
          cleanup
  %59 = extractvalue { i8*, i32 } %58, 0
  store i8* %59, i8** %9, align 4
  %60 = extractvalue { i8*, i32 } %58, 1
  store i32 %60, i32* %10, align 4
  br label %66

; <label>:61:                                     ; preds = %23
  %62 = landingpad { i8*, i32 }
          cleanup
  %63 = extractvalue { i8*, i32 } %62, 0
  store i8* %63, i8** %9, align 4
  %64 = extractvalue { i8*, i32 } %62, 1
  store i32 %64, i32* %10, align 4
  %65 = call %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %7) #3
  br label %66

; <label>:66:                                     ; preds = %61, %57
  %67 = call %"class.std::allocator"* @_ZNSaIcED1Ev(%"class.std::allocator"* %8) #3
  %68 = load i1, i1* %11, align 1
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %66
  call void @_ZdlPv(i8* %19) #10
  br label %70

; <label>:70:                                     ; preds = %69, %66
  br label %86

; <label>:71:                                     ; preds = %25
  %72 = landingpad { i8*, i32 }
          cleanup
  %73 = extractvalue { i8*, i32 } %72, 0
  store i8* %73, i8** %9, align 4
  %74 = extractvalue { i8*, i32 } %72, 1
  store i32 %74, i32* %10, align 4
  br label %80

; <label>:75:                                     ; preds = %32
  %76 = landingpad { i8*, i32 }
          cleanup
  %77 = extractvalue { i8*, i32 } %76, 0
  store i8* %77, i8** %9, align 4
  %78 = extractvalue { i8*, i32 } %76, 1
  store i32 %78, i32* %10, align 4
  %79 = call %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %13) #3
  br label %80

; <label>:80:                                     ; preds = %75, %71
  %81 = call %"class.std::allocator"* @_ZNSaIcED1Ev(%"class.std::allocator"* %14) #3
  %82 = load i1, i1* %15, align 1
  br i1 %82, label %83, label %84

; <label>:83:                                     ; preds = %80
  call void @_ZdlPv(i8* %28) #10
  br label %84

; <label>:84:                                     ; preds = %83, %80
  br label %86

; <label>:85:                                     ; preds = %37
  ret i32 0

; <label>:86:                                     ; preds = %84, %70
  %87 = load i8*, i8** %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = insertvalue { i8*, i32 } undef, i8* %87, 0
  %90 = insertvalue { i8*, i32 } %89, i32 %88, 1
  resume { i8*, i32 } %90
}

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwj(i32) #5

; Function Attrs: nounwind
declare dso_local %"class.std::allocator"* @_ZNSaIcEC1Ev(%"class.std::allocator"* returned) unnamed_addr #2

declare dso_local %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* returned, i8*, %"class.std::allocator"* dereferenceable(1)) unnamed_addr #1

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline optnone
define linkonce_odr hidden %struct.UserAccount* @_ZN11UserAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.UserAccount* returned, %"class.std::__cxx11::basic_string"* dereferenceable(24)) unnamed_addr #6 comdat align 2 {
  %3 = alloca %struct.UserAccount*, align 4
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 4
  store %struct.UserAccount* %0, %struct.UserAccount** %3, align 4
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 4
  %5 = load %struct.UserAccount*, %struct.UserAccount** %3, align 4
  %6 = bitcast %struct.UserAccount* %5 to %struct.Account*
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 4
  %8 = call %struct.Account* @_ZN7AccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Account* %6, %"class.std::__cxx11::basic_string"* dereferenceable(24) %7)
  %9 = bitcast %struct.UserAccount* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV11UserAccount, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %9, align 4
  ret %struct.UserAccount* %5
}

; Function Attrs: nounwind
declare dso_local %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* returned) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local %"class.std::allocator"* @_ZNSaIcED1Ev(%"class.std::allocator"* returned) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #7

; Function Attrs: noinline optnone
define linkonce_odr hidden %struct.AdminAccount* @_ZN12AdminAccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.AdminAccount* returned, %"class.std::__cxx11::basic_string"* dereferenceable(24)) unnamed_addr #6 comdat align 2 {
  %3 = alloca %struct.AdminAccount*, align 4
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 4
  store %struct.AdminAccount* %0, %struct.AdminAccount** %3, align 4
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 4
  %5 = load %struct.AdminAccount*, %struct.AdminAccount** %3, align 4
  %6 = bitcast %struct.AdminAccount* %5 to %struct.Account*
  %7 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 4
  %8 = call %struct.Account* @_ZN7AccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Account* %6, %"class.std::__cxx11::basic_string"* dereferenceable(24) %7)
  %9 = bitcast %struct.AdminAccount* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV12AdminAccount, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %9, align 4
  ret %struct.AdminAccount* %5
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr hidden void @_ZN7Account8showNameEv(%struct.Account*) #8 comdat align 2 !type !7 {
  %2 = alloca %struct.Account*, align 4
  store %struct.Account* %0, %struct.Account** %2, align 4
  %3 = load %struct.Account*, %struct.Account** %2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr hidden void @_ZN12AdminAccount10adminStuffEv(%struct.AdminAccount*) #8 comdat align 2 !type !7 {
  %2 = alloca %struct.AdminAccount*, align 4
  store %struct.AdminAccount* %0, %struct.AdminAccount** %2, align 4
  %3 = load %struct.AdminAccount*, %struct.AdminAccount** %2, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr hidden void @_ZN11UserAccount10adminStuffEv(%struct.UserAccount*) #8 comdat align 2 !type !7 {
  %2 = alloca %struct.UserAccount*, align 4
  store %struct.UserAccount* %0, %struct.UserAccount** %2, align 4
  %3 = load %struct.UserAccount*, %struct.UserAccount** %2, align 4
  ret void
}

; Function Attrs: noinline optnone
define linkonce_odr hidden %struct.Account* @_ZN7AccountC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.Account* returned, %"class.std::__cxx11::basic_string"* dereferenceable(24)) unnamed_addr #6 comdat align 2 {
  %3 = alloca %struct.Account*, align 4
  %4 = alloca %"class.std::__cxx11::basic_string"*, align 4
  store %struct.Account* %0, %struct.Account** %3, align 4
  store %"class.std::__cxx11::basic_string"* %1, %"class.std::__cxx11::basic_string"** %4, align 4
  %5 = load %struct.Account*, %struct.Account** %3, align 4
  %6 = bitcast %struct.Account* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV7Account, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %6, align 4
  %7 = getelementptr inbounds %struct.Account, %struct.Account* %5, i32 0, i32 1
  %8 = load %"class.std::__cxx11::basic_string"*, %"class.std::__cxx11::basic_string"** %4, align 4
  %9 = call %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* %7, %"class.std::__cxx11::basic_string"* dereferenceable(24) %8)
  ret %struct.Account* %5
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr hidden %struct.UserAccount* @_ZN11UserAccountD2Ev(%struct.UserAccount* returned) unnamed_addr #8 comdat align 2 {
  %2 = alloca %struct.UserAccount*, align 4
  store %struct.UserAccount* %0, %struct.UserAccount** %2, align 4
  %3 = load %struct.UserAccount*, %struct.UserAccount** %2, align 4
  %4 = bitcast %struct.UserAccount* %3 to %struct.Account*
  %5 = call %struct.Account* @_ZN7AccountD2Ev(%struct.Account* %4) #3
  ret %struct.UserAccount* %3
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr hidden void @_ZN11UserAccountD0Ev(%struct.UserAccount*) unnamed_addr #8 comdat align 2 {
  %2 = alloca %struct.UserAccount*, align 4
  store %struct.UserAccount* %0, %struct.UserAccount** %2, align 4
  %3 = load %struct.UserAccount*, %struct.UserAccount** %2, align 4
  %4 = call %struct.UserAccount* @_ZN11UserAccountD2Ev(%struct.UserAccount* %3) #3
  %5 = bitcast %struct.UserAccount* %3 to i8*
  call void @_ZdlPv(i8* %5) #10
  ret void
}

declare dso_local %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%"class.std::__cxx11::basic_string"* returned, %"class.std::__cxx11::basic_string"* dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nounwind optnone
define linkonce_odr hidden %struct.Account* @_ZN7AccountD2Ev(%struct.Account* returned) unnamed_addr #8 comdat align 2 {
  %2 = alloca %struct.Account*, align 4
  store %struct.Account* %0, %struct.Account** %2, align 4
  %3 = load %struct.Account*, %struct.Account** %2, align 4
  %4 = bitcast %struct.Account* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [4 x i8*] }, { [4 x i8*] }* @_ZTV7Account, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %4, align 4
  %5 = getelementptr inbounds %struct.Account, %struct.Account* %3, i32 0, i32 1
  %6 = call %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* %5) #3
  ret %struct.Account* %3
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr hidden void @_ZN7AccountD0Ev(%struct.Account*) unnamed_addr #8 comdat align 2 {
  %2 = alloca %struct.Account*, align 4
  store %struct.Account* %0, %struct.Account** %2, align 4
  %3 = load %struct.Account*, %struct.Account** %2, align 4
  %4 = call %struct.Account* @_ZN7AccountD2Ev(%struct.Account* %3) #3
  %5 = bitcast %struct.Account* %3 to i8*
  call void @_ZdlPv(i8* %5) #10
  ret void
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr hidden %struct.AdminAccount* @_ZN12AdminAccountD2Ev(%struct.AdminAccount* returned) unnamed_addr #8 comdat align 2 {
  %2 = alloca %struct.AdminAccount*, align 4
  store %struct.AdminAccount* %0, %struct.AdminAccount** %2, align 4
  %3 = load %struct.AdminAccount*, %struct.AdminAccount** %2, align 4
  %4 = bitcast %struct.AdminAccount* %3 to %struct.Account*
  %5 = call %struct.Account* @_ZN7AccountD2Ev(%struct.Account* %4) #3
  ret %struct.AdminAccount* %3
}

; Function Attrs: noinline nounwind optnone
define linkonce_odr hidden void @_ZN12AdminAccountD0Ev(%struct.AdminAccount*) unnamed_addr #8 comdat align 2 {
  %2 = alloca %struct.AdminAccount*, align 4
  store %struct.AdminAccount* %0, %struct.AdminAccount** %2, align 4
  %3 = load %struct.AdminAccount*, %struct.AdminAccount** %2, align 4
  %4 = call %struct.AdminAccount* @_ZN12AdminAccountD2Ev(%struct.AdminAccount* %3) #3
  %5 = bitcast %struct.AdminAccount* %3 to i8*
  call void @_ZdlPv(i8* %5) #10
  ret void
}

; Function Attrs: noinline
define internal void @_GLOBAL__sub_I_vcall.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+strict-align,+vfp2,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+strict-align,+vfp2,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+strict-align,+vfp2,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+strict-align,+vfp2,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+strict-align,+vfp2,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+strict-align,+vfp2,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+strict-align,+vfp2,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+strict-align,+vfp2,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { builtin }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}

!0 = !{i64 8, !"_ZTS11UserAccount"}
!1 = !{i64 8, !"all-vtables"}
!2 = !{i64 8, !"_ZTS7Account"}
!3 = !{i64 8, !"_ZTS12AdminAccount"}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{!"clang version 7.0.1-8+rpi3+deb10u2 (tags/RELEASE_701/final)"}
!7 = !{i64 0, !"_ZTSM7AccountFvvE"}
