; ModuleID = 'cminus'
source_filename = "/home/tangtang/USTC-Compiler-Engineering-2025/tests/2-ir-gen/autogen/testcases/lv3/complex1.cminus"

declare i32 @input()

declare void @output(i32)

declare void @outputFloat(float)

declare void @neg_idx_except()

define i32 @mod(i32 %a, i32 %b) {
label_entry:
  %op0 = alloca i32
  store i32 %a, i32* %op0
  %op1 = alloca i32
  store i32 %b, i32* %op1
  %op2 = load i32, i32* %op0
  %op3 = load i32, i32* %op0
  %op4 = load i32, i32* %op1
  %op5 = sdiv i32 %op3, %op4
  %op6 = load i32, i32* %op1
  %op7 = mul i32 %op5, %op6
  %op8 = sub i32 %op2, %op7
  ret i32 %op8
}
define void @printfour(i32 %input) {
label_entry:
  %op0 = alloca i32
  store i32 %input, i32* %op0
  %op1 = alloca i32
  %op2 = alloca i32
  %op3 = alloca i32
  %op4 = alloca i32
  %op5 = load i32, i32* %op0
  %op6 = call i32 @mod(i32 %op5, i32 10000)
  store i32 %op6, i32* %op0
  %op7 = load i32, i32* %op0
  %op8 = call i32 @mod(i32 %op7, i32 10)
  store i32 %op8, i32* %op4
  %op9 = load i32, i32* %op0
  %op10 = sdiv i32 %op9, 10
  store i32 %op10, i32* %op0
  %op11 = load i32, i32* %op0
  %op12 = call i32 @mod(i32 %op11, i32 10)
  store i32 %op12, i32* %op3
  %op13 = load i32, i32* %op0
  %op14 = sdiv i32 %op13, 10
  store i32 %op14, i32* %op0
  %op15 = load i32, i32* %op0
  %op16 = call i32 @mod(i32 %op15, i32 10)
  store i32 %op16, i32* %op2
  %op17 = load i32, i32* %op0
  %op18 = sdiv i32 %op17, 10
  store i32 %op18, i32* %op0
  %op19 = load i32, i32* %op0
  store i32 %op19, i32* %op1
  %op20 = load i32, i32* %op1
  call void @output(i32 %op20)
  %op21 = load i32, i32* %op2
  call void @output(i32 %op21)
  %op22 = load i32, i32* %op3
  call void @output(i32 %op22)
  %op23 = load i32, i32* %op4
  call void @output(i32 %op23)
  ret void
}
define void @main() {
label_entry:
  %op0 = alloca [2801 x i32]
  %op1 = alloca i32
  %op2 = alloca i32
  %op3 = alloca i32
  %op4 = alloca i32
  %op5 = alloca i32
  store i32 0, i32* %op5
  store i32 1234, i32* %op4
  %op6 = alloca i32
  store i32 0, i32* %op6
  br label %label7
label7:                                                ; preds = %label_entry, %label16
  %op8 = load i32, i32* %op6
  %op9 = icmp slt i32 %op8, 2800
  %op10 = zext i1 %op9 to i32
  %op11 = icmp ne i32 %op10, 0
  br i1 %op11, label %label12, label %label15
label12:                                                ; preds = %label7
  %op13 = load i32, i32* %op6
  %op14 = icmp sge i32 %op13, 0
  br i1 %op14, label %label16, label %label20
label15:                                                ; preds = %label7
  store i32 2800, i32* %op2
  br label %label21
label16:                                                ; preds = %label12, %label20
  %op17 = getelementptr [2801 x i32], [2801 x i32]* %op0, i32 0, i32 %op13
  store i32 2000, i32* %op17
  %op18 = load i32, i32* %op6
  %op19 = add i32 %op18, 1
  store i32 %op19, i32* %op6
  br label %label7
label20:                                                ; preds = %label12
  call void @neg_idx_except()
  br label %label16
label21:                                                ; preds = %label15, %label37
  %op22 = load i32, i32* %op2
  %op23 = icmp ne i32 %op22, 0
  br i1 %op23, label %label24, label %label27
label24:                                                ; preds = %label21
  %op25 = alloca i32
  store i32 0, i32* %op25
  %op26 = load i32, i32* %op2
  store i32 %op26, i32* %op1
  br label %label28
label27:                                                ; preds = %label21
  ret void
label28:                                                ; preds = %label24, %label76
  %op29 = load i32, i32* %op1
  %op30 = icmp ne i32 %op29, 0
  %op31 = zext i1 %op30 to i32
  %op32 = icmp ne i32 %op31, 0
  br i1 %op32, label %label33, label %label37
label33:                                                ; preds = %label28
  %op34 = load i32, i32* %op25
  %op35 = load i32, i32* %op1
  %op36 = icmp sge i32 %op35, 0
  br i1 %op36, label %label46, label %label59
label37:                                                ; preds = %label28
  %op38 = load i32, i32* %op5
  %op39 = load i32, i32* %op25
  %op40 = sdiv i32 %op39, 10000
  %op41 = add i32 %op38, %op40
  call void @printfour(i32 %op41)
  %op42 = load i32, i32* %op25
  %op43 = call i32 @mod(i32 %op42, i32 10000)
  store i32 %op43, i32* %op5
  %op44 = load i32, i32* %op2
  %op45 = sub i32 %op44, 14
  store i32 %op45, i32* %op2
  br label %label21
label46:                                                ; preds = %label33, %label59
  %op47 = getelementptr [2801 x i32], [2801 x i32]* %op0, i32 0, i32 %op35
  %op48 = load i32, i32* %op47
  %op49 = mul i32 %op48, 10000
  %op50 = add i32 %op34, %op49
  store i32 %op50, i32* %op25
  %op51 = load i32, i32* %op1
  %op52 = mul i32 2, %op51
  %op53 = sub i32 %op52, 1
  store i32 %op53, i32* %op3
  %op54 = load i32, i32* %op25
  %op55 = load i32, i32* %op3
  %op56 = call i32 @mod(i32 %op54, i32 %op55)
  %op57 = load i32, i32* %op1
  %op58 = icmp sge i32 %op57, 0
  br i1 %op58, label %label60, label %label71
label59:                                                ; preds = %label33
  call void @neg_idx_except()
  br label %label46
label60:                                                ; preds = %label46, %label71
  %op61 = getelementptr [2801 x i32], [2801 x i32]* %op0, i32 0, i32 %op57
  store i32 %op56, i32* %op61
  %op62 = load i32, i32* %op25
  %op63 = load i32, i32* %op3
  %op64 = sdiv i32 %op62, %op63
  store i32 %op64, i32* %op25
  %op65 = load i32, i32* %op1
  %op66 = sub i32 %op65, 1
  store i32 %op66, i32* %op1
  %op67 = load i32, i32* %op1
  %op68 = icmp ne i32 %op67, 0
  %op69 = zext i1 %op68 to i32
  %op70 = icmp ne i32 %op69, 0
  br i1 %op70, label %label72, label %label76
label71:                                                ; preds = %label46
  call void @neg_idx_except()
  br label %label60
label72:                                                ; preds = %label60
  %op73 = load i32, i32* %op25
  %op74 = load i32, i32* %op1
  %op75 = mul i32 %op73, %op74
  store i32 %op75, i32* %op25
  br label %label76
label76:                                                ; preds = %label60, %label72
  br label %label28
}
