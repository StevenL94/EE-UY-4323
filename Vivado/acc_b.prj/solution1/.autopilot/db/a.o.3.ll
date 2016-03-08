; ModuleID = 'C:/Users/stevenlee/Documents/acc_b.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@cnt = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@acc_b_str = internal unnamed_addr constant [6 x i8] c"acc_b\00" ; [#uses=1 type=[6 x i8]*]

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i32 @acc_b(i32 %b_in, i1 zeroext %b_en) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b_in) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %b_en) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @acc_b_str) nounwind
  %b_en_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %b_en) nounwind ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %b_en_read}, i64 0, metadata !16), !dbg !25 ; [debug line = 3:27] [debug variable = b_en]
  %b_in_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %b_in) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %b_in_read}, i64 0, metadata !26), !dbg !27 ; [debug line = 3:15] [debug variable = b_in]
  call void @llvm.dbg.value(metadata !{i32 %b_in}, i64 0, metadata !26), !dbg !27 ; [debug line = 3:15] [debug variable = b_in]
  call void @llvm.dbg.value(metadata !{i1 %b_en}, i64 0, metadata !16), !dbg !25 ; [debug line = 3:27] [debug variable = b_en]
  %cnt_load = load i32* @cnt, align 4, !dbg !28   ; [#uses=2 type=i32] [debug line = 6:3]
  br i1 %b_en_read, label %._crit_edge, label %1, !dbg !31 ; [debug line = 5:2]

; <label>:1                                       ; preds = %0
  %cnt_assign = add nsw i32 %cnt_load, %b_in_read, !dbg !28 ; [#uses=2 type=i32] [debug line = 6:3]
  store i32 %cnt_assign, i32* @cnt, align 4, !dbg !28 ; [debug line = 6:3]
  br label %._crit_edge, !dbg !32                 ; [debug line = 7:2]

._crit_edge:                                      ; preds = %1, %0
  %cnt_loc = phi i32 [ %cnt_load, %0 ], [ %cnt_assign, %1 ] ; [#uses=1 type=i32]
  ret i32 %cnt_loc, !dbg !33                      ; [debug line = 8:2]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"b_in", metadata !4, metadata !"int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 0}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 0, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"b_en", metadata !4, metadata !"_Bool", i32 0, i32 0}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 31, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"return", metadata !14, metadata !"int", i32 0, i32 31}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 1, i32 0}
!16 = metadata !{i32 786689, metadata !17, metadata !"b_en", metadata !18, i32 33554435, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 786478, i32 0, metadata !18, metadata !"acc_b", metadata !"acc_b", metadata !"", metadata !18, i32 3, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i1)* @acc_b, null, null, metadata !23, i32 3} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786473, metadata !"acc_b.prj/acc_b.c", metadata !"c:/Users/stevenlee/Documents", null} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{metadata !21, metadata !21, metadata !22}
!21 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786468, null, metadata !"_Bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!25 = metadata !{i32 3, i32 27, metadata !17, null}
!26 = metadata !{i32 786689, metadata !17, metadata !"b_in", metadata !18, i32 16777219, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 3, i32 15, metadata !17, null}
!28 = metadata !{i32 6, i32 3, metadata !29, null}
!29 = metadata !{i32 786443, metadata !30, i32 5, i32 12, metadata !18, i32 1} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 786443, metadata !17, i32 3, i32 34, metadata !18, i32 0} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 5, i32 2, metadata !30, null}
!32 = metadata !{i32 7, i32 2, metadata !29, null}
!33 = metadata !{i32 8, i32 2, metadata !30, null}
