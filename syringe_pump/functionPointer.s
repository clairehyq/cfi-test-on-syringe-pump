; ModuleID = 'functionPointer.c'
source_filename = "functionPointer.c"
target datalayout = "e-m:e-p:32:32-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv6k-unknown-linux-gnueabihf"

; Function Attrs: noinline nounwind optnone
define hidden void @fun() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca void (i32)*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4`
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  store void (i32)* bitcast (void ()* @fun to void (i32)*), void (i32)** %6, align 4
  store i32 0, i32* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %24, %2
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 1000000
  br i1 %12, label %13, label %27

; <label>:13:                                     ; preds = %10
  %14 = load void (i32)*, void (i32)** %6, align 4
  %15 = load i32, i32* %9, align 4
  call void %14(i32 %15)
  %16 = load void (i32)*, void (i32)** %6, align 4
  %17 = load i32, i32* %9, align 4
  call void %16(i32 %17)
  %18 = load void (i32)*, void (i32)** %6, align 4
  %19 = load i32, i32* %9, align 4
  call void %18(i32 %19)
  %20 = load void (i32)*, void (i32)** %6, align 4
  %21 = load i32, i32* %9, align 4
  call void %20(i32 %21)
  %22 = load void (i32)*, void (i32)** %6, align 4
  %23 = load i32, i32* %9, align 4
  call void %22(i32 %23)
  br label %24

; <label>:24:                                     ; preds = %13
  %25 = load i32, i32* %9, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  br label %10

; <label>:27:                                     ; preds = %10
  ret i32 0
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+strict-align,+vfp2,-thumb-mode" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{!"clang version 7.0.1-8+rpi3+deb10u2 (tags/RELEASE_701/final)"}
