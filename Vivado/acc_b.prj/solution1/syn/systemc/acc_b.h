// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _acc_b_HH_
#define _acc_b_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "acc_b_fadd_32ns_32ns_32_5_full_dsp.h"

namespace ap_rtl {

struct acc_b : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<32> > b_in;
    sc_in< sc_lv<1> > b_en;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    acc_b(sc_module_name name);
    SC_HAS_PROCESS(acc_b);

    ~acc_b();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    acc_b_fadd_32ns_32ns_32_5_full_dsp<1,5,32,32,32>* acc_b_fadd_32ns_32ns_32_5_full_dsp_U0;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_bdd_21;
    sc_signal< sc_lv<32> > cnt;
    sc_signal< sc_lv<1> > b_en_read_read_fu_18_p2;
    sc_signal< sc_lv<32> > cnt_loc_phi_fu_33_p4;
    sc_signal< sc_lv<32> > cnt_loc_reg_30;
    sc_signal< sc_lv<32> > grp_fu_39_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_bdd_53;
    sc_signal< sc_logic > grp_fu_39_ce;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_st1_fsm_0;
    static const sc_lv<5> ap_ST_st2_fsm_1;
    static const sc_lv<5> ap_ST_st3_fsm_2;
    static const sc_lv<5> ap_ST_st4_fsm_3;
    static const sc_lv<5> ap_ST_st5_fsm_4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_ap_sig_bdd_21();
    void thread_ap_sig_bdd_53();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_b_en_read_read_fu_18_p2();
    void thread_cnt_loc_phi_fu_33_p4();
    void thread_grp_fu_39_ce();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif