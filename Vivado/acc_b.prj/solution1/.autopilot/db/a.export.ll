; ModuleID = 'C:/Users/stevenlee/Documents/acc_b.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@cnt = internal unnamed_addr global float 0.000000e+00, align 4
@acc_b_str = internal unnamed_addr constant [6 x i8] c"acc_b\00"

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define float @acc_b(float %b_in, i1 zeroext %b_en) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float %b_in) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %b_en) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(float 0.000000e+00) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @acc_b_str) nounwind
  %b_en_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %b_en) nounwind
  %b_in_read = call float @_ssdm_op_Read.ap_auto.float(float %b_in) nounwind
  %cnt_load = load float* @cnt, align 4
  br i1 %b_en_read, label %._crit_edge, label %1

; <label>:1                                       ; preds = %0
  %cnt_assign = fadd float %cnt_load, %b_in_read
  store float %cnt_assign, float* @cnt, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %1, %0
  %cnt_loc = phi float [ %cnt_load, %0 ], [ %cnt_assign, %1 ]
  ret float %cnt_loc
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"b_in", metadata !4, metadata !"float", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 0}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 0, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"b_en", metadata !4, metadata !"_Bool", i32 0, i32 0}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"return", metadata !14, metadata !"float", i32 0, i32 31}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 1, i32 0}
