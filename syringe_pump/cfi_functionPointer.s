; ModuleID = 'functionPointer.c'
source_filename = "functionPointer.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv6k-unknown-linux-gnueabihf"

@.src = private unnamed_addr constant [18 x i8] c"functionPointer.c\00", align 1
@anon.4d00e2b641ea726d35d485139bd45b52.0 = private unnamed_addr constant { i16, i16, [13 x i8] } { i16 -1, i16 0, [13 x i8] c"'void (int)'\00" }
@anon.4d00e2b641ea726d35d485139bd45b52.1 = private unnamed_addr global { i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* } { i8 4, { [18 x i8]*, i32, i32 } { [18 x i8]* @.src, i32 32, i32 3 }, { i16, i16, [13 x i8] }* @anon.4d00e2b641ea726d35d485139bd45b52.0 }
@anon.4d00e2b641ea726d35d485139bd45b52.2 = private unnamed_addr global { i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* } { i8 4, { [18 x i8]*, i32, i32 } { [18 x i8]* @.src, i32 33, i32 3 }, { i16, i16, [13 x i8] }* @anon.4d00e2b641ea726d35d485139bd45b52.0 }
@anon.4d00e2b641ea726d35d485139bd45b52.3 = private unnamed_addr global { i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* } { i8 4, { [18 x i8]*, i32, i32 } { [18 x i8]* @.src, i32 34, i32 3 }, { i16, i16, [13 x i8] }* @anon.4d00e2b641ea726d35d485139bd45b52.0 }
@anon.4d00e2b641ea726d35d485139bd45b52.4 = private unnamed_addr global { i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* } { i8 4, { [18 x i8]*, i32, i32 } { [18 x i8]* @.src, i32 35, i32 3 }, { i16, i16, [13 x i8] }* @anon.4d00e2b641ea726d35d485139bd45b52.0 }
@anon.4d00e2b641ea726d35d485139bd45b52.5 = private unnamed_addr global { i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* } { i8 4, { [18 x i8]*, i32, i32 } { [18 x i8]* @.src, i32 36, i32 3 }, { i16, i16, [13 x i8] }* @anon.4d00e2b641ea726d35d485139bd45b52.0 }

; Function Attrs: noinline nounwind optnone
define hidden void @fun() #0 !type !3 !type !4 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @main(i32, i8**) #0 !type !5 !type !6 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca void (i32)*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  store void (i32)* bitcast (void ()* @fun to void (i32)*), void (i32)** %6, align 4
  store i32 0, i32* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %49, %2
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 1000000
  br i1 %12, label %13, label %52

; <label>:13:                                     ; preds = %10
  %14 = load void (i32)*, void (i32)** %6, align 4
  %15 = bitcast void (i32)* %14 to i8*, !nosanitize !7
  %16 = call i1 @llvm.type.test(i8* %15, metadata !"_ZTSFviE"), !nosanitize !7
  br i1 %16, label %19, label %17, !prof !8, !nosanitize !7

; <label>:17:                                     ; preds = %13
  %18 = ptrtoint i8* %15 to i32, !nosanitize !7
  call void @__ubsan_handle_cfi_check_fail_abort(i8* getelementptr inbounds ({ i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* }, { i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* }* @anon.4d00e2b641ea726d35d485139bd45b52.1, i32 0, i32 0), i32 %18, i32 undef) #3, !nosanitize !7
  unreachable, !nosanitize !7

; <label>:19:                                     ; preds = %13
  %20 = load i32, i32* %9, align 4
  call void %14(i32 %20)
  %21 = load void (i32)*, void (i32)** %6, align 4
  %22 = bitcast void (i32)* %21 to i8*, !nosanitize !7
  %23 = call i1 @llvm.type.test(i8* %22, metadata !"_ZTSFviE"), !nosanitize !7
  br i1 %23, label %26, label %24, !prof !8, !nosanitize !7

; <label>:24:                                     ; preds = %19
  %25 = ptrtoint i8* %22 to i32, !nosanitize !7
  call void @__ubsan_handle_cfi_check_fail_abort(i8* getelementptr inbounds ({ i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* }, { i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* }* @anon.4d00e2b641ea726d35d485139bd45b52.2, i32 0, i32 0), i32 %25, i32 undef) #3, !nosanitize !7
  unreachable, !nosanitize !7

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %9, align 4
  call void %21(i32 %27)
  %28 = load void (i32)*, void (i32)** %6, align 4
  %29 = bitcast void (i32)* %28 to i8*, !nosanitize !7
  %30 = call i1 @llvm.type.test(i8* %29, metadata !"_ZTSFviE"), !nosanitize !7
  br i1 %30, label %33, label %31, !prof !8, !nosanitize !7

; <label>:31:                                     ; preds = %26
  %32 = ptrtoint i8* %29 to i32, !nosanitize !7
  call void @__ubsan_handle_cfi_check_fail_abort(i8* getelementptr inbounds ({ i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* }, { i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* }* @anon.4d00e2b641ea726d35d485139bd45b52.3, i32 0, i32 0), i32 %32, i32 undef) #3, !nosanitize !7
  unreachable, !nosanitize !7

; <label>:33:                                     ; preds = %26
  %34 = load i32, i32* %9, align 4
  call void %28(i32 %34)
  %35 = load void (i32)*, void (i32)** %6, align 4
  %36 = bitcast void (i32)* %35 to i8*, !nosanitize !7
  %37 = call i1 @llvm.type.test(i8* %36, metadata !"_ZTSFviE"), !nosanitize !7
  br i1 %37, label %40, label %38, !prof !8, !nosanitize !7

; <label>:38:                                     ; preds = %33
  %39 = ptrtoint i8* %36 to i32, !nosanitize !7
  call void @__ubsan_handle_cfi_check_fail_abort(i8* getelementptr inbounds ({ i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* }, { i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* }* @anon.4d00e2b641ea726d35d485139bd45b52.4, i32 0, i32 0), i32 %39, i32 undef) #3, !nosanitize !7
  unreachable, !nosanitize !7

; <label>:40:                                     ; preds = %33
  %41 = load i32, i32* %9, align 4
  call void %35(i32 %41)
  %42 = load void (i32)*, void (i32)** %6, align 4
  %43 = bitcast void (i32)* %42 to i8*, !nosanitize !7
  %44 = call i1 @llvm.type.test(i8* %43, metadata !"_ZTSFviE"), !nosanitize !7
  br i1 %44, label %47, label %45, !prof !8, !nosanitize !7

; <label>:45:                                     ; preds = %40
  %46 = ptrtoint i8* %43 to i32, !nosanitize !7
  call void @__ubsan_handle_cfi_check_fail_abort(i8* getelementptr inbounds ({ i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* }, { i8, { [18 x i8]*, i32, i32 }, { i16, i16, [13 x i8] }* }* @anon.4d00e2b641ea726d35d485139bd45b52.5, i32 0, i32 0), i32 %46, i32 undef) #3, !nosanitize !7
  unreachable, !nosanitize !7

; <label>:47:                                     ; preds = %40
  %48 = load i32, i32* %9, align 4
  call void %42(i32 %48)
  br label %49

; <label>:49:                                     ; preds = %47
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %10

; <label>:52:                                     ; preds = %10
  ret i32 0
}

; Function Attrs: nounwind readnone
declare i1 @llvm.type.test(i8*, metadata) #1

; Function Attrs: noreturn nounwind uwtable
declare dso_local void @__ubsan_handle_cfi_check_fail_abort(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+strict-align,+vfp2,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 7.0.1-8+rpi3+deb10u2 (tags/RELEASE_701/final)"}
!3 = !{i64 0, !"_ZTSFvE"}
!4 = !{i64 0, !"_ZTSFvE.generalized"}
!5 = !{i64 0, !"_ZTSFiiPPcE"}
!6 = !{i64 0, !"_ZTSFiiPvE.generalized"}
!7 = !{}
!8 = !{!"branch_weights", i32 1048575, i32 1}
