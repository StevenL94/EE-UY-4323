; ModuleID = 'C:/Users/stevenlee/Documents/acc_b.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@cnt = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@acc_b.str = internal unnamed_addr constant [6 x i8] c"acc_b\00" ; [#uses=1 type=[6 x i8]*]

; [#uses=2]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i32 @acc_b(i32 %b_in, i1 zeroext %b_en) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b_in) nounwind, !map !12
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %b_en) nounwind, !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !22
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @acc_b.str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %b_in}, i64 0, metadata !28), !dbg !29 ; [debug line = 3:15] [debug variable = b_in]
  call void @llvm.dbg.value(metadata !{i1 %b_en}, i64 0, metadata !30), !dbg !31 ; [debug line = 3:27] [debug variable = b_en]
  %cnt.load = load i32* @cnt, align 4, !dbg !32   ; [#uses=2 type=i32] [debug line = 6:3]
  br i1 %b_en, label %._crit_edge, label %1, !dbg !35 ; [debug line = 5:2]

; <label>:1                                       ; preds = %0
  %cnt.assign = add nsw i32 %cnt.load, %b_in, !dbg !32 ; [#uses=2 type=i32] [debug line = 6:3]
  store i32 %cnt.assign, i32* @cnt, align 4, !dbg !32 ; [debug line = 6:3]
  br label %._crit_edge, !dbg !36                 ; [debug line = 7:2]

._crit_edge:                                      ; preds = %1, %0
  %cnt.loc = phi i32 [ %cnt.load, %0 ], [ %cnt.assign, %1 ] ; [#uses=1 type=i32]
  ret i32 %cnt.loc, !dbg !37                      ; [debug line = 8:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/stevenlee/Documents/acc_b.prj/solution1/.autopilot/db/acc_b.pragma.2.c", metadata !"c:/Users/stevenlee/Documents", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786484, i32 0, metadata !4, metadata !"cnt", metadata !"cnt", metadata !"", metadata !5, i32 4, metadata !8, i32 1, i32 1, i32* @cnt} ; [ DW_TAG_variable ]
!4 = metadata !{i32 786478, i32 0, metadata !5, metadata !"acc_b", metadata !"acc_b", metadata !"", metadata !5, i32 3, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i1)* @acc_b, null, null, metadata !10, i32 3} ; [ DW_TAG_subprogram ]
!5 = metadata !{i32 786473, metadata !"acc_b.prj/acc_b.c", metadata !"c:/Users/stevenlee/Documents", null} ; [ DW_TAG_file_type ]
!6 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!7 = metadata !{metadata !8, metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!9 = metadata !{i32 786468, null, metadata !"_Bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 31, metadata !14}
!14 = metadata !{metadata !15}
!15 = metadata !{metadata !"b_in", metadata !16, metadata !"int", i32 0, i32 31}
!16 = metadata !{metadata !17}
!17 = metadata !{i32 0, i32 0, i32 0}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 0, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"b_en", metadata !16, metadata !"_Bool", i32 0, i32 0}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 31, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"return", metadata !26, metadata !"int", i32 0, i32 31}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 1, i32 0}
!28 = metadata !{i32 786689, metadata !4, metadata !"b_in", metadata !5, i32 16777219, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 3, i32 15, metadata !4, null}
!30 = metadata !{i32 786689, metadata !4, metadata !"b_en", metadata !5, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 3, i32 27, metadata !4, null}
!32 = metadata !{i32 6, i32 3, metadata !33, null}
!33 = metadata !{i32 786443, metadata !34, i32 5, i32 12, metadata !5, i32 1} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 786443, metadata !4, i32 3, i32 34, metadata !5, i32 0} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 5, i32 2, metadata !34, null}
!36 = metadata !{i32 7, i32 2, metadata !33, null}
!37 = metadata !{i32 8, i32 2, metadata !34, null}
