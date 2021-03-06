cnf(sourcem_pyr, axiom, [m_pyr]).
cnf(decamp_asn_L_h_ppi3, axiom, [m_h, -c_amp_asn_L_h_ppi]).
cnf(decamp_asn_L_glu_L_h_ppi4, axiom, [m_h, -c_amp_asn_L_glu_L_h_ppi]).
cnf(activR11a, axiom, [r_R11a, -m_ru5p_D]).
cnf(prodR11a, axiom, [m_ara5p, -r_R11a]).
cnf(activR12a, axiom, [r_R12a, -m_mmcoa_R]).
cnf(prodR12a, axiom, [m_mmcoa_S, -r_R12a]).
cnf(activR14a, axiom, [r_R14a, -c_glyald_h_nadh]).
cnf(combiglyald_h_nadh, axiom, [c_glyald_h_nadh, -m_glyald, -m_h, -m_nadh]).
cnf(prodR16a, axiom, [c_h_lac_L_nadh, -r_R16a]).
cnf(dech_lac_L_nadh1, axiom, [m_h, -c_h_lac_L_nadh]).
cnf(dech_lac_L_nadh2, axiom, [m_lac_L, -c_h_lac_L_nadh]).
cnf(dech_lac_L_nadh3, axiom, [m_nadh, -c_h_lac_L_nadh]).
cnf(prodR17, axiom, [c_ac_h_nadh, -r_R17]).
cnf(decac_h_nadh2, axiom, [m_h, -c_ac_h_nadh]).
cnf(decac_h_nadh3, axiom, [m_nadh, -c_ac_h_nadh]).
cnf(activR18a, axiom, [r_R18a, -m_arab_L]).
cnf(prodR18a, axiom, [m_rbl_L, -r_R18a]).
cnf(activR19, axiom, [r_R19, -c_atp_rbl_L]).
cnf(combiatp_rbl_L, axiom, [c_atp_rbl_L, -m_atp, -m_rbl_L]).
cnf(prodR19, axiom, [c_adp_h_ru5p_L, -r_R19]).
cnf(decadp_h_ru5p_L2, axiom, [m_h, -c_adp_h_ru5p_L]).
cnf(decadp_h_ru5p_L3, axiom, [m_ru5p_L, -c_adp_h_ru5p_L]).
cnf(activR20a, axiom, [r_R20a, -m_ru5p_L]).
cnf(prodR20a, axiom, [m_xu5p_D, -r_R20a]).
cnf(prodR26a, axiom, [m_r5p, -r_R26a]).
cnf(activR28, axiom, [r_R28, -m_galctn_D]).
cnf(prodR28, axiom, [c_2dh3dgal_h2o, -r_R28]).
cnf(dec2dh3dgal_h2o1, axiom, [m_2dh3dgal, -c_2dh3dgal_h2o]).
cnf(activR30, axiom, [r_R30, -c_2dh3dgal_atp]).
cnf(combi2dh3dgal_atp, axiom, [c_2dh3dgal_atp, -m_2dh3dgal, -m_atp]).
cnf(prodR30, axiom, [c_2dh3dgal6p_adp_h, -r_R30]).
cnf(dec2dh3dgal6p_adp_h3, axiom, [m_h, -c_2dh3dgal6p_adp_h]).
cnf(activR32, axiom, [r_R32, -c_btcoa_fad_h2o_nad]).
cnf(prodR32, axiom, [c_aacoa_fadh2_h_nadh, -r_R32]).
cnf(decaacoa_fadh2_h_nadh3, axiom, [m_h, -c_aacoa_fadh2_h_nadh]).
cnf(decaacoa_fadh2_h_nadh4, axiom, [m_nadh, -c_aacoa_fadh2_h_nadh]).
cnf(prodR33, axiom, [c_h_nadh_pac, -r_R33]).
cnf(dech_nadh_pac1, axiom, [m_h, -c_h_nadh_pac]).
cnf(dech_nadh_pac2, axiom, [m_nadh, -c_h_nadh_pac]).
cnf(dech_nadh_pac3, axiom, [m_pac, -c_h_nadh_pac]).
cnf(decadp_fdp_h3, axiom, [m_h, -c_adp_fdp_h]).
cnf(decadp_fc1p_h3, axiom, [m_h, -c_adp_fc1p_h]).
cnf(activR38a, axiom, [r_R38a, -c_h_lald_L_nadh]).
cnf(combih_lald_L_nadh, axiom, [c_h_lald_L_nadh, -m_h, -m_lald_L, -m_nadh]).
cnf(activR40a, axiom, [r_R40a, -c_atp_gal]).
cnf(combiatp_gal, axiom, [c_atp_gal, -m_atp, -m_gal]).
cnf(prodR40a, axiom, [c_adp_gal1p_h, -r_R40a]).
cnf(decadp_gal1p_h2, axiom, [m_gal1p, -c_adp_gal1p_h]).
cnf(decadp_gal1p_h3, axiom, [m_h, -c_adp_gal1p_h]).
cnf(combig1p_h_utp, axiom, [c_g1p_h_utp, -m_g1p, -m_h, -m_utp]).
cnf(activR43, axiom, [r_R43, -m_galct_D]).
cnf(prodR43, axiom, [c_5dh4dglc_h2o, -r_R43]).
cnf(dec5dh4dglc_h2o1, axiom, [m_5dh4dglc, -c_5dh4dglc_h2o]).
cnf(prodR44a, axiom, [c_h_nadh_tag6p_D, -r_R44a]).
cnf(dech_nadh_tag6p_D1, axiom, [m_h, -c_h_nadh_tag6p_D]).
cnf(dech_nadh_tag6p_D2, axiom, [m_nadh, -c_h_nadh_tag6p_D]).
cnf(dech_nadh_tag6p_D3, axiom, [m_tag6p_D, -c_h_nadh_tag6p_D]).
cnf(decglx_q8h21, axiom, [m_glx, -c_glx_q8h2]).
cnf(decglx_mql81, axiom, [m_glx, -c_glx_mql8]).
cnf(dec2dmmql8_glx2, axiom, [m_glx, -c_2dmmql8_glx]).
cnf(prodR48, axiom, [c_dha_h_nadh, -r_R48]).
cnf(decdha_h_nadh2, axiom, [m_h, -c_dha_h_nadh]).
cnf(decdha_h_nadh3, axiom, [m_nadh, -c_dha_h_nadh]).
cnf(decadp_glyc3p_h3, axiom, [m_h, -c_adp_glyc3p_h]).
cnf(decdhap_h_nadph2, axiom, [m_h, -c_dhap_h_nadph]).
cnf(decdhap_h_nadph3, axiom, [m_nadph, -c_dhap_h_nadph]).
cnf(activR52, axiom, [r_R52, -m_5dh4dglc]).
cnf(prodR52, axiom, [c_2h3oppan_pyr, -r_R52]).
cnf(dec2h3oppan_pyr1, axiom, [m_2h3oppan, -c_2h3oppan_pyr]).
cnf(prodR53, axiom, [c_dhpppn_h_nadh, -r_R53]).
cnf(decdhpppn_h_nadh1, axiom, [m_dhpppn, -c_dhpppn_h_nadh]).
cnf(decdhpppn_h_nadh2, axiom, [m_h, -c_dhpppn_h_nadh]).
cnf(decdhpppn_h_nadh3, axiom, [m_nadh, -c_dhpppn_h_nadh]).
cnf(prodR54, axiom, [c_dhcinnm_h_nadh, -r_R54]).
cnf(decdhcinnm_h_nadh2, axiom, [m_h, -c_dhcinnm_h_nadh]).
cnf(decdhcinnm_h_nadh3, axiom, [m_nadh, -c_dhcinnm_h_nadh]).
cnf(combih_nadh_o2_pppn, axiom, [c_h_nadh_o2_pppn, -m_h, -m_nadh, -m_o2, -m_pppn]).
cnf(combicinnm_h_nadh_o2, axiom, [c_cinnm_h_nadh_o2, -m_cinnm, -m_h, -m_nadh, -m_o2]).
cnf(activR57a, axiom, [r_R57a, -m_hpyr]).
cnf(prodR57a, axiom, [m_2h3oppan, -r_R57a]).
cnf(activR58a, axiom, [r_R58a, -c_5dglcn_h_nadh]).
cnf(combi5dglcn_h_nadh, axiom, [c_5dglcn_h_nadh, -m_5dglcn, -m_h, -m_nadh]).
cnf(activR59, axiom, [r_R59, -c_5dglcn_h_nadph]).
cnf(combi5dglcn_h_nadph, axiom, [c_5dglcn_h_nadph, -m_5dglcn, -m_h, -m_nadph]).
cnf(dec6pgc_adp_h3, axiom, [m_h, -c_6pgc_adp_h]).
cnf(activR61a, axiom, [r_R61a, -c_5dglcn_h_nadph]).
cnf(dec2ddg6p_adp_h3, axiom, [m_h, -c_2ddg6p_adp_h]).
cnf(combi3hcinnm_h_nadh_o2, axiom, [c_3hcinnm_h_nadh_o2, -m_3hcinnm, -m_h, -m_nadh, -m_o2]).
cnf(combi3hpppn_h_nadh_o2, axiom, [c_3hpppn_h_nadh_o2, -m_3hpppn, -m_h, -m_nadh, -m_o2]).
cnf(dech_op4en_succ1, axiom, [m_h, -c_h_op4en_succ]).
cnf(decfum_h_op4en2, axiom, [m_h, -c_fum_h_op4en]).
cnf(activR86, axiom, [r_R86, -c_acald_coa_nad]).
cnf(prodR86, axiom, [c_accoa_h_nadh, -r_R86]).
cnf(decaccoa_h_nadh2, axiom, [m_h, -c_accoa_h_nadh]).
cnf(decaccoa_h_nadh3, axiom, [m_nadh, -c_accoa_h_nadh]).
cnf(decf6p_h_nadh2, axiom, [m_h, -c_f6p_h_nadh]).
cnf(decf6p_h_nadh3, axiom, [m_nadh, -c_f6p_h_nadh]).
cnf(activR90, axiom, [r_R90, -m_acnam]).
cnf(prodR90, axiom, [c_acmana_pyr, -r_R90]).
cnf(decacmana_pyr1, axiom, [m_acmana, -c_acmana_pyr]).
cnf(dech_tre6p_udp1, axiom, [m_h, -c_h_tre6p_udp]).
cnf(activR94, axiom, [r_R94, -c_atp_tag6p_D]).
cnf(combiatp_tag6p_D, axiom, [c_atp_tag6p_D, -m_atp, -m_tag6p_D]).
cnf(prodR94, axiom, [c_adp_h_tagdp_D, -r_R94]).
cnf(decadp_h_tagdp_D2, axiom, [m_h, -c_adp_h_tagdp_D]).
cnf(decadp_h_tagdp_D3, axiom, [m_tagdp_D, -c_adp_h_tagdp_D]).
cnf(dec2mcit_coa_h3, axiom, [m_h, -c_2mcit_coa_h]).
cnf(activR101, axiom, [r_R101, -c_atp_rib_D]).
cnf(combiatp_rib_D, axiom, [c_atp_rib_D, -m_atp, -m_rib_D]).
cnf(prodR101, axiom, [c_adp_h_r5p, -r_R101]).
cnf(decadp_h_r5p2, axiom, [m_h, -c_adp_h_r5p]).
cnf(decadp_h_r5p3, axiom, [m_r5p, -c_adp_h_r5p]).
cnf(decadp_h_rml1p2, axiom, [m_h, -c_adp_h_rml1p]).
cnf(activR106, axiom, [r_R106, -c_3dgulnp_h]).
cnf(combi3dgulnp_h, axiom, [c_3dgulnp_h, -m_3dgulnp, -m_h]).
cnf(prodR106, axiom, [c_co2_xu5p_L, -r_R106]).
cnf(decco2_xu5p_L2, axiom, [m_xu5p_L, -c_co2_xu5p_L]).
cnf(activR107, axiom, [r_R107, -m_xu5p_L]).
cnf(prodR107, axiom, [m_ru5p_L, -r_R107]).
cnf(decaacald_co2_h_so3_succ3, axiom, [m_h, -c_aacald_co2_h_so3_succ]).
cnf(decaacald_co2_h_so3_succ4, axiom, [m_so3, -c_aacald_co2_h_so3_succ]).
cnf(prodR117a, axiom, [c_h_nadh_tagur, -r_R117a]).
cnf(dech_nadh_tagur1, axiom, [m_h, -c_h_nadh_tagur]).
cnf(dech_nadh_tagur2, axiom, [m_nadh, -c_h_nadh_tagur]).
cnf(dech_nadh_tagur3, axiom, [m_tagur, -c_h_nadh_tagur]).
cnf(activR118a, axiom, [r_R118a, -m_glcur]).
cnf(prodR118a, axiom, [m_fruur, -r_R118a]).
cnf(activR119a, axiom, [r_R119a, -m_galur]).
cnf(prodR119a, axiom, [m_tagur, -r_R119a]).
cnf(prodR121a, axiom, [c_fruur_h_nadh, -r_R121a]).
cnf(decfruur_h_nadh1, axiom, [m_fruur, -c_fruur_h_nadh]).
cnf(decfruur_h_nadh2, axiom, [m_h, -c_fruur_h_nadh]).
cnf(decfruur_h_nadh3, axiom, [m_nadh, -c_fruur_h_nadh]).
cnf(activR123a, axiom, [r_R123a, -m_xyl_D]).
cnf(prodR123a, axiom, [m_xylu_D, -r_R123a]).
cnf(activR124, axiom, [r_R124, -c_atp_xylu_D]).
cnf(combiatp_xylu_D, axiom, [c_atp_xylu_D, -m_atp, -m_xylu_D]).
cnf(prodR124, axiom, [c_adp_h_xu5p_D, -r_R124]).
cnf(decadp_h_xu5p_D2, axiom, [m_h, -c_adp_h_xu5p_D]).
cnf(decadp_h_xu5p_D3, axiom, [m_xu5p_D, -c_adp_h_xu5p_D]).
cnf(activR125, axiom, [r_R125, -c_25dkglcn_h_nadph]).
cnf(combi25dkglcn_h_nadph, axiom, [c_25dkglcn_h_nadph, -m_25dkglcn, -m_h, -m_nadph]).
cnf(prodR125, axiom, [c_2dhguln_nadp, -r_R125]).
cnf(dec2dhguln_nadp1, axiom, [m_2dhguln, -c_2dhguln_nadp]).
cnf(combih_hpyr_nadh, axiom, [c_h_hpyr_nadh, -m_h, -m_hpyr, -m_nadh]).
cnf(activR127, axiom, [r_R127, -c_h_hpyr_nadph]).
cnf(combih_hpyr_nadph, axiom, [c_h_hpyr_nadph, -m_h, -m_hpyr, -m_nadph]).
cnf(activR128, axiom, [r_R128, -m_glcr]).
cnf(prodR128, axiom, [c_5dh4dglc_h2o, -r_R128]).
cnf(activR129, axiom, [r_R129, -c_h_mmcoa_S]).
cnf(combih_mmcoa_S, axiom, [c_h_mmcoa_S, -m_h, -m_mmcoa_S]).
cnf(activR131, axiom, [r_R131, -c_25dkglcn_h_nadph]).
cnf(prodR131, axiom, [c_5dglcn_nadp, -r_R131]).
cnf(dec5dglcn_nadp1, axiom, [m_5dglcn, -c_5dglcn_nadp]).
cnf(combi2dhglcn_h_nadh, axiom, [c_2dhglcn_h_nadh, -m_2dhglcn, -m_h, -m_nadh]).
cnf(combi2dhglcn_h_nadph, axiom, [c_2dhglcn_h_nadph, -m_2dhglcn, -m_h, -m_nadph]).
cnf(activR134, axiom, [r_R134, -c_25dkglcn_h_nadh]).
cnf(combi25dkglcn_h_nadh, axiom, [c_25dkglcn_h_nadh, -m_25dkglcn, -m_h, -m_nadh]).
cnf(prodR134, axiom, [c_5dglcn_nad, -r_R134]).
cnf(dec5dglcn_nad1, axiom, [m_5dglcn, -c_5dglcn_nad]).
cnf(activR135, axiom, [r_R135, -c_2dhguln_h_nadh]).
cnf(combi2dhguln_h_nadh, axiom, [c_2dhguln_h_nadh, -m_2dhguln, -m_h, -m_nadh]).
cnf(activR136, axiom, [r_R136, -c_2dhguln_h_nadph]).
cnf(combi2dhguln_h_nadph, axiom, [c_2dhguln_h_nadph, -m_2dhguln, -m_h, -m_nadph]).
cnf(activR137, axiom, [r_R137, -c_23doguln_h_nadh]).
cnf(combi23doguln_h_nadh, axiom, [c_23doguln_h_nadh, -m_23doguln, -m_h, -m_nadh]).
cnf(decglx_succ1, axiom, [m_glx, -c_glx_succ]).
cnf(deccoa_h_mal_L2, axiom, [m_h, -c_coa_h_mal_L]).
cnf(decco2_nadph_pyr2, axiom, [m_nadph, -c_co2_nadph_pyr]).
cnf(dech_pi1, axiom, [m_h, -c_h_pi]).
cnf(dech_oaa_pi1, axiom, [m_h, -c_h_oaa_pi]).
cnf(activR144, axiom, [r_R144, -c_mal_L_nad]).
cnf(prodR144, axiom, [c_co2_nadh_pyr, -r_R144]).
cnf(decco2_nadh_pyr2, axiom, [m_nadh, -c_co2_nadh_pyr]).
cnf(dec2kmb_for_h_pi3, axiom, [m_h, -c_2kmb_for_h_pi]).
cnf(prodR148, axiom, [c_h_nadh_succ, -r_R148]).
cnf(dech_nadh_succ1, axiom, [m_h, -c_h_nadh_succ]).
cnf(dech_nadh_succ2, axiom, [m_nadh, -c_h_nadh_succ]).
cnf(prodR149, axiom, [c_4abut_h_nadh, -r_R149]).
cnf(dec4abut_h_nadh1, axiom, [m_4abut, -c_4abut_h_nadh]).
cnf(dec4abut_h_nadh2, axiom, [m_h, -c_4abut_h_nadh]).
cnf(dec4abut_h_nadh3, axiom, [m_nadh, -c_4abut_h_nadh]).
cnf(dec5mdr1p_adp_h3, axiom, [m_h, -c_5mdr1p_adp_h]).
cnf(prodR153, axiom, [c_1pyr5c_h_h2o, -r_R153]).
cnf(dec1pyr5c_h_h2o1, axiom, [m_1pyr5c, -c_1pyr5c_h_h2o]).
cnf(dec1pyr5c_h_h2o2, axiom, [m_h, -c_1pyr5c_h_h2o]).
cnf(decacglu_coa_h3, axiom, [m_h, -c_acglu_coa_h]).
cnf(prodR157a, axiom, [c_acg5p_h_nadph, -r_R157a]).
cnf(decacg5p_h_nadph1, axiom, [m_acg5p, -c_acg5p_h_nadph]).
cnf(decacg5p_h_nadph2, axiom, [m_h, -c_acg5p_h_nadph]).
cnf(decacg5p_h_nadph3, axiom, [m_nadph, -c_acg5p_h_nadph]).
cnf(decamp_argsuc_h_ppi3, axiom, [m_h, -c_amp_argsuc_h_ppi]).
cnf(activR163a, axiom, [r_R163a, -c_cbp_orn]).
cnf(combicbp_orn, axiom, [c_cbp_orn, -m_cbp, -m_orn]).
cnf(prodR163a, axiom, [c_citr_L_h_pi, -r_R163a]).
cnf(deccitr_L_h_pi1, axiom, [m_citr_L, -c_citr_L_h_pi]).
cnf(deccitr_L_h_pi2, axiom, [m_h, -c_citr_L_h_pi]).
cnf(activR164, axiom, [r_R164, -c_arg_L_succoa]).
cnf(prodR164, axiom, [c_coa_h_sucarg, -r_R164]).
cnf(deccoa_h_sucarg2, axiom, [m_h, -c_coa_h_sucarg]).
cnf(deccoa_h_sucarg3, axiom, [m_sucarg, -c_coa_h_sucarg]).
cnf(activR166, axiom, [r_R166, -c_h_h2o_sucarg]).
cnf(combih_h2o_sucarg, axiom, [c_h_h2o_sucarg, -m_h, -m_h2o, -m_sucarg]).
cnf(activR167, axiom, [r_R167, -c_h2o_nad_sucgsa]).
cnf(prodR167, axiom, [c_h_nadh_sucglu, -r_R167]).
cnf(dech_nadh_sucglu1, axiom, [m_h, -c_h_nadh_sucglu]).
cnf(dech_nadh_sucglu2, axiom, [m_nadh, -c_h_nadh_sucglu]).
cnf(activR169, axiom, [r_R169, -c_atp_gln_L_h2o_hco3]).
cnf(combiatp_gln_L_h2o_hco3, axiom, [c_atp_gln_L_h2o_hco3, -m_atp, -m_gln_L, -m_h2o, -m_hco3]).
cnf(prodR169, axiom, [c_adp_cbp_glu_L_h_pi, -r_R169]).
cnf(decadp_cbp_glu_L_h_pi2, axiom, [m_cbp, -c_adp_cbp_glu_L_h_pi]).
cnf(decadp_cbp_glu_L_h_pi4, axiom, [m_h, -c_adp_cbp_glu_L_h_pi]).
cnf(prodR170, axiom, [c_h_nadph_succ, -r_R170]).
cnf(dech_nadph_succ1, axiom, [m_h, -c_h_nadph_succ]).
cnf(dech_nadph_succ2, axiom, [m_nadph, -c_h_nadph_succ]).
cnf(decadp_gtspmd_h_pi3, axiom, [m_h, -c_adp_gtspmd_h_pi]).
cnf(combiglu5p_h_nadph, axiom, [c_glu5p_h_nadph, -m_glu5p, -m_h, -m_nadph]).
cnf(decadp_glu5p2, axiom, [m_glu5p, -c_adp_glu5p]).
cnf(combi1pyr5c_h_nadph, axiom, [c_1pyr5c_h_nadph, -m_1pyr5c, -m_h, -m_nadph]).
cnf(activR178, axiom, [r_R178, -c_1pyr5c_h2o_nad]).
cnf(prodR178, axiom, [c_glu_L_h_nadh, -r_R178]).
cnf(decglu_L_h_nadh2, axiom, [m_h, -c_glu_L_h_nadh]).
cnf(decglu_L_h_nadh3, axiom, [m_nadh, -c_glu_L_h_nadh]).
cnf(prodR179, axiom, [c_1pyr5c_fadh2_h, -r_R179]).
cnf(dec1pyr5c_fadh2_h1, axiom, [m_1pyr5c, -c_1pyr5c_fadh2_h]).
cnf(dec1pyr5c_fadh2_h2, axiom, [m_fadh2, -c_1pyr5c_fadh2_h]).
cnf(dec1pyr5c_fadh2_h3, axiom, [m_h, -c_1pyr5c_fadh2_h]).
cnf(activR180, axiom, [r_R180, -c_arg_L_h]).
cnf(combiarg_L_h, axiom, [c_arg_L_h, -m_arg_L, -m_h]).
cnf(combih_orn, axiom, [c_h_orn, -m_h, -m_orn]).
cnf(combiamet_h, axiom, [c_amet_h, -m_amet, -m_h]).
cnf(dec5mta_h_spmd2, axiom, [m_h, -c_5mta_h_spmd]).
cnf(decN1aspmd_coa_h3, axiom, [m_h, -c_N1aspmd_coa_h]).
cnf(deccoa_h_n8aspmd2, axiom, [m_h, -c_coa_h_n8aspmd]).
cnf(prodR188, axiom, [c_h_peptido_EC_udcpdp, -r_R188]).
cnf(dech_peptido_EC_udcpdp1, axiom, [m_h, -c_h_peptido_EC_udcpdp]).
cnf(dech_peptido_EC_udcpdp2, axiom, [m_peptido_EC, -c_h_peptido_EC_udcpdp]).
cnf(dech_peptido_EC_udcpdp3, axiom, [m_udcpdp, -c_h_peptido_EC_udcpdp]).
cnf(activR189, axiom, [r_R189, -c_h2o_udcpdp]).
cnf(combih2o_udcpdp, axiom, [c_h2o_udcpdp, -m_h2o, -m_udcpdp]).
cnf(prodR189, axiom, [c_h_pi_udcpp, -r_R189]).
cnf(dech_pi_udcpp1, axiom, [m_h, -c_h_pi_udcpp]).
cnf(activR191, axiom, [r_R191, -c_acmp_h_pe_EC]).
cnf(combiacmp_h_pe_EC, axiom, [c_acmp_h_pe_EC, -m_acmp, -m_h, -m_pe_EC]).
cnf(prodR191, axiom, [c_12dgr_EC_cdpea, -r_R191]).
cnf(dec12dgr_EC_cdpea1, axiom, [m_12dgr_EC, -c_12dgr_EC_cdpea]).
cnf(dec12dgr_EC_cdpea2, axiom, [m_cdpea, -c_12dgr_EC_cdpea]).
cnf(activR192, axiom, [r_R192, -c_h2o_pa_EC]).
cnf(combih2o_pa_EC, axiom, [c_h2o_pa_EC, -m_h2o, -m_pa_EC]).
cnf(prodR192, axiom, [c_12dgr_EC_pi, -r_R192]).
cnf(dec12dgr_EC_pi1, axiom, [m_12dgr_EC, -c_12dgr_EC_pi]).
cnf(activR193, axiom, [r_R193, -m_unagamuf]).
cnf(prodR193, axiom, [c_eca_EC_h_udcpdp, -r_R193]).
cnf(dececa_EC_h_udcpdp1, axiom, [m_eca_EC, -c_eca_EC_h_udcpdp]).
cnf(dececa_EC_h_udcpdp2, axiom, [m_h, -c_eca_EC_h_udcpdp]).
cnf(dececa_EC_h_udcpdp3, axiom, [m_udcpdp, -c_eca_EC_h_udcpdp]).
cnf(prodR199a, axiom, [c_adp_alaala_h_pi, -r_R199a]).
cnf(decadp_alaala_h_pi2, axiom, [m_alaala, -c_adp_alaala_h_pi]).
cnf(decadp_alaala_h_pi3, axiom, [m_h, -c_adp_alaala_h_pi]).
cnf(activR200, axiom, [r_R200, -c_12dgr_EC_atp]).
cnf(combi12dgr_EC_atp, axiom, [c_12dgr_EC_atp, -m_12dgr_EC, -m_atp]).
cnf(prodR200, axiom, [c_adp_h_pa_EC, -r_R200]).
cnf(decadp_h_pa_EC2, axiom, [m_h, -c_adp_h_pa_EC]).
cnf(decadp_h_pa_EC3, axiom, [m_pa_EC, -c_adp_h_pa_EC]).
cnf(activR202, axiom, [r_R202, -m_gdpddman]).
cnf(prodR202, axiom, [m_gdpofuc, -r_R202]).
cnf(activR203, axiom, [r_R203, -c_gdpofuc_h_nadph]).
cnf(combigdpofuc_h_nadph, axiom, [c_gdpofuc_h_nadph, -m_gdpofuc, -m_h, -m_nadph]).
cnf(prodR203, axiom, [c_gdpfuc_nadp, -r_R203]).
cnf(decgdpfuc_nadp1, axiom, [m_gdpfuc, -c_gdpfuc_nadp]).
cnf(activR206, axiom, [r_R206, -c_acgam1p_h_utp]).
cnf(combiacgam1p_h_utp, axiom, [c_acgam1p_h_utp, -m_acgam1p, -m_h, -m_utp]).
cnf(decacgam1p_coa_h3, axiom, [m_h, -c_acgam1p_coa_h]).
cnf(decchol_glyc3p_h3, axiom, [m_h, -c_chol_glyc3p_h]).
cnf(decetha_glyc3p_h3, axiom, [m_h, -c_etha_glyc3p_h]).
cnf(decglyc3p_h_ser_L2, axiom, [m_h, -c_glyc3p_h_ser_L]).
cnf(decglyc3p_h_ser_L3, axiom, [m_ser_L, -c_glyc3p_h_ser_L]).
cnf(decglyc_glyc3p_h3, axiom, [m_h, -c_glyc_glyc3p_h]).
cnf(decglyc3p_h_inost2, axiom, [m_h, -c_glyc3p_h_inost]).
cnf(activR213, axiom, [r_R213, -m_gdpmann]).
cnf(prodR213, axiom, [c_gdpddman_h2o, -r_R213]).
cnf(decgdpddman_h2o1, axiom, [m_gdpddman, -c_gdpddman_h2o]).
cnf(deccmp_h_kdolipid41, axiom, [m_cmp, -c_cmp_h_kdolipid4]).
cnf(deccmp_h_kdolipid42, axiom, [m_h, -c_cmp_h_kdolipid4]).
cnf(deccmp_h_kdo2lipid41, axiom, [m_cmp, -c_cmp_h_kdo2lipid4]).
cnf(deccmp_h_kdo2lipid42, axiom, [m_h, -c_cmp_h_kdo2lipid4]).
cnf(activR221, axiom, [r_R221, -c_lipidX_u23ga]).
cnf(prodR221, axiom, [c_h_lipidAds_udp, -r_R221]).
cnf(dech_lipidAds_udp1, axiom, [m_h, -c_h_lipidAds_udp]).
cnf(dech_lipidAds_udp2, axiom, [m_lipidAds, -c_h_lipidAds_udp]).
cnf(decACP_h_u23ga2, axiom, [m_h, -c_ACP_h_u23ga]).
cnf(activR224, axiom, [r_R224, -c_atp_lipidAds]).
cnf(combiatp_lipidAds, axiom, [c_atp_lipidAds, -m_atp, -m_lipidAds]).
cnf(prodR224, axiom, [c_adp_h_lipidA, -r_R224]).
cnf(decadp_h_lipidA2, axiom, [m_h, -c_adp_h_lipidA]).
cnf(activR227, axiom, [r_R227, -c_gdp_h_man1p]).
cnf(combigdp_h_man1p, axiom, [c_gdp_h_man1p, -m_gdp, -m_h, -m_man1p]).
cnf(prodR227, axiom, [c_gdpmann_pi, -r_R227]).
cnf(decgdpmann_pi1, axiom, [m_gdpmann, -c_gdpmann_pi]).
cnf(activR233, axiom, [r_R233, -c_h_nadph_uaccg]).
cnf(combih_nadph_uaccg, axiom, [c_h_nadph_uaccg, -m_h, -m_nadph, -m_uaccg]).
cnf(decadp_h_pi_uama2, axiom, [m_h, -c_adp_h_pi_uama]).
cnf(decadp_h_pi_uamag2, axiom, [m_h, -c_adp_h_pi_uamag]).
cnf(prodR236, axiom, [c_adp_h_pi_ugmd, -r_R236]).
cnf(decadp_h_pi_ugmd2, axiom, [m_h, -c_adp_h_pi_ugmd]).
cnf(decadp_h_pi_ugmd4, axiom, [m_ugmd, -c_adp_h_pi_ugmd]).
cnf(activR237, axiom, [r_R237, -c_alaala_atp_ugmd]).
cnf(combialaala_atp_ugmd, axiom, [c_alaala_atp_ugmd, -m_alaala, -m_atp, -m_ugmd]).
cnf(prodR237, axiom, [c_adp_h_pi_ugmda, -r_R237]).
cnf(decadp_h_pi_ugmda2, axiom, [m_h, -c_adp_h_pi_ugmda]).
cnf(decadp_h_pi_ugmda4, axiom, [m_ugmda, -c_adp_h_pi_ugmda]).
cnf(dech_uaagmda_udp1, axiom, [m_h, -c_h_uaagmda_udp]).
cnf(decagpc_EC_h_hdca_hdcea_ocdcea_ttdca_ttdcea2, axiom, [m_h, -c_agpc_EC_h_hdca_hdcea_ocdcea_ttdca_ttdcea]).
cnf(decagpg_EC_h_hdca_hdcea_ocdcea_ttdca_ttdcea2, axiom, [m_h, -c_agpg_EC_h_hdca_hdcea_ocdcea_ttdca_ttdcea]).
cnf(decagpe_EC_h_hdca_hdcea_ocdcea_ttdca_ttdcea2, axiom, [m_h, -c_agpe_EC_h_hdca_hdcea_ocdcea_ttdca_ttdcea]).
cnf(decg3pg_h_hdca_hdcea_ocdcea_ttdca_ttdcea2, axiom, [m_h, -c_g3pg_h_hdca_hdcea_ocdcea_ttdca_ttdcea]).
cnf(decg3pe_h_hdca_hdcea_ocdcea_ttdca_ttdcea2, axiom, [m_h, -c_g3pe_h_hdca_hdcea_ocdcea_ttdca_ttdcea]).
cnf(decg3pc_h_hdca_hdcea_ocdcea_ttdca_ttdcea2, axiom, [m_h, -c_g3pc_h_hdca_hdcea_ocdcea_ttdca_ttdcea]).
cnf(decadp_gmhep17bp_h3, axiom, [m_h, -c_adp_gmhep17bp_h]).
cnf(activR253, axiom, [r_R253, -c_dttp_g1p_h]).
cnf(combidttp_g1p_h, axiom, [c_dttp_g1p_h, -m_dttp, -m_g1p, -m_h]).
cnf(prodR253, axiom, [c_dtdpglu_ppi, -r_R253]).
cnf(decdtdpglu_ppi1, axiom, [m_dtdpglu, -c_dtdpglu_ppi]).
cnf(activR254, axiom, [r_R254, -m_dtdpglu]).
cnf(prodR254, axiom, [c_dtdp4d6dg_h2o, -r_R254]).
cnf(decdtdp4d6dg_h2o1, axiom, [m_dtdp4d6dg, -c_dtdp4d6dg_h2o]).
cnf(activR255, axiom, [r_R255, -m_dtdp4d6dg]).
cnf(prodR255, axiom, [m_dtdp4d6dm, -r_R255]).
cnf(activR256, axiom, [r_R256, -c_dtdp4d6dm_h_nadph]).
cnf(combidtdp4d6dm_h_nadph, axiom, [c_dtdp4d6dm_h_nadph, -m_dtdp4d6dm, -m_h, -m_nadph]).
cnf(prodR256, axiom, [c_dtdprmn_nadp, -r_R256]).
cnf(decdtdprmn_nadp1, axiom, [m_dtdprmn, -c_dtdprmn_nadp]).
cnf(activR258, axiom, [r_R258, -c_h2o_nad_udpg]).
cnf(prodR258, axiom, [c_h_nadh_udpglcur, -r_R258]).
cnf(dech_nadh_udpglcur1, axiom, [m_h, -c_h_nadh_udpglcur]).
cnf(dech_nadh_udpglcur2, axiom, [m_nadh, -c_h_nadh_udpglcur]).
cnf(dech_nadh_udpglcur3, axiom, [m_udpglcur, -c_h_nadh_udpglcur]).
cnf(dech_lipidX_ump1, axiom, [m_h, -c_h_lipidX_ump]).
cnf(prodR262, axiom, [c_h_nadh_uacmamu, -r_R262]).
cnf(dech_nadh_uacmamu1, axiom, [m_h, -c_h_nadh_uacmamu]).
cnf(dech_nadh_uacmamu2, axiom, [m_nadh, -c_h_nadh_uacmamu]).
cnf(dech_nadh_uacmamu3, axiom, [m_uacmamu, -c_h_nadh_uacmamu]).
cnf(deccoa_dtdp4aaddg_h3, axiom, [m_h, -c_coa_dtdp4aaddg_h]).
cnf(decdtdp_h_unagamuf2, axiom, [m_h, -c_dtdp_h_unagamuf]).
cnf(decdtdp_h_unagamuf3, axiom, [m_unagamuf, -c_dtdp_h_unagamuf]).
cnf(dech_udp_unagamu1, axiom, [m_h, -c_h_udp_unagamu]).
cnf(deccit_coa_h3, axiom, [m_h, -c_cit_coa_h]).
cnf(decakg_co2_nadph3, axiom, [m_nadph, -c_akg_co2_nadph]).
cnf(decco2_nadh_succoa2, axiom, [m_nadh, -c_co2_nadh_succoa]).
cnf(activR275a, axiom, [r_R275a, -c_mal_L_nad]).
cnf(prodR275a, axiom, [c_h_nadh_oaa, -r_R275a]).
cnf(dech_nadh_oaa1, axiom, [m_h, -c_h_nadh_oaa]).
cnf(dech_nadh_oaa2, axiom, [m_nadh, -c_h_nadh_oaa]).
cnf(prodR283, axiom, [c_h_ncam_r5p, -r_R283]).
cnf(dech_ncam_r5p1, axiom, [m_h, -c_h_ncam_r5p]).
cnf(dech_ncam_r5p3, axiom, [m_r5p, -c_h_ncam_r5p]).
cnf(activR285, axiom, [r_R285, -c_4ppcys_h]).
cnf(combi4ppcys_h, axiom, [c_4ppcys_h, -m_4ppcys, -m_h]).
cnf(prodR285, axiom, [c_co2_pan4p, -r_R285]).
cnf(decco2_pan4p2, axiom, [m_pan4p, -c_co2_pan4p]).
cnf(decadp_coa_h3, axiom, [m_h, -c_adp_coa_h]).
cnf(activR290, axiom, [r_R290, -c_h2o_nmn]).
cnf(prodR290, axiom, [c_nh4_nicrnt, -r_R290]).
cnf(decnh4_nicrnt2, axiom, [m_nicrnt, -c_nh4_nicrnt]).
cnf(activR291a, axiom, [r_R291a, -c_atp_thm]).
cnf(combiatp_thm, axiom, [c_atp_thm, -m_atp, -m_thm]).
cnf(prodR291a, axiom, [c_adp_h_thmmp, -r_R291a]).
cnf(decadp_h_thmmp2, axiom, [m_h, -c_adp_h_thmmp]).
cnf(decadp_h_thmmp3, axiom, [m_thmmp, -c_adp_h_thmmp]).
cnf(activR292, axiom, [r_R292, -c_4ppan_ctp_cys_L]).
cnf(prodR292, axiom, [c_4ppcys_cmp_h_ppi, -r_R292]).
cnf(dec4ppcys_cmp_h_ppi1, axiom, [m_4ppcys, -c_4ppcys_cmp_h_ppi]).
cnf(dec4ppcys_cmp_h_ppi2, axiom, [m_cmp, -c_4ppcys_cmp_h_ppi]).
cnf(dec4ppcys_cmp_h_ppi3, axiom, [m_h, -c_4ppcys_cmp_h_ppi]).
cnf(activR293, axiom, [r_R293, -c_apoACP_coa]).
cnf(prodR293, axiom, [c_ACP_h_pap, -r_R293]).
cnf(decACP_h_pap2, axiom, [m_h, -c_ACP_h_pap]).
cnf(decACP_h_pap3, axiom, [m_pap, -c_ACP_h_pap]).
cnf(activR295a, axiom, [r_R295a, -c_cys_L_dtbt]).
cnf(combicys_L_dtbt, axiom, [c_cys_L_dtbt, -m_cys_L, -m_dtbt]).
cnf(prodR295a, axiom, [c_ala_L_btn_h, -r_R295a]).
cnf(decala_L_btn_h2, axiom, [m_btn, -c_ala_L_btn_h]).
cnf(decala_L_btn_h3, axiom, [m_h, -c_ala_L_btn_h]).
cnf(prodR296a, axiom, [c_adp_dtbt_h_pi, -r_R296a]).
cnf(decadp_dtbt_h_pi2, axiom, [m_dtbt, -c_adp_dtbt_h_pi]).
cnf(decadp_dtbt_h_pi3, axiom, [m_h, -c_adp_dtbt_h_pi]).
cnf(combiala_L_h_pmcoa, axiom, [c_ala_L_h_pmcoa, -m_ala_L, -m_h, -m_pmcoa]).
cnf(activR298, axiom, [r_R298, -c_btnso_h_nadh]).
cnf(combibtnso_h_nadh, axiom, [c_btnso_h_nadh, -m_btnso, -m_h, -m_nadh]).
cnf(prodR298, axiom, [c_btn_h2o_nad, -r_R298]).
cnf(decbtn_h2o_nad1, axiom, [m_btn, -c_btn_h2o_nad]).
cnf(activR299, axiom, [r_R299, -c_btnso_h_nadph]).
cnf(combibtnso_h_nadph, axiom, [c_btnso_h_nadph, -m_btnso, -m_h, -m_nadph]).
cnf(prodR299, axiom, [c_btn_h2o_nadp, -r_R299]).
cnf(decbtn_h2o_nadp1, axiom, [m_btn, -c_btn_h2o_nadp]).
cnf(dec4ppan_adp_h3, axiom, [m_h, -c_4ppan_adp_h]).
cnf(combiatp_h_pan4p, axiom, [c_atp_h_pan4p, -m_atp, -m_h, -m_pan4p]).
cnf(decadocbl_gmp_h3, axiom, [m_h, -c_adocbl_gmp_h]).
cnf(combidmbzid_nicrnt, axiom, [c_dmbzid_nicrnt, -m_dmbzid, -m_nicrnt]).
cnf(dec5prdmbz_h_nac2, axiom, [m_h, -c_5prdmbz_h_nac]).
cnf(activR306, axiom, [r_R306, -c_adocbi_atp]).
cnf(prodR306, axiom, [c_adocbip_adp_h, -r_R306]).
cnf(decadocbip_adp_h1, axiom, [m_adocbip, -c_adocbip_adp_h]).
cnf(decadocbip_adp_h3, axiom, [m_h, -c_adocbip_adp_h]).
cnf(combiadocbip_gtp_h, axiom, [c_adocbip_gtp_h, -m_adocbip, -m_gtp, -m_h]).
cnf(prodR309, axiom, [c_h_nadh_srch, -r_R309]).
cnf(dech_nadh_srch1, axiom, [m_h, -c_h_nadh_srch]).
cnf(dech_nadh_srch2, axiom, [m_nadh, -c_h_nadh_srch]).
cnf(dech_nadh_srch3, axiom, [m_srch, -c_h_nadh_srch]).
cnf(activR310, axiom, [r_R310, -c_fe2_srch]).
cnf(combife2_srch, axiom, [c_fe2_srch, -m_fe2, -m_srch]).
cnf(prodR310, axiom, [c_h_sheme, -r_R310]).
cnf(dech_sheme1, axiom, [m_h, -c_h_sheme]).
cnf(dech_sheme2, axiom, [m_sheme, -c_h_sheme]).
cnf(activR311, axiom, [r_R311, -c_dxyl5p_h_nadph]).
cnf(combidxyl5p_h_nadph, axiom, [c_dxyl5p_h_nadph, -m_dxyl5p, -m_h, -m_nadph]).
cnf(prodR311, axiom, [c_2me4p_nadp, -r_R311]).
cnf(dec2me4p_nadp1, axiom, [m_2me4p, -c_2me4p_nadp]).
cnf(activR312, axiom, [r_R312, -c_g3p_h_pyr]).
cnf(combig3p_h_pyr, axiom, [c_g3p_h_pyr, -m_g3p, -m_h, -m_pyr]).
cnf(prodR313a, axiom, [c_23dhb_h_nadh, -r_R313a]).
cnf(dec23dhb_h_nadh1, axiom, [m_23dhb, -c_23dhb_h_nadh]).
cnf(dec23dhb_h_nadh2, axiom, [m_h, -c_23dhb_h_nadh]).
cnf(dec23dhb_h_nadh3, axiom, [m_nadh, -c_23dhb_h_nadh]).
cnf(decamp_enter_h3, axiom, [m_h, -c_amp_enter_h]).
cnf(activR317a, axiom, [r_R317a, -c_atp_h_ser_L]).
cnf(combiatp_h_ser_L, axiom, [c_atp_h_ser_L, -m_atp, -m_h, -m_ser_L]).
cnf(prodR318a, axiom, [c_4per_h_nadh, -r_R318a]).
cnf(dec4per_h_nadh1, axiom, [m_4per, -c_4per_h_nadh]).
cnf(dec4per_h_nadh2, axiom, [m_h, -c_4per_h_nadh]).
cnf(dec4per_h_nadh3, axiom, [m_nadh, -c_4per_h_nadh]).
cnf(activR319a, axiom, [r_R319a, -c_dhf_h_nadph]).
cnf(combidhf_h_nadph, axiom, [c_dhf_h_nadph, -m_dhf, -m_h, -m_nadph]).
cnf(decadp_dhf_pi2, axiom, [m_dhf, -c_adp_dhf_pi]).
cnf(dec6hmhptpp_amp_h1, axiom, [m_6hmhptpp, -c_6hmhptpp_amp_h]).
cnf(dec6hmhptpp_amp_h3, axiom, [m_h, -c_6hmhptpp_amp_h]).
cnf(activR324, axiom, [r_R324, -c_4abz_6hmhptpp]).
cnf(combi4abz_6hmhptpp, axiom, [c_4abz_6hmhptpp, -m_4abz, -m_6hmhptpp]).
cnf(prodR324, axiom, [c_dhpt_h_ppi, -r_R324]).
cnf(decdhpt_h_ppi2, axiom, [m_h, -c_dhpt_h_ppi]).
cnf(activR325, axiom, [r_R325, -c_2mecdp_h]).
cnf(combi2mecdp_h, axiom, [c_2mecdp_h, -m_2mecdp, -m_h]).
cnf(prodR325, axiom, [c_h2mb4p_h2o, -r_R325]).
cnf(dech2mb4p_h2o1, axiom, [m_h2mb4p, -c_h2mb4p_h2o]).
cnf(decamp_glutrna_ppi2, axiom, [m_glutrna, -c_amp_glutrna_ppi]).
cnf(activR329a, axiom, [r_R329a, -c_gthox_h_nadph]).
cnf(combigthox_h_nadph, axiom, [c_gthox_h_nadph, -m_gthox, -m_h, -m_nadph]).
cnf(decadp_glucys_h_pi3, axiom, [m_h, -c_adp_glucys_h_pi]).
cnf(decadp_gthrd_h_pi3, axiom, [m_h, -c_adp_gthrd_h_pi]).
cnf(combiglutrna_h_nadph, axiom, [c_glutrna_h_nadph, -m_glutrna, -m_h, -m_nadph]).
cnf(decglu1sa_nadp_trnaglu1, axiom, [m_glu1sa, -c_glu1sa_nadp_trnaglu]).
cnf(activR333, axiom, [r_R333, -m_5aop]).
cnf(prodR333, axiom, [c_h_h2o_ppbng, -r_R333]).
cnf(dech_h2o_ppbng1, axiom, [m_h, -c_h_h2o_ppbng]).
cnf(activR336, axiom, [r_R336, -c_h_uppg3]).
cnf(combih_uppg3, axiom, [c_h_uppg3, -m_h, -m_uppg3]).
cnf(prodR336, axiom, [c_co2_cpppg3, -r_R336]).
cnf(decco2_cpppg32, axiom, [m_cpppg3, -c_co2_cpppg3]).
cnf(combicpppg3_h_o2, axiom, [c_cpppg3_h_o2, -m_cpppg3, -m_h, -m_o2]).
cnf(dech_pheme1, axiom, [m_h, -c_h_pheme]).
cnf(activR340, axiom, [r_R340, -m_glu1sa]).
cnf(prodR340, axiom, [m_5aop, -r_R340]).
cnf(decahcys_h_shcl2, axiom, [m_h, -c_ahcys_h_shcl]).
cnf(activR346, axiom, [r_R346, -c_2me4p_ctp_h]).
cnf(combi2me4p_ctp_h, axiom, [c_2me4p_ctp_h, -m_2me4p, -m_ctp, -m_h]).
cnf(dec2p4c2me_adp_h3, axiom, [m_h, -c_2p4c2me_adp_h]).
cnf(prodR348, axiom, [c_2mecdp_cmp, -r_R348]).
cnf(dec2mecdp_cmp1, axiom, [m_2mecdp, -c_2mecdp_cmp]).
cnf(dec2mecdp_cmp2, axiom, [m_cmp, -c_2mecdp_cmp]).
cnf(activR349, axiom, [r_R349, -c_h_h2mb4p_nadh]).
cnf(combih_h2mb4p_nadh, axiom, [c_h_h2mb4p_nadh, -m_h, -m_h2mb4p, -m_nadh]).
cnf(dec2dmmq8_co2_h_ppi3, axiom, [m_h, -c_2dmmq8_co2_h_ppi]).
cnf(activR353, axiom, [r_R353, -m_2shchc]).
cnf(prodR353, axiom, [c_h2o_sucbz, -r_R353]).
cnf(dech2o_sucbz2, axiom, [m_sucbz, -c_h2o_sucbz]).
cnf(activR354, axiom, [r_R354, -c_akg_h_thmpp]).
cnf(combiakg_h_thmpp, axiom, [c_akg_h_thmpp, -m_akg, -m_h, -m_thmpp]).
cnf(prodR354, axiom, [c_co2_ssaltpp, -r_R354]).
cnf(decco2_ssaltpp2, axiom, [m_ssaltpp, -c_co2_ssaltpp]).
cnf(activR355, axiom, [r_R355, -c_ichor_ssaltpp]).
cnf(combiichor_ssaltpp, axiom, [c_ichor_ssaltpp, -m_ichor, -m_ssaltpp]).
cnf(prodR355, axiom, [c_2shchc_pyr_thmpp, -r_R355]).
cnf(dec2shchc_pyr_thmpp1, axiom, [m_2shchc, -c_2shchc_pyr_thmpp]).
cnf(dec2shchc_pyr_thmpp3, axiom, [m_thmpp, -c_2shchc_pyr_thmpp]).
cnf(decahcys_h_mqn82, axiom, [m_h, -c_ahcys_h_mqn8]).
cnf(prodR359, axiom, [c_h_h2o_pi_quln, -r_R359]).
cnf(dech_h2o_pi_quln1, axiom, [m_h, -c_h_h2o_pi_quln]).
cnf(dech_h2o_pi_quln4, axiom, [m_quln, -c_h_h2o_pi_quln]).
cnf(activR364, axiom, [r_R364, -c_h_prpp_quln]).
cnf(combih_prpp_quln, axiom, [c_h_prpp_quln, -m_h, -m_prpp, -m_quln]).
cnf(prodR364, axiom, [c_co2_nicrnt_ppi, -r_R364]).
cnf(decco2_nicrnt_ppi2, axiom, [m_nicrnt, -c_co2_nicrnt_ppi]).
cnf(combiatp_h_nicrnt, axiom, [c_atp_h_nicrnt, -m_atp, -m_h, -m_nicrnt]).
cnf(combiatp_h_nmn, axiom, [c_atp_h_nmn, -m_atp, -m_h, -m_nmn]).
cnf(decamp_h_nad_ppi2, axiom, [m_h, -c_amp_h_nad_ppi]).
cnf(decdhpmp_h_ppi2, axiom, [m_h, -c_dhpmp_h_ppi]).
cnf(prodR370, axiom, [c_4abz_h_pyr, -r_R370]).
cnf(dec4abz_h_pyr1, axiom, [m_4abz, -c_4abz_h_pyr]).
cnf(dec4abz_h_pyr2, axiom, [m_h, -c_4abz_h_pyr]).
cnf(activR371, axiom, [r_R371, -c_3mob_h2o_mlthf]).
cnf(combi3mob_h2o_mlthf, axiom, [c_3mob_h2o_mlthf, -m_3mob, -m_h2o, -m_mlthf]).
cnf(prodR371, axiom, [c_2dhp_thf, -r_R371]).
cnf(dec2dhp_thf1, axiom, [m_2dhp, -c_2dhp_thf]).
cnf(dec2dhp_thf2, axiom, [m_thf, -c_2dhp_thf]).
cnf(decamp_h_pnto_R_ppi2, axiom, [m_h, -c_amp_h_pnto_R_ppi]).
cnf(activR373, axiom, [r_R373, -c_asp_L_h]).
cnf(combiasp_L_h, axiom, [c_asp_L_h, -m_asp_L, -m_h]).
cnf(combi2dhp_h_nadph, axiom, [c_2dhp_h_nadph, -m_2dhp, -m_h, -m_nadph]).
cnf(decco2_h_h2o_nadh_pdx5p_pi2, axiom, [m_h, -c_co2_h_h2o_nadh_pdx5p_pi]).
cnf(decco2_h_h2o_nadh_pdx5p_pi4, axiom, [m_nadh, -c_co2_h_h2o_nadh_pdx5p_pi]).
cnf(prodR376a, axiom, [c_h_nadh_ohpb, -r_R376a]).
cnf(dech_nadh_ohpb1, axiom, [m_h, -c_h_nadh_ohpb]).
cnf(dech_nadh_ohpb2, axiom, [m_nadh, -c_h_nadh_ohpb]).
cnf(dech_nadh_ohpb3, axiom, [m_ohpb, -c_h_nadh_ohpb]).
cnf(decadp_h_pdx5p2, axiom, [m_h, -c_adp_h_pdx5p]).
cnf(decadp_h_pyam5p2, axiom, [m_h, -c_adp_h_pyam5p]).
cnf(decadp_h_pydx5p2, axiom, [m_h, -c_adp_h_pydx5p]).
cnf(decadp_nicrnt_pi_ppi2, axiom, [m_nicrnt, -c_adp_nicrnt_pi_ppi]).
cnf(prodR385, axiom, [c_25drapp_for_h_ppi, -r_R385]).
cnf(dec25drapp_for_h_ppi1, axiom, [m_25drapp, -c_25drapp_for_h_ppi]).
cnf(dec25drapp_for_h_ppi2, axiom, [m_for, -c_25drapp_for_h_ppi]).
cnf(dec25drapp_for_h_ppi3, axiom, [m_h, -c_25drapp_for_h_ppi]).
cnf(activR386, axiom, [r_R386, -m_ru5p_D]).
cnf(prodR386, axiom, [c_db4p_for_h, -r_R386]).
cnf(decdb4p_for_h1, axiom, [m_db4p, -c_db4p_for_h]).
cnf(decdb4p_for_h2, axiom, [m_for, -c_db4p_for_h]).
cnf(decdb4p_for_h3, axiom, [m_h, -c_db4p_for_h]).
cnf(activR387, axiom, [r_R387, -c_5apru_h_nadph]).
cnf(combi5apru_h_nadph, axiom, [c_5apru_h_nadph, -m_5apru, -m_h, -m_nadph]).
cnf(activR388, axiom, [r_R388, -c_25drapp_h_h2o]).
cnf(combi25drapp_h_h2o, axiom, [c_25drapp_h_h2o, -m_25drapp, -m_h, -m_h2o]).
cnf(prodR388, axiom, [c_5apru_nh4, -r_R388]).
cnf(dec5apru_nh41, axiom, [m_5apru, -c_5apru_nh4]).
cnf(activR389, axiom, [r_R389, -c_4r5au_db4p]).
cnf(combi4r5au_db4p, axiom, [c_4r5au_db4p, -m_4r5au, -m_db4p]).
cnf(prodR389, axiom, [c_dmlz_h2o_pi, -r_R389]).
cnf(decdmlz_h2o_pi1, axiom, [m_dmlz, -c_dmlz_h2o_pi]).
cnf(activR390, axiom, [r_R390, -c_atp_ribflv]).
cnf(combiatp_ribflv, axiom, [c_atp_ribflv, -m_atp, -m_ribflv]).
cnf(prodR390, axiom, [c_adp_fmn_h, -r_R390]).
cnf(decadp_fmn_h2, axiom, [m_fmn, -c_adp_fmn_h]).
cnf(decadp_fmn_h3, axiom, [m_h, -c_adp_fmn_h]).
cnf(activR391, axiom, [r_R391, -c_atp_fmn_h]).
cnf(combiatp_fmn_h, axiom, [c_atp_fmn_h, -m_atp, -m_fmn, -m_h]).
cnf(activR392, axiom, [r_R392, -m_dmlz]).
cnf(prodR392, axiom, [c_4r5au_ribflv, -r_R392]).
cnf(dec4r5au_ribflv1, axiom, [m_4r5au, -c_4r5au_ribflv]).
cnf(dec4r5au_ribflv2, axiom, [m_ribflv, -c_4r5au_ribflv]).
cnf(dec4ampm_for_h3, axiom, [m_h, -c_4ampm_for_h]).
cnf(dec4ampm_adp_h3, axiom, [m_h, -c_4ampm_adp_h]).
cnf(combi2mahmp_4mpetz_h, axiom, [c_2mahmp_4mpetz_h, -m_2mahmp, -m_4mpetz, -m_h]).
cnf(activR399, axiom, [r_R399, -c_4mhetz_atp]).
cnf(prodR399, axiom, [c_4mpetz_adp_h, -r_R399]).
cnf(dec4mpetz_adp_h1, axiom, [m_4mpetz, -c_4mpetz_adp_h]).
cnf(dec4mpetz_adp_h3, axiom, [m_h, -c_4mpetz_adp_h]).
cnf(dec4hba_4mpetz_ala_L_amp_co2_h_h2o_ppi2, axiom, [m_4mpetz, -c_4hba_4mpetz_ala_L_amp_co2_h_h2o_ppi]).
cnf(dec4hba_4mpetz_ala_L_amp_co2_h_h2o_ppi6, axiom, [m_h, -c_4hba_4mpetz_ala_L_amp_co2_h_h2o_ppi]).
cnf(combi3ophb_h, axiom, [c_3ophb_h, -m_3ophb, -m_h]).
cnf(dec2ommbl_ahcys_h3, axiom, [m_h, -c_2ommbl_ahcys_h]).
cnf(dec2omph_ahcys_h3, axiom, [m_h, -c_2omph_ahcys_h]).
cnf(decahcys_h_q8h22, axiom, [m_h, -c_ahcys_h_q8h2]).
cnf(activR412, axiom, [r_R412, -c_atp_dxyl]).
cnf(prodR412, axiom, [c_adp_dxyl5p_h, -r_R412]).
cnf(decadp_dxyl5p_h2, axiom, [m_dxyl5p, -c_adp_dxyl5p_h]).
cnf(decadp_dxyl5p_h3, axiom, [m_h, -c_adp_dxyl5p_h]).
cnf(decadp_h_nadp2, axiom, [m_h, -c_adp_h_nadp]).
cnf(activR414, axiom, [r_R414, -c_h2o_pap]).
cnf(combih2o_pap, axiom, [c_h2o_pap, -m_h2o, -m_pap]).
cnf(decadp_h_paps2, axiom, [m_h, -c_adp_h_paps]).
cnf(activR418, axiom, [r_R418, -c_paps_trdrd]).
cnf(prodR418, axiom, [c_h_pap_so3_trdox, -r_R418]).
cnf(dech_pap_so3_trdox1, axiom, [m_h, -c_h_pap_so3_trdox]).
cnf(dech_pap_so3_trdox2, axiom, [m_pap, -c_h_pap_so3_trdox]).
cnf(dech_pap_so3_trdox3, axiom, [m_so3, -c_h_pap_so3_trdox]).
cnf(dech_pap_so3_trdox4, axiom, [m_trdox, -c_h_pap_so3_trdox]).
cnf(prodR419a, axiom, [c_h_nadph_so3, -r_R419a]).
cnf(dech_nadph_so31, axiom, [m_h, -c_h_nadph_so3]).
cnf(dech_nadph_so32, axiom, [m_nadph, -c_h_nadph_so3]).
cnf(dech_nadph_so33, axiom, [m_so3, -c_h_nadph_so3]).
cnf(decac_cys_L_h3, axiom, [m_h, -c_ac_cys_L_h]).
cnf(activR422, axiom, [r_R422, -c_gcald_h2o_nad]).
cnf(prodR422, axiom, [c_glyclt_h_nadh, -r_R422]).
cnf(decglyclt_h_nadh2, axiom, [m_h, -c_glyclt_h_nadh]).
cnf(decglyclt_h_nadh3, axiom, [m_nadh, -c_glyclt_h_nadh]).
cnf(activR424a, axiom, [r_R424a, -c_mlthf_nadp]).
cnf(prodR424a, axiom, [c_h_methf_nadph, -r_R424a]).
cnf(dech_methf_nadph1, axiom, [m_h, -c_h_methf_nadph]).
cnf(dech_methf_nadph2, axiom, [m_methf, -c_h_methf_nadph]).
cnf(dech_methf_nadph3, axiom, [m_nadph, -c_h_methf_nadph]).
cnf(prodR425, axiom, [c_co2_mlthf_nadh_nh4, -r_R425]).
cnf(decco2_mlthf_nadh_nh42, axiom, [m_mlthf, -c_co2_mlthf_nadh_nh4]).
cnf(decco2_mlthf_nadh_nh43, axiom, [m_nadh, -c_co2_mlthf_nadh_nh4]).
cnf(activR426, axiom, [r_R426, -c_h_mlthf_nadh]).
cnf(combih_mlthf_nadh, axiom, [c_h_mlthf_nadh, -m_h, -m_mlthf, -m_nadh]).
cnf(prodR427, axiom, [c_for_h_thf, -r_R427]).
cnf(decfor_h_thf1, axiom, [m_for, -c_for_h_thf]).
cnf(decfor_h_thf2, axiom, [m_h, -c_for_h_thf]).
cnf(decfor_h_thf3, axiom, [m_thf, -c_for_h_thf]).
cnf(combiglu_L_h, axiom, [c_glu_L_h, -m_glu_L, -m_h]).
cnf(decakg_h_nadph_nh42, axiom, [m_h, -c_akg_h_nadph_nh4]).
cnf(decakg_h_nadph_nh43, axiom, [m_nadph, -c_akg_h_nadph_nh4]).
cnf(decadp_gln_L_h_pi3, axiom, [m_h, -c_adp_gln_L_h_pi]).
cnf(activR431, axiom, [r_R431, -c_akg_gln_L_h_nadph]).
cnf(combiakg_gln_L_h_nadph, axiom, [c_akg_gln_L_h_nadph, -m_akg, -m_gln_L, -m_h, -m_nadph]).
cnf(activR434, axiom, [r_R434, -c_ser_L_thf]).
cnf(combiser_L_thf, axiom, [c_ser_L_thf, -m_ser_L, -m_thf]).
cnf(prodR434, axiom, [c_gly_h2o_mlthf, -r_R434]).
cnf(decgly_h2o_mlthf3, axiom, [m_mlthf, -c_gly_h2o_mlthf]).
cnf(activR436, axiom, [r_R436, -c_3pg_nad]).
cnf(prodR436, axiom, [c_3php_h_nadh, -r_R436]).
cnf(dec3php_h_nadh1, axiom, [m_3php, -c_3php_h_nadh]).
cnf(dec3php_h_nadh2, axiom, [m_h, -c_3php_h_nadh]).
cnf(dec3php_h_nadh3, axiom, [m_nadh, -c_3php_h_nadh]).
cnf(decpi_ser_L2, axiom, [m_ser_L, -c_pi_ser_L]).
cnf(activR439, axiom, [r_R439, -m_ser_L]).
cnf(prodR439, axiom, [c_nh4_pyr, -r_R439]).
cnf(prodR440, axiom, [c_2aobut_h_nadh, -r_R440]).
cnf(dec2aobut_h_nadh2, axiom, [m_h, -c_2aobut_h_nadh]).
cnf(dec2aobut_h_nadh3, axiom, [m_nadh, -c_2aobut_h_nadh]).
cnf(decaccoa_co2_nadh3, axiom, [m_nadh, -c_accoa_co2_nadh]).
cnf(activR447a, axiom, [r_R447a, -c_g3p_nad_pi]).
cnf(prodR447a, axiom, [c_13dpg_h_nadh, -r_R447a]).
cnf(dec13dpg_h_nadh1, axiom, [m_13dpg, -c_13dpg_h_nadh]).
cnf(dec13dpg_h_nadh2, axiom, [m_h, -c_13dpg_h_nadh]).
cnf(dec13dpg_h_nadh3, axiom, [m_nadh, -c_13dpg_h_nadh]).
cnf(decadp_glycogen_h3, axiom, [m_h, -c_adp_glycogen_h]).
cnf(combiatp_g1p_h, axiom, [c_atp_g1p_h, -m_atp, -m_g1p, -m_h]).
cnf(decadp_g6p_h3, axiom, [m_h, -c_adp_g6p_h]).
cnf(decamp_h_pep_pi2, axiom, [m_h, -c_amp_h_pep_pi]).
cnf(activR457, axiom, [r_R457, -c_adp_h_pep]).
cnf(combiadp_h_pep, axiom, [c_adp_h_pep, -m_adp, -m_h, -m_pep]).
cnf(prodR457, axiom, [c_atp_pyr, -r_R457]).
cnf(combi2h3oppan_h_nadh, axiom, [c_2h3oppan_h_nadh, -m_2h3oppan, -m_h, -m_nadh]).
cnf(activR460, axiom, [r_R460, -c_glx_h]).
cnf(combiglx_h, axiom, [c_glx_h, -m_glx, -m_h]).
cnf(prodR460, axiom, [c_2h3oppan_co2, -r_R460]).
cnf(dec2h3oppan_co21, axiom, [m_2h3oppan, -c_2h3oppan_co2]).
cnf(dec3pg_adp_h3, axiom, [m_h, -c_3pg_adp_h]).
cnf(activR462, axiom, [r_R462, -c_glx_h_nadph]).
cnf(combiglx_h_nadph, axiom, [c_glx_h_nadph, -m_glx, -m_h, -m_nadph]).
cnf(prodR462, axiom, [c_glyclt_nadp, -r_R462]).
cnf(combiglx_h_nadh, axiom, [c_glx_h_nadh, -m_glx, -m_h, -m_nadh]).
cnf(prodR468, axiom, [c_h_his_L_nadh, -r_R468]).
cnf(dech_his_L_nadh1, axiom, [m_h, -c_h_his_L_nadh]).
cnf(dech_his_L_nadh2, axiom, [m_his_L, -c_h_his_L_nadh]).
cnf(dech_his_L_nadh3, axiom, [m_nadh, -c_h_his_L_nadh]).
cnf(decaicar_eig3p_glu_L_h4, axiom, [m_h, -c_aicar_eig3p_glu_L_h]).
cnf(dech_ppi_prbamp1, axiom, [m_h, -c_h_ppi_prbamp]).
cnf(activR473a, axiom, [r_R473a, -c_atp_r5p]).
cnf(combiatp_r5p, axiom, [c_atp_r5p, -m_atp, -m_r5p]).
cnf(prodR473a, axiom, [c_amp_h_prpp, -r_R473a]).
cnf(decamp_h_prpp2, axiom, [m_h, -c_amp_h_prpp]).
cnf(activR474a, axiom, [r_R474a, -c_accoa_atp_hco3]).
cnf(prodR474a, axiom, [c_adp_h_malcoa_pi, -r_R474a]).
cnf(decadp_h_malcoa_pi2, axiom, [m_h, -c_adp_h_malcoa_pi]).
cnf(decadp_h_malcoa_pi3, axiom, [m_malcoa, -c_adp_h_malcoa_pi]).
cnf(activR476, axiom, [r_R476, -c_cdpdag1_h2o]).
cnf(combicdpdag1_h2o, axiom, [c_cdpdag1_h2o, -m_cdpdag1, -m_h2o]).
cnf(prodR476, axiom, [c_cmp_h_pa_EC, -r_R476]).
cnf(deccmp_h_pa_EC1, axiom, [m_cmp, -c_cmp_h_pa_EC]).
cnf(deccmp_h_pa_EC2, axiom, [m_h, -c_cmp_h_pa_EC]).
cnf(deccmp_h_pa_EC3, axiom, [m_pa_EC, -c_cmp_h_pa_EC]).
cnf(activR477a, axiom, [r_R477a, -c_ctp_h_pa_EC]).
cnf(combictp_h_pa_EC, axiom, [c_ctp_h_pa_EC, -m_ctp, -m_h, -m_pa_EC]).
cnf(prodR477a, axiom, [c_cdpdag1_ppi, -r_R477a]).
cnf(deccdpdag1_ppi1, axiom, [m_cdpdag1, -c_cdpdag1_ppi]).
cnf(combiactACP_h_malACP_nadph, axiom, [c_actACP_h_malACP_nadph, -m_actACP, -m_h, -m_malACP, -m_nadph]).
cnf(activR480, axiom, [r_R480, -c_actACP_h_malACP_nadph]).
cnf(prodR480, axiom, [c_ACP_co2_ddcaACP_h2o_nadp, -r_R480]).
cnf(decACP_co2_ddcaACP_h2o_nadp3, axiom, [m_ddcaACP, -c_ACP_co2_ddcaACP_h2o_nadp]).
cnf(activR481, axiom, [r_R481, -c_h_malACP]).
cnf(combih_malACP, axiom, [c_h_malACP, -m_h, -m_malACP]).
cnf(activR482, axiom, [r_R482, -c_acACP_h_malACP]).
cnf(combiacACP_h_malACP, axiom, [c_acACP_h_malACP, -m_acACP, -m_h, -m_malACP]).
cnf(prodR482, axiom, [c_ACP_actACP_co2, -r_R482]).
cnf(decACP_actACP_co22, axiom, [m_actACP, -c_ACP_actACP_co2]).
cnf(deccoa_malACP2, axiom, [m_malACP, -c_coa_malACP]).
cnf(activR485, axiom, [r_R485, -c_ddcaACP_h_malACP_nadph]).
cnf(combiddcaACP_h_malACP_nadph, axiom, [c_ddcaACP_h_malACP_nadph, -m_ddcaACP, -m_h, -m_malACP, -m_nadph]).
cnf(activR486, axiom, [r_R486, -c_actACP_h_malACP_nadph]).
cnf(combiaccoa_h_malACP, axiom, [c_accoa_h_malACP, -m_accoa, -m_h, -m_malACP]).
cnf(activR490, axiom, [r_R490, -c_actACP_h_malACP_nadph]).
cnf(decaccoa_amp_fadh2_h_nadh_ppi4, axiom, [m_h, -c_accoa_amp_fadh2_h_nadh_ppi]).
cnf(decaccoa_amp_fadh2_h_nadh_ppi5, axiom, [m_nadh, -c_accoa_amp_fadh2_h_nadh_ppi]).
cnf(deccmp_h_pgp_EC1, axiom, [m_cmp, -c_cmp_h_pgp_EC]).
cnf(deccmp_h_pgp_EC2, axiom, [m_h, -c_cmp_h_pgp_EC]).
cnf(decACP_pa_EC2, axiom, [m_pa_EC, -c_ACP_pa_EC]).
cnf(combih_ps_EC, axiom, [c_h_ps_EC, -m_h, -m_ps_EC]).
cnf(activR498a, axiom, [r_R498a, -c_cdpdag1_ser_L]).
cnf(combicdpdag1_ser_L, axiom, [c_cdpdag1_ser_L, -m_cdpdag1, -m_ser_L]).
cnf(prodR498a, axiom, [c_cmp_h_ps_EC, -r_R498a]).
cnf(deccmp_h_ps_EC1, axiom, [m_cmp, -c_cmp_h_ps_EC]).
cnf(deccmp_h_ps_EC2, axiom, [m_h, -c_cmp_h_ps_EC]).
cnf(deccmp_h_ps_EC3, axiom, [m_ps_EC, -c_cmp_h_ps_EC]).
cnf(deccyst_L_h_succ2, axiom, [m_h, -c_cyst_L_h_succ]).
cnf(decmet_L_thf2, axiom, [m_thf, -c_met_L_thf]).
cnf(decgthrd_h_lac_D2, axiom, [m_h, -c_gthrd_h_lac_D]).
cnf(combih_h2o_urdglyc, axiom, [c_h_h2o_urdglyc, -m_h, -m_h2o, -m_urdglyc]).
cnf(decco2_glx_nh42, axiom, [m_glx, -c_co2_glx_nh4]).
cnf(decalltt_h2, axiom, [m_h, -c_alltt_h]).
cnf(decurdglyc_urea1, axiom, [m_urdglyc, -c_urdglyc_urea]).
cnf(combicynt_h_hco3, axiom, [c_cynt_h_hco3, -m_cynt, -m_h, -m_hco3]).
cnf(activR515, axiom, [r_R515, -c_cmp_h2o]).
cnf(combicmp_h2o, axiom, [c_cmp_h2o, -m_cmp, -m_h2o]).
cnf(prodR515, axiom, [c_csn_r5p, -r_R515]).
cnf(deccsn_r5p1, axiom, [m_csn, -c_csn_r5p]).
cnf(deccsn_r5p2, axiom, [m_r5p, -c_csn_r5p]).
cnf(activR516, axiom, [r_R516, -c_adn_h_h2o]).
cnf(combiadn_h_h2o, axiom, [c_adn_h_h2o, -m_adn, -m_h, -m_h2o]).
cnf(activR517, axiom, [r_R517, -c_dad_2_h_h2o]).
cnf(combidad_2_h_h2o, axiom, [c_dad_2_h_h2o, -m_dad_2, -m_h, -m_h2o]).
cnf(decadp_amp_h3, axiom, [m_h, -c_adp_amp_h]).
cnf(decade_r5p2, axiom, [m_r5p, -c_ade_r5p]).
cnf(decadp_h2, axiom, [m_h, -c_adp_h]).
cnf(decgdp_h2, axiom, [m_h, -c_gdp_h]).
cnf(decadp_atp_h3, axiom, [m_h, -c_adp_atp_h]).
cnf(combicytd_h_h2o, axiom, [c_cytd_h_h2o, -m_cytd, -m_h, -m_h2o]).
cnf(combidcyt_h_h2o, axiom, [c_dcyt_h_h2o, -m_dcyt, -m_h, -m_h2o]).
cnf(combiatp_cmp, axiom, [c_atp_cmp, -m_atp, -m_cmp]).
cnf(combicsn_h_h2o, axiom, [c_csn_h_h2o, -m_csn, -m_h, -m_h2o]).
cnf(combidctp_h_h2o, axiom, [c_dctp_h_h2o, -m_dctp, -m_h, -m_h2o]).
cnf(activR540, axiom, [r_R540, -c_dutp_h2o]).
cnf(prodR540, axiom, [c_dump_h_ppi, -r_R540]).
cnf(decdump_h_ppi1, axiom, [m_dump, -c_dump_h_ppi]).
cnf(decdump_h_ppi2, axiom, [m_h, -c_dump_h_ppi]).
cnf(decadp_h_imp2, axiom, [m_h, -c_adp_h_imp]).
cnf(decadp_gmp_h3, axiom, [m_h, -c_adp_gmp_h]).
cnf(decdcmp_h_ppi2, axiom, [m_h, -c_dcmp_h_ppi]).
cnf(prodR549, axiom, [c_cmp_h_ppi, -r_R549]).
cnf(deccmp_h_ppi1, axiom, [m_cmp, -c_cmp_h_ppi]).
cnf(deccmp_h_ppi2, axiom, [m_h, -c_cmp_h_ppi]).
cnf(decdamp_h_ppi2, axiom, [m_h, -c_damp_h_ppi]).
cnf(decamp_h_ppi2, axiom, [m_h, -c_amp_h_ppi]).
cnf(decdtmp_h_ppi2, axiom, [m_h, -c_dtmp_h_ppi]).
cnf(dech_ppi_ump1, axiom, [m_h, -c_h_ppi_ump]).
cnf(decdgmp_h_ppi2, axiom, [m_h, -c_dgmp_h_ppi]).
cnf(decgmp_h_ppi2, axiom, [m_h, -c_gmp_h_ppi]).
cnf(decdgdp_h2o_trdox3, axiom, [m_trdox, -c_dgdp_h2o_trdox]).
cnf(decdudp_h2o_trdox3, axiom, [m_trdox, -c_dudp_h2o_trdox]).
cnf(decdgtp_h2o_trdox3, axiom, [m_trdox, -c_dgtp_h2o_trdox]).
cnf(combiatp_dump, axiom, [c_atp_dump, -m_atp, -m_dump]).
cnf(activR573, axiom, [r_R573, -c_atp_duri]).
cnf(prodR573, axiom, [c_adp_dump_h, -r_R573]).
cnf(decadp_dump_h2, axiom, [m_dump, -c_adp_dump_h]).
cnf(decadp_dump_h3, axiom, [m_h, -c_adp_dump_h]).
cnf(decadp_dtmp_h3, axiom, [m_h, -c_adp_dtmp_h]).
cnf(activR575, axiom, [r_R575, -c_dump_mlthf]).
cnf(combidump_mlthf, axiom, [c_dump_mlthf, -m_dump, -m_mlthf]).
cnf(prodR575, axiom, [c_dhf_dtmp, -r_R575]).
cnf(decdhf_dtmp1, axiom, [m_dhf, -c_dhf_dtmp]).
cnf(decgdp_h_ump2, axiom, [m_h, -c_gdp_h_ump]).
cnf(deccmp_gdp_h1, axiom, [m_cmp, -c_cmp_gdp_h]).
cnf(deccmp_gdp_h3, axiom, [m_h, -c_cmp_gdp_h]).
cnf(activR581, axiom, [r_R581, -c_dump_h2o]).
cnf(combidump_h2o, axiom, [c_dump_h2o, -m_dump, -m_h2o]).
cnf(activR586, axiom, [r_R586, -c_cmp_h2o]).
cnf(prodR586, axiom, [c_cytd_pi, -r_R586]).
cnf(deccytd_pi1, axiom, [m_cytd, -c_cytd_pi]).
cnf(combigua_h_h2o, axiom, [c_gua_h_h2o, -m_gua, -m_h, -m_h2o]).
cnf(activR600, axiom, [r_R600, -c_ade_h_h2o]).
cnf(combiade_h_h2o, axiom, [c_ade_h_h2o, -m_ade, -m_h, -m_h2o]).
cnf(activR625, axiom, [r_R625, -c_h_nadh_q8]).
cnf(combih_nadh_q8, axiom, [c_h_nadh_q8, -m_h, -m_nadh, -m_q8]).
cnf(activR626, axiom, [r_R626, -c_2dmmq8_h_nadh]).
cnf(combi2dmmq8_h_nadh, axiom, [c_2dmmq8_h_nadh, -m_2dmmq8, -m_h, -m_nadh]).
cnf(activR627, axiom, [r_R627, -c_h_mqn8_nadh]).
cnf(combih_mqn8_nadh, axiom, [c_h_mqn8_nadh, -m_h, -m_mqn8, -m_nadh]).
cnf(activR628, axiom, [r_R628, -c_h_nadh_no2]).
cnf(combih_nadh_no2, axiom, [c_h_nadh_no2, -m_h, -m_nadh, -m_no2]).
cnf(decnadh_nadp1, axiom, [m_nadh, -c_nadh_nadp]).
cnf(combih_nadph_trdox, axiom, [c_h_nadph_trdox, -m_h, -m_nadph, -m_trdox]).
cnf(activR637, axiom, [r_R637, -c_6pgl_h2o]).
cnf(combi6pgl_h2o, axiom, [c_6pgl_h2o, -m_6pgl, -m_h2o]).
cnf(prodR637, axiom, [c_6pgc_h, -r_R637]).
cnf(dec6pgc_h2, axiom, [m_h, -c_6pgc_h]).
cnf(prodR640, axiom, [c_co2_nadph_ru5p_D, -r_R640]).
cnf(decco2_nadph_ru5p_D2, axiom, [m_nadph, -c_co2_nadph_ru5p_D]).
cnf(decco2_nadph_ru5p_D3, axiom, [m_ru5p_D, -c_co2_nadph_ru5p_D]).
cnf(activR641a, axiom, [r_R641a, -m_ru5p_D]).
cnf(prodR641a, axiom, [m_xu5p_D, -r_R641a]).
cnf(activR642a, axiom, [r_R642a, -m_r5p]).
cnf(prodR642a, axiom, [m_ru5p_D, -r_R642a]).
cnf(activR644a, axiom, [r_R644a, -c_r5p_xu5p_D]).
cnf(combir5p_xu5p_D, axiom, [c_r5p_xu5p_D, -m_r5p, -m_xu5p_D]).
cnf(combie4p_xu5p_D, axiom, [c_e4p_xu5p_D, -m_e4p, -m_xu5p_D]).
cnf(prodR646a, axiom, [c_6pgl_h_nadph, -r_R646a]).
cnf(dec6pgl_h_nadph1, axiom, [m_6pgl, -c_6pgl_h_nadph]).
cnf(dec6pgl_h_nadph2, axiom, [m_h, -c_6pgl_h_nadph]).
cnf(dec6pgl_h_nadph3, axiom, [m_nadph, -c_6pgl_h_nadph]).
cnf(decamp_glu_L_gmp_h_ppi4, axiom, [m_h, -c_amp_glu_L_gmp_h_ppi]).
cnf(prodR648, axiom, [c_h_nadh_xmp, -r_R648]).
cnf(dech_nadh_xmp1, axiom, [m_h, -c_h_nadh_xmp]).
cnf(dech_nadh_xmp2, axiom, [m_nadh, -c_h_nadh_xmp]).
cnf(activR649, axiom, [r_R649, -c_gmp_h_nadph]).
cnf(combigmp_h_nadph, axiom, [c_gmp_h_nadph, -m_gmp, -m_h, -m_nadph]).
cnf(decdcamp_gdp_h_pi3, axiom, [m_h, -c_dcamp_gdp_h_pi]).
cnf(activR651a, axiom, [r_R651a, -m_25aics]).
cnf(activR653a, axiom, [r_R653a, -c_5aizc_asp_L_atp]).
cnf(prodR653a, axiom, [c_25aics_adp_h_pi, -r_R653a]).
cnf(dec25aics_adp_h_pi1, axiom, [m_25aics, -c_25aics_adp_h_pi]).
cnf(dec25aics_adp_h_pi3, axiom, [m_h, -c_25aics_adp_h_pi]).
cnf(decadp_gar_h_pi3, axiom, [m_h, -c_adp_gar_h_pi]).
cnf(activR659, axiom, [r_R659, -c_air_atp_hco3]).
cnf(combiair_atp_hco3, axiom, [c_air_atp_hco3, -m_air, -m_atp, -m_hco3]).
cnf(prodR659, axiom, [c_5caiz_adp_h_pi, -r_R659]).
cnf(dec5caiz_adp_h_pi3, axiom, [m_h, -c_5caiz_adp_h_pi]).
cnf(decadp_fpram_glu_L_h_pi4, axiom, [m_h, -c_adp_fpram_glu_L_h_pi]).
cnf(decadp_air_h_pi3, axiom, [m_h, -c_adp_air_h_pi]).
cnf(prodR662a, axiom, [c_fgam_h_thf, -r_R662a]).
cnf(decfgam_h_thf1, axiom, [m_fgam, -c_fgam_h_thf]).
cnf(decfgam_h_thf2, axiom, [m_h, -c_fgam_h_thf]).
cnf(decfgam_h_thf3, axiom, [m_thf, -c_fgam_h_thf]).
cnf(decadp_fgam_h_pi3, axiom, [m_h, -c_adp_fgam_h_pi]).
cnf(deccbasp_h_pi1, axiom, [m_cbasp, -c_cbasp_h_pi]).
cnf(deccbasp_h_pi2, axiom, [m_h, -c_cbasp_h_pi]).
cnf(deccbasp_h1, axiom, [m_cbasp, -c_cbasp_h]).
cnf(deccbasp_h2, axiom, [m_h, -c_cbasp_h]).
cnf(combih_orot5p, axiom, [c_h_orot5p, -m_h, -m_orot5p]).
cnf(decadp_ctp_glu_L_h_pi4, axiom, [m_h, -c_adp_ctp_glu_L_h_pi]).
cnf(activR671, axiom, [r_R671, -c_atp_co2_nh4]).
cnf(prodR671, axiom, [c_adp_cbp_h, -r_R671]).
cnf(decadp_cbp_h2, axiom, [m_cbp, -c_adp_cbp_h]).
cnf(decadp_cbp_h3, axiom, [m_h, -c_adp_cbp_h]).
cnf(activR672, axiom, [r_R672, -m_acmanap]).
cnf(activR673, axiom, [r_R673, -c_acmana_atp]).
cnf(combiacmana_atp, axiom, [c_acmana_atp, -m_acmana, -m_atp]).
cnf(prodR673, axiom, [c_acmanap_adp_h, -r_R673]).
cnf(decacmanap_adp_h1, axiom, [m_acmanap, -c_acmanap_adp_h]).
cnf(decacmanap_adp_h3, axiom, [m_h, -c_acmanap_adp_h]).
cnf(activR676a, axiom, [r_R676a, -c_accoa_h_nadh]).
cnf(combiaccoa_h_nadh, axiom, [c_accoa_h_nadh, -m_accoa, -m_h, -m_nadh]).
cnf(prodR677a, axiom, [c_h_nadh_pyr, -r_R677a]).
cnf(dech_nadh_pyr1, axiom, [m_h, -c_h_nadh_pyr]).
cnf(dech_nadh_pyr2, axiom, [m_nadh, -c_h_nadh_pyr]).
cnf(activR678, axiom, [r_R678, -c_for_h]).
cnf(combifor_h, axiom, [c_for_h, -m_for, -m_h]).
cnf(prodR678, axiom, [c_co2_h2, -r_R678]).
cnf(decco2_h22, axiom, [m_h2, -c_co2_h2]).
cnf(prodR682a, axiom, [c_4pasp_h_nadph, -r_R682a]).
cnf(dec4pasp_h_nadph1, axiom, [m_4pasp, -c_4pasp_h_nadph]).
cnf(dec4pasp_h_nadph2, axiom, [m_h, -c_4pasp_h_nadph]).
cnf(dec4pasp_h_nadph3, axiom, [m_nadph, -c_4pasp_h_nadph]).
cnf(activR683, axiom, [r_R683, -c_aspsa_pyr]).
cnf(combiaspsa_pyr, axiom, [c_aspsa_pyr, -m_aspsa, -m_pyr]).
cnf(prodR683, axiom, [c_23dhdp_h_h2o, -r_R683]).
cnf(dec23dhdp_h_h2o1, axiom, [m_23dhdp, -c_23dhdp_h_h2o]).
cnf(dec23dhdp_h_h2o2, axiom, [m_h, -c_23dhdp_h_h2o]).
cnf(activR684, axiom, [r_R684, -c_23dhdp_h_nadph]).
cnf(combi23dhdp_h_nadph, axiom, [c_23dhdp_h_nadph, -m_23dhdp, -m_h, -m_nadph]).
cnf(activR687a, axiom, [r_R687a, -m_26dap_LL]).
cnf(prodR687a, axiom, [m_26dap_M, -r_R687a]).
cnf(activR688, axiom, [r_R688, -c_h_lys_L]).
cnf(combih_lys_L, axiom, [c_h_lys_L, -m_h, -m_lys_L]).
cnf(prodR688, axiom, [c_15dap_co2, -r_R688]).
cnf(dec15dap_co21, axiom, [m_15dap, -c_15dap_co2]).
cnf(activR690, axiom, [r_R690, -c_26dap_M_h]).
cnf(combi26dap_M_h, axiom, [c_26dap_M_h, -m_26dap_M, -m_h]).
cnf(prodR690, axiom, [c_co2_lys_L, -r_R690]).
cnf(decco2_lys_L2, axiom, [m_lys_L, -c_co2_lys_L]).
cnf(prodR691a, axiom, [c_aspsa_h_nadph, -r_R691a]).
cnf(decaspsa_h_nadph1, axiom, [m_aspsa, -c_aspsa_h_nadph]).
cnf(decaspsa_h_nadph2, axiom, [m_h, -c_aspsa_h_nadph]).
cnf(decaspsa_h_nadph3, axiom, [m_nadph, -c_aspsa_h_nadph]).
cnf(decadp_h_phom2, axiom, [m_h, -c_adp_h_phom]).
cnf(dec3dhq_pi1, axiom, [m_3dhq, -c_3dhq_pi]).
cnf(activR697a, axiom, [r_R697a, -m_3dhq]).
cnf(prodR697a, axiom, [c_3dhsk_h2o, -r_R697a]).
cnf(dec3dhsk_h2o1, axiom, [m_3dhsk, -c_3dhsk_h2o]).
cnf(activR698a, axiom, [r_R698a, -c_3dhsk_h_nadph]).
cnf(combi3dhsk_h_nadph, axiom, [c_3dhsk_h_nadph, -m_3dhsk, -m_h, -m_nadph]).
cnf(decadp_h_skm5p2, axiom, [m_h, -c_adp_h_skm5p]).
cnf(activR701, axiom, [r_R701, -c_h_pphn]).
cnf(combih_pphn, axiom, [c_h_pphn, -m_h, -m_pphn]).
cnf(combiindole_ser_L, axiom, [c_indole_ser_L, -m_indole, -m_ser_L]).
cnf(activR705, axiom, [r_R705, -m_3ig3p]).
cnf(prodR705, axiom, [c_g3p_indole, -r_R705]).
cnf(decg3p_indole2, axiom, [m_indole, -c_g3p_indole]).
cnf(combi3ig3p_ser_L, axiom, [c_3ig3p_ser_L, -m_3ig3p, -m_ser_L]).
cnf(activR708, axiom, [r_R708, -c_2cpr5p_h]).
cnf(combi2cpr5p_h, axiom, [c_2cpr5p_h, -m_2cpr5p, -m_h]).
cnf(prodR708, axiom, [c_3ig3p_co2_h2o, -r_R708]).
cnf(dec3ig3p_co2_h2o1, axiom, [m_3ig3p, -c_3ig3p_co2_h2o]).
cnf(decanth_glu_L_h_pyr3, axiom, [m_h, -c_anth_glu_L_h_pyr]).
cnf(dec34hpp_co2_nadh3, axiom, [m_nadh, -c_34hpp_co2_nadh]).
cnf(decadp_h_pi2, axiom, [m_h, -c_adp_h_pi]).
cnf(prodR715, axiom, [c_glyb_h_nadh, -r_R715]).
cnf(decglyb_h_nadh1, axiom, [m_glyb, -c_glyb_h_nadh]).
cnf(decglyb_h_nadh2, axiom, [m_h, -c_glyb_h_nadh]).
cnf(decglyb_h_nadh3, axiom, [m_nadh, -c_glyb_h_nadh]).
cnf(prodR716, axiom, [c_glyb_h_nadph, -r_R716]).
cnf(decglyb_h_nadph1, axiom, [m_glyb, -c_glyb_h_nadph]).
cnf(decglyb_h_nadph2, axiom, [m_h, -c_glyb_h_nadph]).
cnf(decglyb_h_nadph3, axiom, [m_nadph, -c_glyb_h_nadph]).
cnf(activR717a, axiom, [r_R717a, -c_co2_h2o]).
cnf(prodR717a, axiom, [c_h_hco3, -r_R717a]).
cnf(dech_hco31, axiom, [m_h, -c_h_hco3]).
cnf(dech_hco32, axiom, [m_hco3, -c_h_hco3]).
cnf(activR718, axiom, [r_R718, -c_cyan_tsul]).
cnf(combicyan_tsul, axiom, [c_cyan_tsul, -m_cyan, -m_tsul]).
cnf(prodR718, axiom, [c_h_so3_tcynt, -r_R718]).
cnf(dech_so3_tcynt1, axiom, [m_h, -c_h_so3_tcynt]).
cnf(dech_so3_tcynt2, axiom, [m_so3, -c_h_so3_tcynt]).
cnf(dech_so3_tcynt3, axiom, [m_tcynt, -c_h_so3_tcynt]).
cnf(activR721, axiom, [r_R721, -c_h_o2_]).
cnf(combih_o2_, axiom, [c_h_o2_, -m_h, -m_o2_]).
cnf(activR724, axiom, [r_R724, -c_2obut_h_pyr]).
cnf(combi2obut_h_pyr, axiom, [c_2obut_h_pyr, -m_2obut, -m_h, -m_pyr]).
cnf(prodR724, axiom, [c_2ahbut_co2, -r_R724]).
cnf(dec2ahbut_co21, axiom, [m_2ahbut, -c_2ahbut_co2]).
cnf(activR725, axiom, [r_R725, -c_h_pyr]).
cnf(combih_pyr, axiom, [c_h_pyr, -m_h, -m_pyr]).
cnf(prodR725, axiom, [c_alac_S_co2, -r_R725]).
cnf(decalac_S_co21, axiom, [m_alac_S, -c_alac_S_co2]).
cnf(combi2ahbut_h_nadph, axiom, [c_2ahbut_h_nadph, -m_2ahbut, -m_h, -m_nadph]).
cnf(activR727, axiom, [r_R727, -c_alac_S_h_nadph]).
cnf(combialac_S_h_nadph, axiom, [c_alac_S_h_nadph, -m_alac_S, -m_h, -m_nadph]).
cnf(dec3c3hmp_coa_h3, axiom, [m_h, -c_3c3hmp_coa_h]).
cnf(prodR734, axiom, [c_3c4mop_h_nadh, -r_R734]).
cnf(dec3c4mop_h_nadh1, axiom, [m_3c4mop, -c_3c4mop_h_nadh]).
cnf(dec3c4mop_h_nadh2, axiom, [m_h, -c_3c4mop_h_nadh]).
cnf(dec3c4mop_h_nadh3, axiom, [m_nadh, -c_3c4mop_h_nadh]).
cnf(combi3c4mop_h, axiom, [c_3c4mop_h, -m_3c4mop, -m_h]).
cnf(activR11b, axiom, [r_R11b, -m_ara5p]).
cnf(prodR11b, axiom, [m_ru5p_D, -r_R11b]).
cnf(activR12b, axiom, [r_R12b, -m_mmcoa_S]).
cnf(prodR12b, axiom, [m_mmcoa_R, -r_R12b]).
cnf(prodR14b, axiom, [c_glyald_h_nadh, -r_R14b]).
cnf(decglyald_h_nadh1, axiom, [m_glyald, -c_glyald_h_nadh]).
cnf(decglyald_h_nadh2, axiom, [m_h, -c_glyald_h_nadh]).
cnf(decglyald_h_nadh3, axiom, [m_nadh, -c_glyald_h_nadh]).
cnf(activR16b, axiom, [r_R16b, -c_h_lac_L_nadh]).
cnf(combih_lac_L_nadh, axiom, [c_h_lac_L_nadh, -m_h, -m_lac_L, -m_nadh]).
cnf(activR18b, axiom, [r_R18b, -m_rbl_L]).
cnf(prodR18b, axiom, [m_arab_L, -r_R18b]).
cnf(activR20b, axiom, [r_R20b, -m_xu5p_D]).
cnf(prodR20b, axiom, [m_ru5p_L, -r_R20b]).
cnf(activR26b, axiom, [r_R26b, -m_r5p]).
cnf(prodR38b, axiom, [c_h_lald_L_nadh, -r_R38b]).
cnf(dech_lald_L_nadh1, axiom, [m_h, -c_h_lald_L_nadh]).
cnf(dech_lald_L_nadh2, axiom, [m_lald_L, -c_h_lald_L_nadh]).
cnf(dech_lald_L_nadh3, axiom, [m_nadh, -c_h_lald_L_nadh]).
cnf(activR40b, axiom, [r_R40b, -c_adp_gal1p_h]).
cnf(combiadp_gal1p_h, axiom, [c_adp_gal1p_h, -m_adp, -m_gal1p, -m_h]).
cnf(prodR40b, axiom, [c_atp_gal, -r_R40b]).
cnf(decatp_gal2, axiom, [m_gal, -c_atp_gal]).
cnf(decg1p_h_utp2, axiom, [m_h, -c_g1p_h_utp]).
cnf(activR44b, axiom, [r_R44b, -c_h_nadh_tag6p_D]).
cnf(combih_nadh_tag6p_D, axiom, [c_h_nadh_tag6p_D, -m_h, -m_nadh, -m_tag6p_D]).
cnf(combidhap_h_nadph, axiom, [c_dhap_h_nadph, -m_dhap, -m_h, -m_nadph]).
cnf(activR57b, axiom, [r_R57b, -m_2h3oppan]).
cnf(prodR57b, axiom, [m_hpyr, -r_R57b]).
cnf(prodR58b, axiom, [c_5dglcn_h_nadh, -r_R58b]).
cnf(dec5dglcn_h_nadh1, axiom, [m_5dglcn, -c_5dglcn_h_nadh]).
cnf(dec5dglcn_h_nadh2, axiom, [m_h, -c_5dglcn_h_nadh]).
cnf(dec5dglcn_h_nadh3, axiom, [m_nadh, -c_5dglcn_h_nadh]).
cnf(prodR61b, axiom, [c_5dglcn_h_nadph, -r_R61b]).
cnf(dec5dglcn_h_nadph1, axiom, [m_5dglcn, -c_5dglcn_h_nadph]).
cnf(dec5dglcn_h_nadph2, axiom, [m_h, -c_5dglcn_h_nadph]).
cnf(dec5dglcn_h_nadph3, axiom, [m_nadph, -c_5dglcn_h_nadph]).
cnf(combif6p_h_nadh, axiom, [c_f6p_h_nadh, -m_f6p, -m_h, -m_nadh]).
cnf(activR117b, axiom, [r_R117b, -c_h_nadh_tagur]).
cnf(combih_nadh_tagur, axiom, [c_h_nadh_tagur, -m_h, -m_nadh, -m_tagur]).
cnf(activR118b, axiom, [r_R118b, -m_fruur]).
cnf(prodR118b, axiom, [m_glcur, -r_R118b]).
cnf(activR119b, axiom, [r_R119b, -m_tagur]).
cnf(prodR119b, axiom, [m_galur, -r_R119b]).
cnf(activR121b, axiom, [r_R121b, -c_fruur_h_nadh]).
cnf(combifruur_h_nadh, axiom, [c_fruur_h_nadh, -m_fruur, -m_h, -m_nadh]).
cnf(activR123b, axiom, [r_R123b, -m_xylu_D]).
cnf(prodR123b, axiom, [m_xyl_D, -r_R123b]).
cnf(activR157b, axiom, [r_R157b, -c_acg5p_h_nadph]).
cnf(combiacg5p_h_nadph, axiom, [c_acg5p_h_nadph, -m_acg5p, -m_h, -m_nadph]).
cnf(activR163b, axiom, [r_R163b, -c_citr_L_h_pi]).
cnf(combicitr_L_h_pi, axiom, [c_citr_L_h_pi, -m_citr_L, -m_h, -m_pi]).
cnf(prodR163b, axiom, [c_cbp_orn, -r_R163b]).
cnf(deccbp_orn1, axiom, [m_cbp, -c_cbp_orn]).
cnf(deccbp_orn2, axiom, [m_orn, -c_cbp_orn]).
cnf(decamet_h2, axiom, [m_h, -c_amet_h]).
cnf(activR191b, axiom, [r_R191b, -c_12dgr_EC_cdpea]).
cnf(combi12dgr_EC_cdpea, axiom, [c_12dgr_EC_cdpea, -m_12dgr_EC, -m_cdpea]).
cnf(prodR191b, axiom, [c_cmp_h_pe_EC, -r_R191b]).
cnf(deccmp_h_pe_EC1, axiom, [m_cmp, -c_cmp_h_pe_EC]).
cnf(deccmp_h_pe_EC2, axiom, [m_h, -c_cmp_h_pe_EC]).
cnf(deccmp_h_pe_EC3, axiom, [m_pe_EC, -c_cmp_h_pe_EC]).
cnf(activR199b, axiom, [r_R199b, -c_adp_alaala_h_pi]).
cnf(combiadp_alaala_h_pi, axiom, [c_adp_alaala_h_pi, -m_adp, -m_alaala, -m_h, -m_pi]).
cnf(activR275b, axiom, [r_R275b, -c_h_nadh_oaa]).
cnf(combih_nadh_oaa, axiom, [c_h_nadh_oaa, -m_h, -m_nadh, -m_oaa]).
cnf(prodR275b, axiom, [c_mal_L_nad, -r_R275b]).
cnf(activR291b, axiom, [r_R291b, -c_adp_h_thmmp]).
cnf(combiadp_h_thmmp, axiom, [c_adp_h_thmmp, -m_adp, -m_h, -m_thmmp]).
cnf(prodR291b, axiom, [c_atp_thm, -r_R291b]).
cnf(decatp_thm2, axiom, [m_thm, -c_atp_thm]).
cnf(activR295b, axiom, [r_R295b, -c_ala_L_btn_h]).
cnf(combiala_L_btn_h, axiom, [c_ala_L_btn_h, -m_ala_L, -m_btn, -m_h]).
cnf(prodR295b, axiom, [c_cys_L_dtbt, -r_R295b]).
cnf(deccys_L_dtbt2, axiom, [m_dtbt, -c_cys_L_dtbt]).
cnf(activR296b, axiom, [r_R296b, -c_adp_dtbt_h_pi]).
cnf(combiadp_dtbt_h_pi, axiom, [c_adp_dtbt_h_pi, -m_adp, -m_dtbt, -m_h, -m_pi]).
cnf(decala_L_h_pmcoa2, axiom, [m_h, -c_ala_L_h_pmcoa]).
cnf(decala_L_h_pmcoa3, axiom, [m_pmcoa, -c_ala_L_h_pmcoa]).
cnf(activR313b, axiom, [r_R313b, -c_23dhb_h_nadh]).
cnf(combi23dhb_h_nadh, axiom, [c_23dhb_h_nadh, -m_23dhb, -m_h, -m_nadh]).
cnf(prodR317b, axiom, [c_atp_h_ser_L, -r_R317b]).
cnf(decatp_h_ser_L2, axiom, [m_h, -c_atp_h_ser_L]).
cnf(decatp_h_ser_L3, axiom, [m_ser_L, -c_atp_h_ser_L]).
cnf(activR318b, axiom, [r_R318b, -c_4per_h_nadh]).
cnf(combi4per_h_nadh, axiom, [c_4per_h_nadh, -m_4per, -m_h, -m_nadh]).
cnf(prodR319b, axiom, [c_dhf_h_nadph, -r_R319b]).
cnf(decdhf_h_nadph1, axiom, [m_dhf, -c_dhf_h_nadph]).
cnf(decdhf_h_nadph2, axiom, [m_h, -c_dhf_h_nadph]).
cnf(decdhf_h_nadph3, axiom, [m_nadph, -c_dhf_h_nadph]).
cnf(prodR329b, axiom, [c_gthox_h_nadph, -r_R329b]).
cnf(decgthox_h_nadph1, axiom, [m_gthox, -c_gthox_h_nadph]).
cnf(decgthox_h_nadph2, axiom, [m_h, -c_gthox_h_nadph]).
cnf(decgthox_h_nadph3, axiom, [m_nadph, -c_gthox_h_nadph]).
cnf(activR376b, axiom, [r_R376b, -c_h_nadh_ohpb]).
cnf(combih_nadh_ohpb, axiom, [c_h_nadh_ohpb, -m_h, -m_nadh, -m_ohpb]).
cnf(decaccoa_ser_L2, axiom, [m_ser_L, -c_accoa_ser_L]).
cnf(activR419b, axiom, [r_R419b, -c_h_nadph_so3]).
cnf(combih_nadph_so3, axiom, [c_h_nadph_so3, -m_h, -m_nadph, -m_so3]).
cnf(activR424b, axiom, [r_R424b, -c_h_methf_nadph]).
cnf(combih_methf_nadph, axiom, [c_h_methf_nadph, -m_h, -m_methf, -m_nadph]).
cnf(prodR424b, axiom, [c_mlthf_nadp, -r_R424b]).
cnf(decmlthf_nadp1, axiom, [m_mlthf, -c_mlthf_nadp]).
cnf(combiakg_h_nadph_nh4, axiom, [c_akg_h_nadph_nh4, -m_akg, -m_h, -m_nadph, -m_nh4]).
cnf(activR447b, axiom, [r_R447b, -c_13dpg_h_nadh]).
cnf(combi13dpg_h_nadh, axiom, [c_13dpg_h_nadh, -m_13dpg, -m_h, -m_nadh]).
cnf(prodR447b, axiom, [c_g3p_nad_pi, -r_R447b]).
cnf(activR473b, axiom, [r_R473b, -c_amp_h_prpp]).
cnf(combiamp_h_prpp, axiom, [c_amp_h_prpp, -m_amp, -m_h, -m_prpp]).
cnf(prodR473b, axiom, [c_atp_r5p, -r_R473b]).
cnf(decatp_r5p2, axiom, [m_r5p, -c_atp_r5p]).
cnf(activR474b, axiom, [r_R474b, -c_adp_h_malcoa_pi]).
cnf(combiadp_h_malcoa_pi, axiom, [c_adp_h_malcoa_pi, -m_adp, -m_h, -m_malcoa, -m_pi]).
cnf(prodR474b, axiom, [c_accoa_atp_hco3, -r_R474b]).
cnf(decaccoa_atp_hco33, axiom, [m_hco3, -c_accoa_atp_hco3]).
cnf(activR477b, axiom, [r_R477b, -c_cdpdag1_ppi]).
cnf(prodR477b, axiom, [c_ctp_h_pa_EC, -r_R477b]).
cnf(decctp_h_pa_EC1, axiom, [m_ctp, -c_ctp_h_pa_EC]).
cnf(decctp_h_pa_EC2, axiom, [m_h, -c_ctp_h_pa_EC]).
cnf(decctp_h_pa_EC3, axiom, [m_pa_EC, -c_ctp_h_pa_EC]).
cnf(combicmp_h_pgp_EC, axiom, [c_cmp_h_pgp_EC, -m_cmp, -m_h, -m_pgp_EC]).
cnf(activR498b, axiom, [r_R498b, -c_cmp_h_ps_EC]).
cnf(combicmp_h_ps_EC, axiom, [c_cmp_h_ps_EC, -m_cmp, -m_h, -m_ps_EC]).
cnf(prodR498b, axiom, [c_cdpdag1_ser_L, -r_R498b]).
cnf(deccdpdag1_ser_L1, axiom, [m_cdpdag1, -c_cdpdag1_ser_L]).
cnf(deccdpdag1_ser_L2, axiom, [m_ser_L, -c_cdpdag1_ser_L]).
cnf(decatp_cmp2, axiom, [m_cmp, -c_atp_cmp]).
cnf(decatp_dump2, axiom, [m_dump, -c_atp_dump]).
cnf(activR641b, axiom, [r_R641b, -m_xu5p_D]).
cnf(prodR641b, axiom, [m_ru5p_D, -r_R641b]).
cnf(activR642b, axiom, [r_R642b, -m_ru5p_D]).
cnf(prodR642b, axiom, [m_r5p, -r_R642b]).
cnf(prodR644b, axiom, [c_r5p_xu5p_D, -r_R644b]).
cnf(decr5p_xu5p_D1, axiom, [m_r5p, -c_r5p_xu5p_D]).
cnf(decr5p_xu5p_D2, axiom, [m_xu5p_D, -c_r5p_xu5p_D]).
cnf(dece4p_xu5p_D2, axiom, [m_xu5p_D, -c_e4p_xu5p_D]).
cnf(activR646b, axiom, [r_R646b, -c_6pgl_h_nadph]).
cnf(combi6pgl_h_nadph, axiom, [c_6pgl_h_nadph, -m_6pgl, -m_h, -m_nadph]).
cnf(prodR651b, axiom, [m_25aics, -r_R651b]).
cnf(activR653b, axiom, [r_R653b, -c_25aics_adp_h_pi]).
cnf(combi25aics_adp_h_pi, axiom, [c_25aics_adp_h_pi, -m_25aics, -m_adp, -m_h, -m_pi]).
cnf(prodR653b, axiom, [c_5aizc_asp_L_atp, -r_R653b]).
cnf(combiadp_gar_h_pi, axiom, [c_adp_gar_h_pi, -m_adp, -m_gar, -m_h, -m_pi]).
cnf(activR662b, axiom, [r_R662b, -c_fgam_h_thf]).
cnf(combifgam_h_thf, axiom, [c_fgam_h_thf, -m_fgam, -m_h, -m_thf]).
cnf(combicbasp_h, axiom, [c_cbasp_h, -m_cbasp, -m_h]).
cnf(prodR676b, axiom, [c_accoa_h_nadh, -r_R676b]).
cnf(activR677b, axiom, [r_R677b, -c_h_nadh_pyr]).
cnf(combih_nadh_pyr, axiom, [c_h_nadh_pyr, -m_h, -m_nadh, -m_pyr]).
cnf(activR682b, axiom, [r_R682b, -c_4pasp_h_nadph]).
cnf(combi4pasp_h_nadph, axiom, [c_4pasp_h_nadph, -m_4pasp, -m_h, -m_nadph]).
cnf(activR687b, axiom, [r_R687b, -m_26dap_M]).
cnf(prodR687b, axiom, [m_26dap_LL, -r_R687b]).
cnf(activR691b, axiom, [r_R691b, -c_aspsa_h_nadph]).
cnf(combiaspsa_h_nadph, axiom, [c_aspsa_h_nadph, -m_aspsa, -m_h, -m_nadph]).
cnf(activR697b, axiom, [r_R697b, -c_3dhsk_h2o]).
cnf(combi3dhsk_h2o, axiom, [c_3dhsk_h2o, -m_3dhsk, -m_h2o]).
cnf(prodR697b, axiom, [m_3dhq, -r_R697b]).
cnf(prodR698b, axiom, [c_3dhsk_h_nadph, -r_R698b]).
cnf(dec3dhsk_h_nadph1, axiom, [m_3dhsk, -c_3dhsk_h_nadph]).
cnf(dec3dhsk_h_nadph2, axiom, [m_h, -c_3dhsk_h_nadph]).
cnf(dec3dhsk_h_nadph3, axiom, [m_nadph, -c_3dhsk_h_nadph]).
cnf(activR717b, axiom, [r_R717b, -c_h_hco3]).
cnf(combih_hco3, axiom, [c_h_hco3, -m_h, -m_hco3]).
cnf(prodR717b, axiom, [c_co2_h2o, -r_R717b]).

pf([m_h, -m_h, m_nadh, -m_nadh, m_nadph, -m_nadph, m_atp, -m_atp, m_h2o, -m_h2o, m_cmp, -m_cmp, m_r5p, -m_r5p, m_ser_L, -m_ser_L, m_xu5p_D, -m_xu5p_D]).