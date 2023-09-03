; ModuleID = 'fibonacci.c'
source_filename = "fibonacci.c"


%struct._iobuf = type { ptr, i32, ptr, i32, i32, i32, i32, ptr }

$getc = comdat any

$putc = comdat any

$getchar = comdat any

$putchar = comdat any

$_get_output_format = comdat any

$_set_output_format = comdat any

$_get_printf_count_output = comdat any

$_set_printf_count_output = comdat any

$"??_C@_0BM@LELEENFL@Enter?5the?5number?5of?5terms?3?5?$AA@" = comdat any

$"??_C@_02DPKJAMEF@?$CFd?$AA@" = comdat any

$"??_C@_0BL@PEBMEABJ@Fibonacci?5Series?3?5?$CFd?0?5?$CFd?0?5?$AA@" = comdat any

$"??_C@_04CAGLFDOE@?$CFd?0?5?$AA@" = comdat any

@_iob = external dllimport global [0 x %struct._iobuf], align 8
@"??_C@_0BM@LELEENFL@Enter?5the?5number?5of?5terms?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [28 x i8] c"Enter the number of terms: \00", comdat, align 1
@"??_C@_02DPKJAMEF@?$CFd?$AA@" = linkonce_odr dso_local unnamed_addr constant [3 x i8] c"%d\00", comdat, align 1
@"??_C@_0BL@PEBMEABJ@Fibonacci?5Series?3?5?$CFd?0?5?$CFd?0?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [27 x i8] c"Fibonacci Series: %d, %d, \00", comdat, align 1
@"??_C@_04CAGLFDOE@?$CFd?0?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [5 x i8] c"%d, \00", comdat, align 1

; Function Attrs: noinline nounwind optnone uwtable
define weak_odr dso_local i32 @getc(ptr noundef %0) #0 comdat {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct._iobuf, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %4, align 8
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct._iobuf, ptr %9, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %12, ptr %10, align 8
  %13 = load i8, ptr %11, align 1
  %14 = zext i8 %13 to i32
  br label %18

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8
  %17 = call i32 @_filbuf(ptr noundef %16)
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi i32 [ %14, %8 ], [ %17, %15 ]
  ret i32 %19
}

declare dllimport i32 @_filbuf(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define weak_odr dso_local i32 @putc(i32 noundef %0, ptr noundef %1) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %1, ptr %3, align 8
  store i32 %0, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct._iobuf, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %6, align 8
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4
  %12 = trunc i32 %11 to i8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct._iobuf, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr %15, i32 1
  store ptr %16, ptr %14, align 8
  store i8 %12, ptr %15, align 1
  %17 = zext i8 %12 to i32
  br label %22

18:                                               ; preds = %2
  %19 = load ptr, ptr %3, align 8
  %20 = load i32, ptr %4, align 4
  %21 = call i32 @_flsbuf(i32 noundef %20, ptr noundef %19)
  br label %22

22:                                               ; preds = %18, %10
  %23 = phi i32 [ %17, %10 ], [ %21, %18 ]
  ret i32 %23
}

declare dllimport i32 @_flsbuf(i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define weak_odr dso_local i32 @getchar() #0 comdat {
  %1 = load i32, ptr getelementptr inbounds (%struct._iobuf, ptr @_iob, i32 0, i32 1), align 8
  %2 = add nsw i32 %1, -1
  store i32 %2, ptr getelementptr inbounds (%struct._iobuf, ptr @_iob, i32 0, i32 1), align 8
  %3 = icmp sge i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load ptr, ptr @_iob, align 8
  %6 = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %6, ptr @_iob, align 8
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i32
  br label %11

9:                                                ; preds = %0
  %10 = call i32 @_filbuf(ptr noundef @_iob)
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %8, %4 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define weak_odr dso_local i32 @putchar(i32 noundef %0) #0 comdat {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr getelementptr inbounds ([0 x %struct._iobuf], ptr @_iob, i64 0, i64 1, i32 1), align 8
  %4 = add nsw i32 %3, -1
  store i32 %4, ptr getelementptr inbounds ([0 x %struct._iobuf], ptr @_iob, i64 0, i64 1, i32 1), align 8
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 4
  %8 = trunc i32 %7 to i8
  %9 = load ptr, ptr getelementptr inbounds ([0 x %struct._iobuf], ptr @_iob, i64 0, i64 1), align 8
  %10 = getelementptr inbounds i8, ptr %9, i32 1
  store ptr %10, ptr getelementptr inbounds ([0 x %struct._iobuf], ptr @_iob, i64 0, i64 1), align 8
  store i8 %8, ptr %9, align 1
  %11 = zext i8 %8 to i32
  br label %15

12:                                               ; preds = %1
  %13 = load i32, ptr %2, align 4
  %14 = call i32 @_flsbuf(i32 noundef %13, ptr noundef getelementptr inbounds ([0 x %struct._iobuf], ptr @_iob, i64 0, i64 1))
  br label %15

15:                                               ; preds = %12, %6
  %16 = phi i32 [ %11, %6 ], [ %14, %12 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define weak_odr dso_local i32 @_get_output_format() #0 comdat {
  %1 = call i32 @__mingw_get_output_format()
  ret i32 %1
}

declare dso_local i32 @__mingw_get_output_format() #1

; Function Attrs: noinline nounwind optnone uwtable
define weak_odr dso_local i32 @_set_output_format(i32 noundef %0) #0 comdat {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call i32 @__mingw_set_output_format(i32 noundef %3)
  ret i32 %4
}

declare dso_local i32 @__mingw_set_output_format(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define weak_odr dso_local i32 @_get_printf_count_output() #0 comdat {
  %1 = call i32 @__mingw_get_printf_count_output()
  ret i32 %1
}

declare dso_local i32 @__mingw_get_printf_count_output() #1

; Function Attrs: noinline nounwind optnone uwtable
define weak_odr dso_local i32 @_set_printf_count_output(i32 noundef %0) #0 comdat {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  %4 = call i32 @__mingw_set_printf_count_output(i32 noundef %3)
  ret i32 %4
}

declare dso_local i32 @__mingw_set_printf_count_output(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store i32 0, ptr %4, align 4
  store i32 1, ptr %5, align 4
  %7 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BM@LELEENFL@Enter?5the?5number?5of?5terms?3?5?$AA@")
  %8 = call i32 (ptr, ...) @scanf(ptr noundef @"??_C@_02DPKJAMEF@?$CFd?$AA@", ptr noundef %3)
  %9 = load i32, ptr %5, align 4
  %10 = load i32, ptr %4, align 4
  %11 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BL@PEBMEABJ@Fibonacci?5Series?3?5?$CFd?0?5?$CFd?0?5?$AA@", i32 noundef %10, i32 noundef %9)
  store i32 3, ptr %2, align 4
  br label %12

12:                                               ; preds = %24, %0
  %13 = load i32, ptr %2, align 4
  %14 = load i32, ptr %3, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32, ptr %4, align 4
  %18 = load i32, ptr %5, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, ptr %6, align 4
  %20 = load i32, ptr %6, align 4
  %21 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_04CAGLFDOE@?$CFd?0?5?$AA@", i32 noundef %20)
  %22 = load i32, ptr %5, align 4
  store i32 %22, ptr %4, align 4
  %23 = load i32, ptr %6, align 4
  store i32 %23, ptr %5, align 4
  br label %24

24:                                               ; preds = %16
  %25 = load i32, ptr %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %2, align 4
  br label %12, !llvm.loop !4

27:                                               ; preds = %12
  ret i32 0
}

declare dllimport i32 @printf(ptr noundef, ...) #1

declare dllimport i32 @scanf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 16.0.6"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
