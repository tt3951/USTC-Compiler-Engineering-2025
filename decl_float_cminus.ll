; ModuleID = 'cminus'
source_filename = "/home/tangtang/USTC-Compiler-Engineering-2025/tests/2-ir-gen/autogen/testcases/lv0_1/decl_float_array.cminus"

declare i32 @input()

declare void @output(i32)

declare void @outputFloat(float)

declare void @neg_idx_except()

define void @main() {
label_entry:
  %op0 = alloca [10 x float]
  ret void
}
