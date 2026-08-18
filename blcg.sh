echo "NV_CE_BASE_PRI_CE_FE_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x104200
echo "NV_CE_BASE_PRI_CE_FE_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x106200
echo "NV_CE_PRI_CE_FE_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00104200
echo "NV_CTRL1_PRI_GIN_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00d26a28
echo "NV_CTRL_PRI_GIN_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b66a28
echo "NV_CTXSW_FIRMWARE_CG_IDLE_CG_EN,  6:6,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00062400
echo "NV_CXL_BRG_0_PRI_LMEM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f8400
echo "NV_CXL_BRG_0_PRI_RMEM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f8410
echo "NV_CXL_BRG_0_PRI_UPL_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f8420
echo "NV_CXL_BRG_PRI_LMEM_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8f8400
echo "NV_CXL_BRG_PRI_RMEM_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8f8410
echo "NV_CXL_BRG_PRI_UPL_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8f8420
echo "NV_GIN_PRI_GIN_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2d06a28
echo "NV_GIN_PRI_GIN_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb66a28
echo "NV_GIN_PRI_GIN_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd26a28
echo "NV_HUBMMU_PRI_MMU0_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0088a398
echo "NV_HUBMMU_PRI_MMU1_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0089a398
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2000044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2040044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2080044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x20c0044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2100044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2140044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2180044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x21c0044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2200044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2240044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2280044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x22c0044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2300044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2340044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2380044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=15" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x23c0044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=16" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2400044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=17" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2440044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=18" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2480044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=19" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x24c0044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=20" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2500044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=21" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2540044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=22" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2580044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=23" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x25c0044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=24" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2600044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=25" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2640044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=26" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2680044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=27" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x26c0044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=28" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2700044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=29" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2740044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=30" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2780044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=31" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x27c0044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=32" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2800044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=33" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2840044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=34" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2880044
echo "NV_NVLPW_CTRL_CG_IDLE_CG_EN,  1:1,  NA,  0-base register inst=35" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x28c0044
echo "NV_PFB_CEHUB0_PRI_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac03f0
echo "NV_PFB_CEHUB0_PRI_RR_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac0bf0
echo "NV_PFB_CEHUB1_PRI_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac13f0
echo "NV_PFB_CEHUB1_PRI_RR_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac1bf0
echo "NV_PFB_CEHUB2_PRI_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac23f0
echo "NV_PFB_CEHUB2_PRI_RR_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac2bf0
echo "NV_PFB_CEHUB3_PRI_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac83f0
echo "NV_PFB_CEHUB3_PRI_RR_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac8bf0
echo "NV_PFB_CEHUB4_PRI_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac93f0
echo "NV_PFB_CEHUB4_PRI_RR_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac9bf0
echo "NV_PFB_CEHUB5_PRI_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00aca3f0
echo "NV_PFB_CEHUB5_PRI_RR_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00acabf0
echo "NV_PFB_FBHUB0_PRI_FBHUB_CLIENTS_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008a17bc
echo "NV_PFB_FBHUB0_PRI_FBHUB_EG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008a1d4c
echo "NV_PFB_FBHUB0_PRI_FBHUB_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008a0110
echo "NV_PFB_FBHUB1_PRI_FBHUB_CLIENTS_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008a57bc
echo "NV_PFB_FBHUB1_PRI_FBHUB_EG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008a5d4c
echo "NV_PFB_FBHUB1_PRI_FBHUB_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008a4110
echo "NV_PFB_FBHUB_BASE_PRI_FBHUB_CLIENTS_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a17bc
echo "NV_PFB_FBHUB_BASE_PRI_FBHUB_CLIENTS_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a57bc
echo "NV_PFB_FBHUB_BASE_PRI_FBHUB_EG_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a1d4c
echo "NV_PFB_FBHUB_BASE_PRI_FBHUB_EG_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a5d4c
echo "NV_PFB_FBHUB_BASE_PRI_FBHUB_IG_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a0110
echo "NV_PFB_FBHUB_BASE_PRI_FBHUB_IG_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a4110
echo "NV_PFB_FBHUB_PRI_FBHUB_CLIENTS_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a17bc
echo "NV_PFB_FBHUB_PRI_FBHUB_CLIENTS_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a57bc
echo "NV_PFB_FBHUB_PRI_FBHUB_EG_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a1d4c
echo "NV_PFB_FBHUB_PRI_FBHUB_EG_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a5d4c
echo "NV_PFB_FBHUB_PRI_FBHUB_IG_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a0110
echo "NV_PFB_FBHUB_PRI_FBHUB_IG_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a4110
echo "NV_PFB_FBPA_0_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07000000
echo "NV_PFB_FBPA_10_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07040000
echo "NV_PFB_FBPA_11_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07044000
echo "NV_PFB_FBPA_12_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07048000
echo "NV_PFB_FBPA_13_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0704c000
echo "NV_PFB_FBPA_14_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07050000
echo "NV_PFB_FBPA_15_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07054000
echo "NV_PFB_FBPA_16_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07058000
echo "NV_PFB_FBPA_17_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0705c000
echo "NV_PFB_FBPA_18_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07060000
echo "NV_PFB_FBPA_19_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07064000
echo "NV_PFB_FBPA_1A_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07068000
echo "NV_PFB_FBPA_1B_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0706c000
echo "NV_PFB_FBPA_1C_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07070000
echo "NV_PFB_FBPA_1D_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07074000
echo "NV_PFB_FBPA_1E_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07078000
echo "NV_PFB_FBPA_1F_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0707c000
echo "NV_PFB_FBPA_1_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07004000
echo "NV_PFB_FBPA_20_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07080000
echo "NV_PFB_FBPA_21_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07084000
echo "NV_PFB_FBPA_22_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07088000
echo "NV_PFB_FBPA_23_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0708c000
echo "NV_PFB_FBPA_24_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07090000
echo "NV_PFB_FBPA_25_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07094000
echo "NV_PFB_FBPA_26_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07098000
echo "NV_PFB_FBPA_27_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0709c000
echo "NV_PFB_FBPA_28_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070a0000
echo "NV_PFB_FBPA_29_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070a4000
echo "NV_PFB_FBPA_2A_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070a8000
echo "NV_PFB_FBPA_2B_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070ac000
echo "NV_PFB_FBPA_2C_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070b0000
echo "NV_PFB_FBPA_2D_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070b4000
echo "NV_PFB_FBPA_2E_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070b8000
echo "NV_PFB_FBPA_2F_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070bc000
echo "NV_PFB_FBPA_2_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07008000
echo "NV_PFB_FBPA_30_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070c0000
echo "NV_PFB_FBPA_31_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070c4000
echo "NV_PFB_FBPA_32_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070c8000
echo "NV_PFB_FBPA_33_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070cc000
echo "NV_PFB_FBPA_34_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070d0000
echo "NV_PFB_FBPA_35_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070d4000
echo "NV_PFB_FBPA_36_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070d8000
echo "NV_PFB_FBPA_37_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070dc000
echo "NV_PFB_FBPA_38_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070e0000
echo "NV_PFB_FBPA_39_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070e4000
echo "NV_PFB_FBPA_3A_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070e8000
echo "NV_PFB_FBPA_3B_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070ec000
echo "NV_PFB_FBPA_3C_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070f0000
echo "NV_PFB_FBPA_3D_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070f4000
echo "NV_PFB_FBPA_3E_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070f8000
echo "NV_PFB_FBPA_3F_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070fc000
echo "NV_PFB_FBPA_3_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0700c000
echo "NV_PFB_FBPA_4_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07010000
echo "NV_PFB_FBPA_5_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07014000
echo "NV_PFB_FBPA_6_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07018000
echo "NV_PFB_FBPA_7_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0701c000
echo "NV_PFB_FBPA_8_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07020000
echo "NV_PFB_FBPA_9_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07024000
echo "NV_PFB_FBPA_A_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07028000
echo "NV_PFB_FBPA_B_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0702c000
echo "NV_PFB_FBPA_C_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07030000
echo "NV_PFB_FBPA_D_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07034000
echo "NV_PFB_FBPA_E_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07038000
echo "NV_PFB_FBPA_F_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0703c000
echo "NV_PFB_FBPA_MC_0_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00980000
echo "NV_PFB_FBPA_MC_1_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00984000
echo "NV_PFB_FBPA_MC_2_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00988000
echo "NV_PFB_FBPA_PRI_FBPA_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009a0000
echo "NV_PFB_HSHUB0_PRI_EG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008707f0
echo "NV_PFB_HSHUB0_PRI_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008703f0
echo "NV_PFB_HSHUB0_PRI_RR_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00870bf0
echo "NV_PFB_HSHUB1_PRI_EG_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008717f0
echo "NV_PFB_HSHUB1_PRI_IG_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008713f0
echo "NV_PFB_HSHUB1_PRI_RR_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00871bf0
echo "NV_PFB_HSHUB2_PRI_EG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008727f0
echo "NV_PFB_HSHUB2_PRI_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008723f0
echo "NV_PFB_HSHUB2_PRI_RR_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00872bf0
echo "NV_PFB_HSHUB3_PRI_EG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008737f0
echo "NV_PFB_HSHUB3_PRI_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008733f0
echo "NV_PFB_HSHUB3_PRI_RR_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00873bf0
echo "NV_PFB_HSHUB4_PRI_EG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008747f0
echo "NV_PFB_HSHUB4_PRI_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008743f0
echo "NV_PFB_HSHUB4_PRI_RR_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00874bf0
echo "NV_PFB_HSHUB5_PRI_EG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008757f0
echo "NV_PFB_HSHUB5_PRI_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008753f0
echo "NV_PFB_HSHUB5_PRI_RR_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00875bf0
echo "NV_PFB_HSHUB6_PRI_EG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008767f0
echo "NV_PFB_HSHUB6_PRI_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008763f0
echo "NV_PFB_HSHUB6_PRI_RR_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00876bf0
echo "NV_PFB_HSHUB7_PRI_EG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008777f0
echo "NV_PFB_HSHUB7_PRI_IG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008773f0
echo "NV_PFB_HSHUB7_PRI_RR_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00877bf0
echo "NV_PFB_HSHUB8_PRI_EG_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008787f0
echo "NV_PFB_HSHUB8_PRI_IG_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008783f0
echo "NV_PFB_HSHUB8_PRI_RR_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00878bf0
echo "NV_PFB_HSHUB9_PRI_EG_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008797f0
echo "NV_PFB_HSHUB9_PRI_IG_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008793f0
echo "NV_PFB_HSHUB9_PRI_RR_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00879bf0
echo "NV_PFB_HSMMU0_PRI_MMU_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xa0b0
echo "NV_PFB_HSMMU1_PRI_MMU_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xa4b0
echo "NV_PFB_HSMMU2_PRI_MMU_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0011c0b0
echo "NV_PFB_HSMMU3_PRI_MMU_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0011c4b0
echo "NV_PFB_PRI_MMU_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001fa398
echo "NV_PGC61_BSI_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00aa4508
echo "NV_PGC61_LPSEC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00aa6b00
echo "NV_PGC62_BSI_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00aa8508
echo "NV_PGC62_LPSEC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00aaab00
echo "NV_PGC63_BSI_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00aac508
echo "NV_PGC63_LPSEC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00aaeb00
echo "NV_PGC6_BSI_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00118508
echo "NV_PGC6_LPSEC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0011ab00
echo "NV_PGC6_ZB_BSI_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x118508
echo "NV_PGC6_ZB_BSI_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xaa4508
echo "NV_PGC6_ZB_LPSEC_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x11ab00
echo "NV_PGC6_ZB_LPSEC_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xaa6b00
echo "NV_PGRAPH_PRI_CWD_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00405bf0
echo "NV_PGRAPH_PRI_FECS_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00409890
echo "NV_PGRAPH_PRI_FE_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x004041f0
echo "NV_PGRAPH_PRI_GPC0_GCC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00501020
echo "NV_PGRAPH_PRI_GPC0_GPCCS_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00502890
echo "NV_PGRAPH_PRI_GPC0_MMU0_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00501498
echo "NV_PGRAPH_PRI_GPC0_MMU1_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00501598
echo "NV_PGRAPH_PRI_GPC0_MMU2_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00501698
echo "NV_PGRAPH_PRI_GPC0_MMU_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00500898
echo "NV_PGRAPH_PRI_GPC0_TPC0_MPC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00506470
echo "NV_PGRAPH_PRI_GPC0_TPC0_SM_BLCG_0_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00506480
echo "NV_PGRAPH_PRI_GPC0_TPC0_SM_BLCG_1_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00506488
echo "NV_PGRAPH_PRI_GPC0_TPC0_SM_BLCG_2_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00506490
echo "NV_PGRAPH_PRI_GPC0_TPC0_SM_BLCG_3_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00506498
echo "NV_PGRAPH_PRI_GPC0_TPC0_SM_BLCG_4_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x005064a0
echo "NV_PGRAPH_PRI_GPC0_TPCS_MPC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00504470
echo "NV_PGRAPH_PRI_GPC0_TPCS_SM_BLCG_0_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00504480
echo "NV_PGRAPH_PRI_GPC0_TPCS_SM_BLCG_1_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00504488
echo "NV_PGRAPH_PRI_GPC0_TPCS_SM_BLCG_2_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00504490
echo "NV_PGRAPH_PRI_GPC0_TPCS_SM_BLCG_3_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00504498
echo "NV_PGRAPH_PRI_GPC0_TPCS_SM_BLCG_4_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x005044a0
echo "NV_PGRAPH_PRI_GPCS_GCC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00421020
echo "NV_PGRAPH_PRI_GPCS_GPCCS_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00422890
echo "NV_PGRAPH_PRI_GPCS_MMU0_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00421498
echo "NV_PGRAPH_PRI_GPCS_MMU1_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00421598
echo "NV_PGRAPH_PRI_GPCS_MMU2_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00421698
echo "NV_PGRAPH_PRI_GPCS_MMU_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00420898
echo "NV_PGRAPH_PRI_GPCS_TPC0_MPC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00426470
echo "NV_PGRAPH_PRI_GPCS_TPC0_SM_BLCG_0_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00426480
echo "NV_PGRAPH_PRI_GPCS_TPC0_SM_BLCG_1_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00426488
echo "NV_PGRAPH_PRI_GPCS_TPC0_SM_BLCG_2_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00426490
echo "NV_PGRAPH_PRI_GPCS_TPC0_SM_BLCG_3_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00426498
echo "NV_PGRAPH_PRI_GPCS_TPC0_SM_BLCG_4_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x004264a0
echo "NV_PGRAPH_PRI_GPCS_TPCS_MPC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00424470
echo "NV_PGRAPH_PRI_GPCS_TPCS_SM_BLCG_0_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00424480
echo "NV_PGRAPH_PRI_GPCS_TPCS_SM_BLCG_1_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00424488
echo "NV_PGRAPH_PRI_GPCS_TPCS_SM_BLCG_2_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00424490
echo "NV_PGRAPH_PRI_GPCS_TPCS_SM_BLCG_3_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00424498
echo "NV_PGRAPH_PRI_GPCS_TPCS_SM_BLCG_4_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x004244a0
echo "NV_PGRAPH_PRI_SKED_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00407000
echo "NV_PHBIHUBL_BC_HBIHUBLS_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00081424
echo "NV_PHBIHUBL_BC_HBIHUBLS_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0008141c
echo "NV_PHBIHUBL_HBIHUBL0_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4024
echo "NV_PHBIHUBL_HBIHUBL0_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x401c
echo "NV_PHBIHUBL_HBIHUBL10_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4a24
echo "NV_PHBIHUBL_HBIHUBL10_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4a1c
echo "NV_PHBIHUBL_HBIHUBL11_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4b24
echo "NV_PHBIHUBL_HBIHUBL11_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4b1c
echo "NV_PHBIHUBL_HBIHUBL12_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4c24
echo "NV_PHBIHUBL_HBIHUBL12_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4c1c
echo "NV_PHBIHUBL_HBIHUBL13_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4d24
echo "NV_PHBIHUBL_HBIHUBL13_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4d1c
echo "NV_PHBIHUBL_HBIHUBL14_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4e24
echo "NV_PHBIHUBL_HBIHUBL14_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4e1c
echo "NV_PHBIHUBL_HBIHUBL15_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4f24
echo "NV_PHBIHUBL_HBIHUBL15_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4f1c
echo "NV_PHBIHUBL_HBIHUBL1_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4124
echo "NV_PHBIHUBL_HBIHUBL1_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x411c
echo "NV_PHBIHUBL_HBIHUBL2_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4224
echo "NV_PHBIHUBL_HBIHUBL2_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x421c
echo "NV_PHBIHUBL_HBIHUBL3_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4324
echo "NV_PHBIHUBL_HBIHUBL3_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x431c
echo "NV_PHBIHUBL_HBIHUBL4_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4424
echo "NV_PHBIHUBL_HBIHUBL4_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x441c
echo "NV_PHBIHUBL_HBIHUBL5_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4524
echo "NV_PHBIHUBL_HBIHUBL5_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x451c
echo "NV_PHBIHUBL_HBIHUBL6_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4624
echo "NV_PHBIHUBL_HBIHUBL6_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x461c
echo "NV_PHBIHUBL_HBIHUBL7_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4724
echo "NV_PHBIHUBL_HBIHUBL7_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x471c
echo "NV_PHBIHUBL_HBIHUBL8_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4824
echo "NV_PHBIHUBL_HBIHUBL8_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x481c
echo "NV_PHBIHUBL_HBIHUBL9_PRI_HBIHUBL_RX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4924
echo "NV_PHBIHUBL_HBIHUBL9_PRI_HBIHUBL_TX_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x491c
echo "NV_PLRCC_LRCC0_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07500420
echo "NV_PLRCC_LRCC0_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07500620
echo "NV_PLRCC_LRCC0_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07500820
echo "NV_PLRCC_LRCC0_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07500a20
echo "NV_PLRCC_LRCC0_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07500020
echo "NV_PLRCC_LRCC10_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750a420
echo "NV_PLRCC_LRCC10_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750a620
echo "NV_PLRCC_LRCC10_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750a820
echo "NV_PLRCC_LRCC10_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750aa20
echo "NV_PLRCC_LRCC10_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750a020
echo "NV_PLRCC_LRCC11_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750b420
echo "NV_PLRCC_LRCC11_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750b620
echo "NV_PLRCC_LRCC11_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750b820
echo "NV_PLRCC_LRCC11_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750ba20
echo "NV_PLRCC_LRCC11_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750b020
echo "NV_PLRCC_LRCC12_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750c420
echo "NV_PLRCC_LRCC12_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750c620
echo "NV_PLRCC_LRCC12_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750c820
echo "NV_PLRCC_LRCC12_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750ca20
echo "NV_PLRCC_LRCC12_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750c020
echo "NV_PLRCC_LRCC13_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750d420
echo "NV_PLRCC_LRCC13_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750d620
echo "NV_PLRCC_LRCC13_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750d820
echo "NV_PLRCC_LRCC13_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750da20
echo "NV_PLRCC_LRCC13_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750d020
echo "NV_PLRCC_LRCC14_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750e420
echo "NV_PLRCC_LRCC14_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750e620
echo "NV_PLRCC_LRCC14_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750e820
echo "NV_PLRCC_LRCC14_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750ea20
echo "NV_PLRCC_LRCC14_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750e020
echo "NV_PLRCC_LRCC15_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750f420
echo "NV_PLRCC_LRCC15_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750f620
echo "NV_PLRCC_LRCC15_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750f820
echo "NV_PLRCC_LRCC15_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750fa20
echo "NV_PLRCC_LRCC15_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750f020
echo "NV_PLRCC_LRCC16_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07510420
echo "NV_PLRCC_LRCC16_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07510620
echo "NV_PLRCC_LRCC16_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07510820
echo "NV_PLRCC_LRCC16_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07510a20
echo "NV_PLRCC_LRCC16_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07510020
echo "NV_PLRCC_LRCC17_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07511420
echo "NV_PLRCC_LRCC17_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07511620
echo "NV_PLRCC_LRCC17_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07511820
echo "NV_PLRCC_LRCC17_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07511a20
echo "NV_PLRCC_LRCC17_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07511020
echo "NV_PLRCC_LRCC18_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07512420
echo "NV_PLRCC_LRCC18_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07512620
echo "NV_PLRCC_LRCC18_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07512820
echo "NV_PLRCC_LRCC18_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07512a20
echo "NV_PLRCC_LRCC18_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07512020
echo "NV_PLRCC_LRCC19_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07513420
echo "NV_PLRCC_LRCC19_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07513620
echo "NV_PLRCC_LRCC19_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07513820
echo "NV_PLRCC_LRCC19_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07513a20
echo "NV_PLRCC_LRCC19_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07513020
echo "NV_PLRCC_LRCC1_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07501420
echo "NV_PLRCC_LRCC1_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07501620
echo "NV_PLRCC_LRCC1_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07501820
echo "NV_PLRCC_LRCC1_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07501a20
echo "NV_PLRCC_LRCC1_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07501020
echo "NV_PLRCC_LRCC20_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07514420
echo "NV_PLRCC_LRCC20_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07514620
echo "NV_PLRCC_LRCC20_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07514820
echo "NV_PLRCC_LRCC20_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07514a20
echo "NV_PLRCC_LRCC20_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07514020
echo "NV_PLRCC_LRCC21_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07515420
echo "NV_PLRCC_LRCC21_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07515620
echo "NV_PLRCC_LRCC21_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07515820
echo "NV_PLRCC_LRCC21_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07515a20
echo "NV_PLRCC_LRCC21_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07515020
echo "NV_PLRCC_LRCC22_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07516420
echo "NV_PLRCC_LRCC22_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07516620
echo "NV_PLRCC_LRCC22_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07516820
echo "NV_PLRCC_LRCC22_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07516a20
echo "NV_PLRCC_LRCC22_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07516020
echo "NV_PLRCC_LRCC23_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07517420
echo "NV_PLRCC_LRCC23_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07517620
echo "NV_PLRCC_LRCC23_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07517820
echo "NV_PLRCC_LRCC23_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07517a20
echo "NV_PLRCC_LRCC23_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07517020
echo "NV_PLRCC_LRCC24_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07518420
echo "NV_PLRCC_LRCC24_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07518620
echo "NV_PLRCC_LRCC24_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07518820
echo "NV_PLRCC_LRCC24_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07518a20
echo "NV_PLRCC_LRCC24_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07518020
echo "NV_PLRCC_LRCC25_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07519420
echo "NV_PLRCC_LRCC25_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07519620
echo "NV_PLRCC_LRCC25_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07519820
echo "NV_PLRCC_LRCC25_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07519a20
echo "NV_PLRCC_LRCC25_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07519020
echo "NV_PLRCC_LRCC26_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751a420
echo "NV_PLRCC_LRCC26_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751a620
echo "NV_PLRCC_LRCC26_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751a820
echo "NV_PLRCC_LRCC26_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751aa20
echo "NV_PLRCC_LRCC26_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751a020
echo "NV_PLRCC_LRCC27_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751b420
echo "NV_PLRCC_LRCC27_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751b620
echo "NV_PLRCC_LRCC27_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751b820
echo "NV_PLRCC_LRCC27_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751ba20
echo "NV_PLRCC_LRCC27_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751b020
echo "NV_PLRCC_LRCC28_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751c420
echo "NV_PLRCC_LRCC28_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751c620
echo "NV_PLRCC_LRCC28_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751c820
echo "NV_PLRCC_LRCC28_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751ca20
echo "NV_PLRCC_LRCC28_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751c020
echo "NV_PLRCC_LRCC29_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751d420
echo "NV_PLRCC_LRCC29_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751d620
echo "NV_PLRCC_LRCC29_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751d820
echo "NV_PLRCC_LRCC29_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751da20
echo "NV_PLRCC_LRCC29_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751d020
echo "NV_PLRCC_LRCC2_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07502420
echo "NV_PLRCC_LRCC2_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07502620
echo "NV_PLRCC_LRCC2_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07502820
echo "NV_PLRCC_LRCC2_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07502a20
echo "NV_PLRCC_LRCC2_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07502020
echo "NV_PLRCC_LRCC30_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751e420
echo "NV_PLRCC_LRCC30_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751e620
echo "NV_PLRCC_LRCC30_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751e820
echo "NV_PLRCC_LRCC30_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751ea20
echo "NV_PLRCC_LRCC30_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751e020
echo "NV_PLRCC_LRCC31_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751f420
echo "NV_PLRCC_LRCC31_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751f620
echo "NV_PLRCC_LRCC31_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751f820
echo "NV_PLRCC_LRCC31_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751fa20
echo "NV_PLRCC_LRCC31_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751f020
echo "NV_PLRCC_LRCC32_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07520420
echo "NV_PLRCC_LRCC32_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07520620
echo "NV_PLRCC_LRCC32_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07520820
echo "NV_PLRCC_LRCC32_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07520a20
echo "NV_PLRCC_LRCC32_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07520020
echo "NV_PLRCC_LRCC33_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07521420
echo "NV_PLRCC_LRCC33_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07521620
echo "NV_PLRCC_LRCC33_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07521820
echo "NV_PLRCC_LRCC33_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07521a20
echo "NV_PLRCC_LRCC33_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07521020
echo "NV_PLRCC_LRCC34_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07522420
echo "NV_PLRCC_LRCC34_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07522620
echo "NV_PLRCC_LRCC34_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07522820
echo "NV_PLRCC_LRCC34_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07522a20
echo "NV_PLRCC_LRCC34_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07522020
echo "NV_PLRCC_LRCC35_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07523420
echo "NV_PLRCC_LRCC35_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07523620
echo "NV_PLRCC_LRCC35_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07523820
echo "NV_PLRCC_LRCC35_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07523a20
echo "NV_PLRCC_LRCC35_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07523020
echo "NV_PLRCC_LRCC36_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07524420
echo "NV_PLRCC_LRCC36_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07524620
echo "NV_PLRCC_LRCC36_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07524820
echo "NV_PLRCC_LRCC36_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07524a20
echo "NV_PLRCC_LRCC36_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07524020
echo "NV_PLRCC_LRCC37_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07525420
echo "NV_PLRCC_LRCC37_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07525620
echo "NV_PLRCC_LRCC37_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07525820
echo "NV_PLRCC_LRCC37_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07525a20
echo "NV_PLRCC_LRCC37_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07525020
echo "NV_PLRCC_LRCC38_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07526420
echo "NV_PLRCC_LRCC38_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07526620
echo "NV_PLRCC_LRCC38_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07526820
echo "NV_PLRCC_LRCC38_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07526a20
echo "NV_PLRCC_LRCC38_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07526020
echo "NV_PLRCC_LRCC39_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07527420
echo "NV_PLRCC_LRCC39_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07527620
echo "NV_PLRCC_LRCC39_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07527820
echo "NV_PLRCC_LRCC39_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07527a20
echo "NV_PLRCC_LRCC39_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07527020
echo "NV_PLRCC_LRCC3_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07503420
echo "NV_PLRCC_LRCC3_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07503620
echo "NV_PLRCC_LRCC3_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07503820
echo "NV_PLRCC_LRCC3_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07503a20
echo "NV_PLRCC_LRCC3_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07503020
echo "NV_PLRCC_LRCC40_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07528420
echo "NV_PLRCC_LRCC40_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07528620
echo "NV_PLRCC_LRCC40_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07528820
echo "NV_PLRCC_LRCC40_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07528a20
echo "NV_PLRCC_LRCC40_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07528020
echo "NV_PLRCC_LRCC41_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07529420
echo "NV_PLRCC_LRCC41_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07529620
echo "NV_PLRCC_LRCC41_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07529820
echo "NV_PLRCC_LRCC41_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07529a20
echo "NV_PLRCC_LRCC41_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07529020
echo "NV_PLRCC_LRCC42_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752a420
echo "NV_PLRCC_LRCC42_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752a620
echo "NV_PLRCC_LRCC42_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752a820
echo "NV_PLRCC_LRCC42_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752aa20
echo "NV_PLRCC_LRCC42_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752a020
echo "NV_PLRCC_LRCC43_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752b420
echo "NV_PLRCC_LRCC43_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752b620
echo "NV_PLRCC_LRCC43_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752b820
echo "NV_PLRCC_LRCC43_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752ba20
echo "NV_PLRCC_LRCC43_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752b020
echo "NV_PLRCC_LRCC44_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752c420
echo "NV_PLRCC_LRCC44_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752c620
echo "NV_PLRCC_LRCC44_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752c820
echo "NV_PLRCC_LRCC44_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752ca20
echo "NV_PLRCC_LRCC44_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752c020
echo "NV_PLRCC_LRCC45_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752d420
echo "NV_PLRCC_LRCC45_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752d620
echo "NV_PLRCC_LRCC45_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752d820
echo "NV_PLRCC_LRCC45_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752da20
echo "NV_PLRCC_LRCC45_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752d020
echo "NV_PLRCC_LRCC46_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752e420
echo "NV_PLRCC_LRCC46_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752e620
echo "NV_PLRCC_LRCC46_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752e820
echo "NV_PLRCC_LRCC46_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752ea20
echo "NV_PLRCC_LRCC46_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752e020
echo "NV_PLRCC_LRCC47_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752f420
echo "NV_PLRCC_LRCC47_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752f620
echo "NV_PLRCC_LRCC47_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752f820
echo "NV_PLRCC_LRCC47_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752fa20
echo "NV_PLRCC_LRCC47_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752f020
echo "NV_PLRCC_LRCC48_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07530420
echo "NV_PLRCC_LRCC48_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07530620
echo "NV_PLRCC_LRCC48_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07530820
echo "NV_PLRCC_LRCC48_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07530a20
echo "NV_PLRCC_LRCC48_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07530020
echo "NV_PLRCC_LRCC49_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07531420
echo "NV_PLRCC_LRCC49_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07531620
echo "NV_PLRCC_LRCC49_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07531820
echo "NV_PLRCC_LRCC49_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07531a20
echo "NV_PLRCC_LRCC49_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07531020
echo "NV_PLRCC_LRCC4_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07504420
echo "NV_PLRCC_LRCC4_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07504620
echo "NV_PLRCC_LRCC4_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07504820
echo "NV_PLRCC_LRCC4_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07504a20
echo "NV_PLRCC_LRCC4_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07504020
echo "NV_PLRCC_LRCC50_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07532420
echo "NV_PLRCC_LRCC50_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07532620
echo "NV_PLRCC_LRCC50_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07532820
echo "NV_PLRCC_LRCC50_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07532a20
echo "NV_PLRCC_LRCC50_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07532020
echo "NV_PLRCC_LRCC51_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07533420
echo "NV_PLRCC_LRCC51_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07533620
echo "NV_PLRCC_LRCC51_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07533820
echo "NV_PLRCC_LRCC51_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07533a20
echo "NV_PLRCC_LRCC51_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07533020
echo "NV_PLRCC_LRCC52_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07534420
echo "NV_PLRCC_LRCC52_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07534620
echo "NV_PLRCC_LRCC52_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07534820
echo "NV_PLRCC_LRCC52_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07534a20
echo "NV_PLRCC_LRCC52_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07534020
echo "NV_PLRCC_LRCC53_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07535420
echo "NV_PLRCC_LRCC53_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07535620
echo "NV_PLRCC_LRCC53_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07535820
echo "NV_PLRCC_LRCC53_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07535a20
echo "NV_PLRCC_LRCC53_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07535020
echo "NV_PLRCC_LRCC54_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07536420
echo "NV_PLRCC_LRCC54_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07536620
echo "NV_PLRCC_LRCC54_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07536820
echo "NV_PLRCC_LRCC54_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07536a20
echo "NV_PLRCC_LRCC54_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07536020
echo "NV_PLRCC_LRCC55_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07537420
echo "NV_PLRCC_LRCC55_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07537620
echo "NV_PLRCC_LRCC55_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07537820
echo "NV_PLRCC_LRCC55_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07537a20
echo "NV_PLRCC_LRCC55_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07537020
echo "NV_PLRCC_LRCC56_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07538420
echo "NV_PLRCC_LRCC56_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07538620
echo "NV_PLRCC_LRCC56_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07538820
echo "NV_PLRCC_LRCC56_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07538a20
echo "NV_PLRCC_LRCC56_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07538020
echo "NV_PLRCC_LRCC57_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07539420
echo "NV_PLRCC_LRCC57_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07539620
echo "NV_PLRCC_LRCC57_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07539820
echo "NV_PLRCC_LRCC57_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07539a20
echo "NV_PLRCC_LRCC57_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07539020
echo "NV_PLRCC_LRCC58_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753a420
echo "NV_PLRCC_LRCC58_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753a620
echo "NV_PLRCC_LRCC58_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753a820
echo "NV_PLRCC_LRCC58_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753aa20
echo "NV_PLRCC_LRCC58_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753a020
echo "NV_PLRCC_LRCC59_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753b420
echo "NV_PLRCC_LRCC59_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753b620
echo "NV_PLRCC_LRCC59_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753b820
echo "NV_PLRCC_LRCC59_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753ba20
echo "NV_PLRCC_LRCC59_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753b020
echo "NV_PLRCC_LRCC5_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07505420
echo "NV_PLRCC_LRCC5_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07505620
echo "NV_PLRCC_LRCC5_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07505820
echo "NV_PLRCC_LRCC5_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07505a20
echo "NV_PLRCC_LRCC5_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07505020
echo "NV_PLRCC_LRCC60_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753c420
echo "NV_PLRCC_LRCC60_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753c620
echo "NV_PLRCC_LRCC60_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753c820
echo "NV_PLRCC_LRCC60_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753ca20
echo "NV_PLRCC_LRCC60_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753c020
echo "NV_PLRCC_LRCC61_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753d420
echo "NV_PLRCC_LRCC61_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753d620
echo "NV_PLRCC_LRCC61_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753d820
echo "NV_PLRCC_LRCC61_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753da20
echo "NV_PLRCC_LRCC61_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753d020
echo "NV_PLRCC_LRCC62_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753e420
echo "NV_PLRCC_LRCC62_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753e620
echo "NV_PLRCC_LRCC62_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753e820
echo "NV_PLRCC_LRCC62_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753ea20
echo "NV_PLRCC_LRCC62_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753e020
echo "NV_PLRCC_LRCC63_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753f420
echo "NV_PLRCC_LRCC63_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753f620
echo "NV_PLRCC_LRCC63_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753f820
echo "NV_PLRCC_LRCC63_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753fa20
echo "NV_PLRCC_LRCC63_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753f020
echo "NV_PLRCC_LRCC6_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07506420
echo "NV_PLRCC_LRCC6_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07506620
echo "NV_PLRCC_LRCC6_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07506820
echo "NV_PLRCC_LRCC6_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07506a20
echo "NV_PLRCC_LRCC6_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07506020
echo "NV_PLRCC_LRCC7_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07507420
echo "NV_PLRCC_LRCC7_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07507620
echo "NV_PLRCC_LRCC7_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07507820
echo "NV_PLRCC_LRCC7_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07507a20
echo "NV_PLRCC_LRCC7_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07507020
echo "NV_PLRCC_LRCC8_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07508420
echo "NV_PLRCC_LRCC8_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07508620
echo "NV_PLRCC_LRCC8_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07508820
echo "NV_PLRCC_LRCC8_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07508a20
echo "NV_PLRCC_LRCC8_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07508020
echo "NV_PLRCC_LRCC9_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07509420
echo "NV_PLRCC_LRCC9_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07509620
echo "NV_PLRCC_LRCC9_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07509820
echo "NV_PLRCC_LRCC9_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07509a20
echo "NV_PLRCC_LRCC9_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07509020
echo "NV_PLRCC_LRCCS_LRC0_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008bf420
echo "NV_PLRCC_LRCCS_LRC1_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008bf620
echo "NV_PLRCC_LRCCS_LRC2_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008bf820
echo "NV_PLRCC_LRCCS_LRC3_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008bfa20
echo "NV_PLRCC_LRCCS_LRCS_PRI_LRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008bf020
echo "NV_PLTCG_LTC0_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074005e0
echo "NV_PLTCG_LTC0_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074005c8
echo "NV_PLTCG_LTC0_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074007e0
echo "NV_PLTCG_LTC0_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074007c8
echo "NV_PLTCG_LTC0_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074009e0
echo "NV_PLTCG_LTC0_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074009c8
echo "NV_PLTCG_LTC0_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07400be0
echo "NV_PLTCG_LTC0_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07400bc8
echo "NV_PLTCG_LTC0_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074003e0
echo "NV_PLTCG_LTC0_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074003c8
echo "NV_PLTCG_LTC0_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07400030
echo "NV_PLTCG_LTC0_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07400040
echo "NV_PLTCG_LTC10_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074145e0
echo "NV_PLTCG_LTC10_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074145c8
echo "NV_PLTCG_LTC10_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074147e0
echo "NV_PLTCG_LTC10_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074147c8
echo "NV_PLTCG_LTC10_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074149e0
echo "NV_PLTCG_LTC10_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074149c8
echo "NV_PLTCG_LTC10_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07414be0
echo "NV_PLTCG_LTC10_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07414bc8
echo "NV_PLTCG_LTC10_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074143e0
echo "NV_PLTCG_LTC10_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074143c8
echo "NV_PLTCG_LTC10_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07414030
echo "NV_PLTCG_LTC10_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07414040
echo "NV_PLTCG_LTC11_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074165e0
echo "NV_PLTCG_LTC11_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074165c8
echo "NV_PLTCG_LTC11_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074167e0
echo "NV_PLTCG_LTC11_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074167c8
echo "NV_PLTCG_LTC11_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074169e0
echo "NV_PLTCG_LTC11_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074169c8
echo "NV_PLTCG_LTC11_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07416be0
echo "NV_PLTCG_LTC11_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07416bc8
echo "NV_PLTCG_LTC11_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074163e0
echo "NV_PLTCG_LTC11_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074163c8
echo "NV_PLTCG_LTC11_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07416030
echo "NV_PLTCG_LTC11_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07416040
echo "NV_PLTCG_LTC12_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074185e0
echo "NV_PLTCG_LTC12_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074185c8
echo "NV_PLTCG_LTC12_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074187e0
echo "NV_PLTCG_LTC12_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074187c8
echo "NV_PLTCG_LTC12_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074189e0
echo "NV_PLTCG_LTC12_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074189c8
echo "NV_PLTCG_LTC12_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07418be0
echo "NV_PLTCG_LTC12_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07418bc8
echo "NV_PLTCG_LTC12_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074183e0
echo "NV_PLTCG_LTC12_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074183c8
echo "NV_PLTCG_LTC12_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07418030
echo "NV_PLTCG_LTC12_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07418040
echo "NV_PLTCG_LTC13_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a5e0
echo "NV_PLTCG_LTC13_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a5c8
echo "NV_PLTCG_LTC13_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a7e0
echo "NV_PLTCG_LTC13_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a7c8
echo "NV_PLTCG_LTC13_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a9e0
echo "NV_PLTCG_LTC13_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a9c8
echo "NV_PLTCG_LTC13_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741abe0
echo "NV_PLTCG_LTC13_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741abc8
echo "NV_PLTCG_LTC13_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a3e0
echo "NV_PLTCG_LTC13_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a3c8
echo "NV_PLTCG_LTC13_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a030
echo "NV_PLTCG_LTC13_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a040
echo "NV_PLTCG_LTC14_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c5e0
echo "NV_PLTCG_LTC14_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c5c8
echo "NV_PLTCG_LTC14_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c7e0
echo "NV_PLTCG_LTC14_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c7c8
echo "NV_PLTCG_LTC14_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c9e0
echo "NV_PLTCG_LTC14_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c9c8
echo "NV_PLTCG_LTC14_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741cbe0
echo "NV_PLTCG_LTC14_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741cbc8
echo "NV_PLTCG_LTC14_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c3e0
echo "NV_PLTCG_LTC14_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c3c8
echo "NV_PLTCG_LTC14_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c030
echo "NV_PLTCG_LTC14_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c040
echo "NV_PLTCG_LTC15_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e5e0
echo "NV_PLTCG_LTC15_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e5c8
echo "NV_PLTCG_LTC15_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e7e0
echo "NV_PLTCG_LTC15_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e7c8
echo "NV_PLTCG_LTC15_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e9e0
echo "NV_PLTCG_LTC15_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e9c8
echo "NV_PLTCG_LTC15_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741ebe0
echo "NV_PLTCG_LTC15_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741ebc8
echo "NV_PLTCG_LTC15_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e3e0
echo "NV_PLTCG_LTC15_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e3c8
echo "NV_PLTCG_LTC15_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e030
echo "NV_PLTCG_LTC15_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e040
echo "NV_PLTCG_LTC16_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074205e0
echo "NV_PLTCG_LTC16_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074205c8
echo "NV_PLTCG_LTC16_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074207e0
echo "NV_PLTCG_LTC16_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074207c8
echo "NV_PLTCG_LTC16_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074209e0
echo "NV_PLTCG_LTC16_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074209c8
echo "NV_PLTCG_LTC16_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07420be0
echo "NV_PLTCG_LTC16_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07420bc8
echo "NV_PLTCG_LTC16_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074203e0
echo "NV_PLTCG_LTC16_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074203c8
echo "NV_PLTCG_LTC16_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07420030
echo "NV_PLTCG_LTC16_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07420040
echo "NV_PLTCG_LTC17_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074225e0
echo "NV_PLTCG_LTC17_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074225c8
echo "NV_PLTCG_LTC17_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074227e0
echo "NV_PLTCG_LTC17_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074227c8
echo "NV_PLTCG_LTC17_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074229e0
echo "NV_PLTCG_LTC17_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074229c8
echo "NV_PLTCG_LTC17_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07422be0
echo "NV_PLTCG_LTC17_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07422bc8
echo "NV_PLTCG_LTC17_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074223e0
echo "NV_PLTCG_LTC17_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074223c8
echo "NV_PLTCG_LTC17_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07422030
echo "NV_PLTCG_LTC17_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07422040
echo "NV_PLTCG_LTC18_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074245e0
echo "NV_PLTCG_LTC18_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074245c8
echo "NV_PLTCG_LTC18_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074247e0
echo "NV_PLTCG_LTC18_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074247c8
echo "NV_PLTCG_LTC18_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074249e0
echo "NV_PLTCG_LTC18_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074249c8
echo "NV_PLTCG_LTC18_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07424be0
echo "NV_PLTCG_LTC18_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07424bc8
echo "NV_PLTCG_LTC18_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074243e0
echo "NV_PLTCG_LTC18_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074243c8
echo "NV_PLTCG_LTC18_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07424030
echo "NV_PLTCG_LTC18_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07424040
echo "NV_PLTCG_LTC19_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074265e0
echo "NV_PLTCG_LTC19_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074265c8
echo "NV_PLTCG_LTC19_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074267e0
echo "NV_PLTCG_LTC19_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074267c8
echo "NV_PLTCG_LTC19_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074269e0
echo "NV_PLTCG_LTC19_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074269c8
echo "NV_PLTCG_LTC19_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07426be0
echo "NV_PLTCG_LTC19_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07426bc8
echo "NV_PLTCG_LTC19_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074263e0
echo "NV_PLTCG_LTC19_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074263c8
echo "NV_PLTCG_LTC19_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07426030
echo "NV_PLTCG_LTC19_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07426040
echo "NV_PLTCG_LTC1_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074025e0
echo "NV_PLTCG_LTC1_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074025c8
echo "NV_PLTCG_LTC1_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074027e0
echo "NV_PLTCG_LTC1_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074027c8
echo "NV_PLTCG_LTC1_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074029e0
echo "NV_PLTCG_LTC1_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074029c8
echo "NV_PLTCG_LTC1_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07402be0
echo "NV_PLTCG_LTC1_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07402bc8
echo "NV_PLTCG_LTC1_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074023e0
echo "NV_PLTCG_LTC1_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074023c8
echo "NV_PLTCG_LTC1_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07402030
echo "NV_PLTCG_LTC1_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07402040
echo "NV_PLTCG_LTC20_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074285e0
echo "NV_PLTCG_LTC20_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074285c8
echo "NV_PLTCG_LTC20_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074287e0
echo "NV_PLTCG_LTC20_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074287c8
echo "NV_PLTCG_LTC20_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074289e0
echo "NV_PLTCG_LTC20_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074289c8
echo "NV_PLTCG_LTC20_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07428be0
echo "NV_PLTCG_LTC20_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07428bc8
echo "NV_PLTCG_LTC20_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074283e0
echo "NV_PLTCG_LTC20_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074283c8
echo "NV_PLTCG_LTC20_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07428030
echo "NV_PLTCG_LTC20_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07428040
echo "NV_PLTCG_LTC21_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a5e0
echo "NV_PLTCG_LTC21_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a5c8
echo "NV_PLTCG_LTC21_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a7e0
echo "NV_PLTCG_LTC21_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a7c8
echo "NV_PLTCG_LTC21_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a9e0
echo "NV_PLTCG_LTC21_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a9c8
echo "NV_PLTCG_LTC21_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742abe0
echo "NV_PLTCG_LTC21_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742abc8
echo "NV_PLTCG_LTC21_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a3e0
echo "NV_PLTCG_LTC21_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a3c8
echo "NV_PLTCG_LTC21_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a030
echo "NV_PLTCG_LTC21_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a040
echo "NV_PLTCG_LTC22_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c5e0
echo "NV_PLTCG_LTC22_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c5c8
echo "NV_PLTCG_LTC22_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c7e0
echo "NV_PLTCG_LTC22_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c7c8
echo "NV_PLTCG_LTC22_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c9e0
echo "NV_PLTCG_LTC22_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c9c8
echo "NV_PLTCG_LTC22_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742cbe0
echo "NV_PLTCG_LTC22_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742cbc8
echo "NV_PLTCG_LTC22_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c3e0
echo "NV_PLTCG_LTC22_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c3c8
echo "NV_PLTCG_LTC22_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c030
echo "NV_PLTCG_LTC22_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c040
echo "NV_PLTCG_LTC23_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e5e0
echo "NV_PLTCG_LTC23_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e5c8
echo "NV_PLTCG_LTC23_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e7e0
echo "NV_PLTCG_LTC23_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e7c8
echo "NV_PLTCG_LTC23_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e9e0
echo "NV_PLTCG_LTC23_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e9c8
echo "NV_PLTCG_LTC23_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742ebe0
echo "NV_PLTCG_LTC23_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742ebc8
echo "NV_PLTCG_LTC23_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e3e0
echo "NV_PLTCG_LTC23_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e3c8
echo "NV_PLTCG_LTC23_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e030
echo "NV_PLTCG_LTC23_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e040
echo "NV_PLTCG_LTC24_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074305e0
echo "NV_PLTCG_LTC24_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074305c8
echo "NV_PLTCG_LTC24_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074307e0
echo "NV_PLTCG_LTC24_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074307c8
echo "NV_PLTCG_LTC24_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074309e0
echo "NV_PLTCG_LTC24_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074309c8
echo "NV_PLTCG_LTC24_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07430be0
echo "NV_PLTCG_LTC24_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07430bc8
echo "NV_PLTCG_LTC24_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074303e0
echo "NV_PLTCG_LTC24_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074303c8
echo "NV_PLTCG_LTC24_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07430030
echo "NV_PLTCG_LTC24_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07430040
echo "NV_PLTCG_LTC25_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074325e0
echo "NV_PLTCG_LTC25_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074325c8
echo "NV_PLTCG_LTC25_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074327e0
echo "NV_PLTCG_LTC25_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074327c8
echo "NV_PLTCG_LTC25_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074329e0
echo "NV_PLTCG_LTC25_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074329c8
echo "NV_PLTCG_LTC25_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07432be0
echo "NV_PLTCG_LTC25_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07432bc8
echo "NV_PLTCG_LTC25_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074323e0
echo "NV_PLTCG_LTC25_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074323c8
echo "NV_PLTCG_LTC25_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07432030
echo "NV_PLTCG_LTC25_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07432040
echo "NV_PLTCG_LTC26_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074345e0
echo "NV_PLTCG_LTC26_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074345c8
echo "NV_PLTCG_LTC26_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074347e0
echo "NV_PLTCG_LTC26_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074347c8
echo "NV_PLTCG_LTC26_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074349e0
echo "NV_PLTCG_LTC26_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074349c8
echo "NV_PLTCG_LTC26_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07434be0
echo "NV_PLTCG_LTC26_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07434bc8
echo "NV_PLTCG_LTC26_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074343e0
echo "NV_PLTCG_LTC26_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074343c8
echo "NV_PLTCG_LTC26_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07434030
echo "NV_PLTCG_LTC26_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07434040
echo "NV_PLTCG_LTC27_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074365e0
echo "NV_PLTCG_LTC27_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074365c8
echo "NV_PLTCG_LTC27_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074367e0
echo "NV_PLTCG_LTC27_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074367c8
echo "NV_PLTCG_LTC27_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074369e0
echo "NV_PLTCG_LTC27_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074369c8
echo "NV_PLTCG_LTC27_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07436be0
echo "NV_PLTCG_LTC27_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07436bc8
echo "NV_PLTCG_LTC27_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074363e0
echo "NV_PLTCG_LTC27_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074363c8
echo "NV_PLTCG_LTC27_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07436030
echo "NV_PLTCG_LTC27_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07436040
echo "NV_PLTCG_LTC28_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074385e0
echo "NV_PLTCG_LTC28_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074385c8
echo "NV_PLTCG_LTC28_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074387e0
echo "NV_PLTCG_LTC28_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074387c8
echo "NV_PLTCG_LTC28_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074389e0
echo "NV_PLTCG_LTC28_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074389c8
echo "NV_PLTCG_LTC28_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07438be0
echo "NV_PLTCG_LTC28_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07438bc8
echo "NV_PLTCG_LTC28_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074383e0
echo "NV_PLTCG_LTC28_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074383c8
echo "NV_PLTCG_LTC28_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07438030
echo "NV_PLTCG_LTC28_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07438040
echo "NV_PLTCG_LTC29_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a5e0
echo "NV_PLTCG_LTC29_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a5c8
echo "NV_PLTCG_LTC29_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a7e0
echo "NV_PLTCG_LTC29_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a7c8
echo "NV_PLTCG_LTC29_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a9e0
echo "NV_PLTCG_LTC29_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a9c8
echo "NV_PLTCG_LTC29_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743abe0
echo "NV_PLTCG_LTC29_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743abc8
echo "NV_PLTCG_LTC29_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a3e0
echo "NV_PLTCG_LTC29_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a3c8
echo "NV_PLTCG_LTC29_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a030
echo "NV_PLTCG_LTC29_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a040
echo "NV_PLTCG_LTC2_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074045e0
echo "NV_PLTCG_LTC2_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074045c8
echo "NV_PLTCG_LTC2_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074047e0
echo "NV_PLTCG_LTC2_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074047c8
echo "NV_PLTCG_LTC2_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074049e0
echo "NV_PLTCG_LTC2_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074049c8
echo "NV_PLTCG_LTC2_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07404be0
echo "NV_PLTCG_LTC2_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07404bc8
echo "NV_PLTCG_LTC2_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074043e0
echo "NV_PLTCG_LTC2_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074043c8
echo "NV_PLTCG_LTC2_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07404030
echo "NV_PLTCG_LTC2_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07404040
echo "NV_PLTCG_LTC30_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c5e0
echo "NV_PLTCG_LTC30_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c5c8
echo "NV_PLTCG_LTC30_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c7e0
echo "NV_PLTCG_LTC30_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c7c8
echo "NV_PLTCG_LTC30_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c9e0
echo "NV_PLTCG_LTC30_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c9c8
echo "NV_PLTCG_LTC30_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743cbe0
echo "NV_PLTCG_LTC30_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743cbc8
echo "NV_PLTCG_LTC30_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c3e0
echo "NV_PLTCG_LTC30_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c3c8
echo "NV_PLTCG_LTC30_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c030
echo "NV_PLTCG_LTC30_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c040
echo "NV_PLTCG_LTC31_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e5e0
echo "NV_PLTCG_LTC31_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e5c8
echo "NV_PLTCG_LTC31_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e7e0
echo "NV_PLTCG_LTC31_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e7c8
echo "NV_PLTCG_LTC31_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e9e0
echo "NV_PLTCG_LTC31_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e9c8
echo "NV_PLTCG_LTC31_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743ebe0
echo "NV_PLTCG_LTC31_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743ebc8
echo "NV_PLTCG_LTC31_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e3e0
echo "NV_PLTCG_LTC31_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e3c8
echo "NV_PLTCG_LTC31_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e030
echo "NV_PLTCG_LTC31_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e040
echo "NV_PLTCG_LTC32_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074405e0
echo "NV_PLTCG_LTC32_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074405c8
echo "NV_PLTCG_LTC32_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074407e0
echo "NV_PLTCG_LTC32_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074407c8
echo "NV_PLTCG_LTC32_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074409e0
echo "NV_PLTCG_LTC32_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074409c8
echo "NV_PLTCG_LTC32_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07440be0
echo "NV_PLTCG_LTC32_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07440bc8
echo "NV_PLTCG_LTC32_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074403e0
echo "NV_PLTCG_LTC32_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074403c8
echo "NV_PLTCG_LTC32_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07440030
echo "NV_PLTCG_LTC32_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07440040
echo "NV_PLTCG_LTC33_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074425e0
echo "NV_PLTCG_LTC33_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074425c8
echo "NV_PLTCG_LTC33_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074427e0
echo "NV_PLTCG_LTC33_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074427c8
echo "NV_PLTCG_LTC33_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074429e0
echo "NV_PLTCG_LTC33_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074429c8
echo "NV_PLTCG_LTC33_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07442be0
echo "NV_PLTCG_LTC33_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07442bc8
echo "NV_PLTCG_LTC33_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074423e0
echo "NV_PLTCG_LTC33_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074423c8
echo "NV_PLTCG_LTC33_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07442030
echo "NV_PLTCG_LTC33_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07442040
echo "NV_PLTCG_LTC34_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074445e0
echo "NV_PLTCG_LTC34_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074445c8
echo "NV_PLTCG_LTC34_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074447e0
echo "NV_PLTCG_LTC34_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074447c8
echo "NV_PLTCG_LTC34_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074449e0
echo "NV_PLTCG_LTC34_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074449c8
echo "NV_PLTCG_LTC34_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07444be0
echo "NV_PLTCG_LTC34_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07444bc8
echo "NV_PLTCG_LTC34_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074443e0
echo "NV_PLTCG_LTC34_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074443c8
echo "NV_PLTCG_LTC34_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07444030
echo "NV_PLTCG_LTC34_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07444040
echo "NV_PLTCG_LTC35_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074465e0
echo "NV_PLTCG_LTC35_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074465c8
echo "NV_PLTCG_LTC35_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074467e0
echo "NV_PLTCG_LTC35_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074467c8
echo "NV_PLTCG_LTC35_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074469e0
echo "NV_PLTCG_LTC35_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074469c8
echo "NV_PLTCG_LTC35_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07446be0
echo "NV_PLTCG_LTC35_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07446bc8
echo "NV_PLTCG_LTC35_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074463e0
echo "NV_PLTCG_LTC35_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074463c8
echo "NV_PLTCG_LTC35_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07446030
echo "NV_PLTCG_LTC35_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07446040
echo "NV_PLTCG_LTC36_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074485e0
echo "NV_PLTCG_LTC36_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074485c8
echo "NV_PLTCG_LTC36_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074487e0
echo "NV_PLTCG_LTC36_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074487c8
echo "NV_PLTCG_LTC36_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074489e0
echo "NV_PLTCG_LTC36_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074489c8
echo "NV_PLTCG_LTC36_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07448be0
echo "NV_PLTCG_LTC36_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07448bc8
echo "NV_PLTCG_LTC36_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074483e0
echo "NV_PLTCG_LTC36_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074483c8
echo "NV_PLTCG_LTC36_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07448030
echo "NV_PLTCG_LTC36_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07448040
echo "NV_PLTCG_LTC37_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a5e0
echo "NV_PLTCG_LTC37_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a5c8
echo "NV_PLTCG_LTC37_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a7e0
echo "NV_PLTCG_LTC37_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a7c8
echo "NV_PLTCG_LTC37_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a9e0
echo "NV_PLTCG_LTC37_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a9c8
echo "NV_PLTCG_LTC37_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744abe0
echo "NV_PLTCG_LTC37_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744abc8
echo "NV_PLTCG_LTC37_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a3e0
echo "NV_PLTCG_LTC37_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a3c8
echo "NV_PLTCG_LTC37_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a030
echo "NV_PLTCG_LTC37_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a040
echo "NV_PLTCG_LTC38_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c5e0
echo "NV_PLTCG_LTC38_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c5c8
echo "NV_PLTCG_LTC38_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c7e0
echo "NV_PLTCG_LTC38_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c7c8
echo "NV_PLTCG_LTC38_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c9e0
echo "NV_PLTCG_LTC38_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c9c8
echo "NV_PLTCG_LTC38_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744cbe0
echo "NV_PLTCG_LTC38_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744cbc8
echo "NV_PLTCG_LTC38_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c3e0
echo "NV_PLTCG_LTC38_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c3c8
echo "NV_PLTCG_LTC38_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c030
echo "NV_PLTCG_LTC38_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c040
echo "NV_PLTCG_LTC39_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e5e0
echo "NV_PLTCG_LTC39_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e5c8
echo "NV_PLTCG_LTC39_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e7e0
echo "NV_PLTCG_LTC39_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e7c8
echo "NV_PLTCG_LTC39_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e9e0
echo "NV_PLTCG_LTC39_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e9c8
echo "NV_PLTCG_LTC39_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744ebe0
echo "NV_PLTCG_LTC39_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744ebc8
echo "NV_PLTCG_LTC39_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e3e0
echo "NV_PLTCG_LTC39_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e3c8
echo "NV_PLTCG_LTC39_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e030
echo "NV_PLTCG_LTC39_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e040
echo "NV_PLTCG_LTC3_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074065e0
echo "NV_PLTCG_LTC3_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074065c8
echo "NV_PLTCG_LTC3_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074067e0
echo "NV_PLTCG_LTC3_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074067c8
echo "NV_PLTCG_LTC3_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074069e0
echo "NV_PLTCG_LTC3_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074069c8
echo "NV_PLTCG_LTC3_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07406be0
echo "NV_PLTCG_LTC3_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07406bc8
echo "NV_PLTCG_LTC3_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074063e0
echo "NV_PLTCG_LTC3_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074063c8
echo "NV_PLTCG_LTC3_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07406030
echo "NV_PLTCG_LTC3_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07406040
echo "NV_PLTCG_LTC40_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074505e0
echo "NV_PLTCG_LTC40_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074505c8
echo "NV_PLTCG_LTC40_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074507e0
echo "NV_PLTCG_LTC40_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074507c8
echo "NV_PLTCG_LTC40_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074509e0
echo "NV_PLTCG_LTC40_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074509c8
echo "NV_PLTCG_LTC40_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07450be0
echo "NV_PLTCG_LTC40_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07450bc8
echo "NV_PLTCG_LTC40_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074503e0
echo "NV_PLTCG_LTC40_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074503c8
echo "NV_PLTCG_LTC40_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07450030
echo "NV_PLTCG_LTC40_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07450040
echo "NV_PLTCG_LTC41_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074525e0
echo "NV_PLTCG_LTC41_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074525c8
echo "NV_PLTCG_LTC41_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074527e0
echo "NV_PLTCG_LTC41_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074527c8
echo "NV_PLTCG_LTC41_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074529e0
echo "NV_PLTCG_LTC41_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074529c8
echo "NV_PLTCG_LTC41_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07452be0
echo "NV_PLTCG_LTC41_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07452bc8
echo "NV_PLTCG_LTC41_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074523e0
echo "NV_PLTCG_LTC41_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074523c8
echo "NV_PLTCG_LTC41_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07452030
echo "NV_PLTCG_LTC41_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07452040
echo "NV_PLTCG_LTC42_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074545e0
echo "NV_PLTCG_LTC42_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074545c8
echo "NV_PLTCG_LTC42_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074547e0
echo "NV_PLTCG_LTC42_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074547c8
echo "NV_PLTCG_LTC42_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074549e0
echo "NV_PLTCG_LTC42_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074549c8
echo "NV_PLTCG_LTC42_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07454be0
echo "NV_PLTCG_LTC42_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07454bc8
echo "NV_PLTCG_LTC42_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074543e0
echo "NV_PLTCG_LTC42_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074543c8
echo "NV_PLTCG_LTC42_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07454030
echo "NV_PLTCG_LTC42_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07454040
echo "NV_PLTCG_LTC43_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074565e0
echo "NV_PLTCG_LTC43_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074565c8
echo "NV_PLTCG_LTC43_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074567e0
echo "NV_PLTCG_LTC43_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074567c8
echo "NV_PLTCG_LTC43_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074569e0
echo "NV_PLTCG_LTC43_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074569c8
echo "NV_PLTCG_LTC43_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07456be0
echo "NV_PLTCG_LTC43_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07456bc8
echo "NV_PLTCG_LTC43_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074563e0
echo "NV_PLTCG_LTC43_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074563c8
echo "NV_PLTCG_LTC43_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07456030
echo "NV_PLTCG_LTC43_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07456040
echo "NV_PLTCG_LTC44_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074585e0
echo "NV_PLTCG_LTC44_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074585c8
echo "NV_PLTCG_LTC44_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074587e0
echo "NV_PLTCG_LTC44_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074587c8
echo "NV_PLTCG_LTC44_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074589e0
echo "NV_PLTCG_LTC44_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074589c8
echo "NV_PLTCG_LTC44_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07458be0
echo "NV_PLTCG_LTC44_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07458bc8
echo "NV_PLTCG_LTC44_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074583e0
echo "NV_PLTCG_LTC44_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074583c8
echo "NV_PLTCG_LTC44_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07458030
echo "NV_PLTCG_LTC44_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07458040
echo "NV_PLTCG_LTC45_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a5e0
echo "NV_PLTCG_LTC45_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a5c8
echo "NV_PLTCG_LTC45_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a7e0
echo "NV_PLTCG_LTC45_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a7c8
echo "NV_PLTCG_LTC45_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a9e0
echo "NV_PLTCG_LTC45_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a9c8
echo "NV_PLTCG_LTC45_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745abe0
echo "NV_PLTCG_LTC45_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745abc8
echo "NV_PLTCG_LTC45_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a3e0
echo "NV_PLTCG_LTC45_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a3c8
echo "NV_PLTCG_LTC45_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a030
echo "NV_PLTCG_LTC45_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a040
echo "NV_PLTCG_LTC46_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c5e0
echo "NV_PLTCG_LTC46_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c5c8
echo "NV_PLTCG_LTC46_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c7e0
echo "NV_PLTCG_LTC46_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c7c8
echo "NV_PLTCG_LTC46_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c9e0
echo "NV_PLTCG_LTC46_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c9c8
echo "NV_PLTCG_LTC46_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745cbe0
echo "NV_PLTCG_LTC46_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745cbc8
echo "NV_PLTCG_LTC46_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c3e0
echo "NV_PLTCG_LTC46_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c3c8
echo "NV_PLTCG_LTC46_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c030
echo "NV_PLTCG_LTC46_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c040
echo "NV_PLTCG_LTC47_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e5e0
echo "NV_PLTCG_LTC47_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e5c8
echo "NV_PLTCG_LTC47_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e7e0
echo "NV_PLTCG_LTC47_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e7c8
echo "NV_PLTCG_LTC47_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e9e0
echo "NV_PLTCG_LTC47_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e9c8
echo "NV_PLTCG_LTC47_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745ebe0
echo "NV_PLTCG_LTC47_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745ebc8
echo "NV_PLTCG_LTC47_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e3e0
echo "NV_PLTCG_LTC47_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e3c8
echo "NV_PLTCG_LTC47_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e030
echo "NV_PLTCG_LTC47_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e040
echo "NV_PLTCG_LTC48_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074605e0
echo "NV_PLTCG_LTC48_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074605c8
echo "NV_PLTCG_LTC48_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074607e0
echo "NV_PLTCG_LTC48_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074607c8
echo "NV_PLTCG_LTC48_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074609e0
echo "NV_PLTCG_LTC48_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074609c8
echo "NV_PLTCG_LTC48_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07460be0
echo "NV_PLTCG_LTC48_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07460bc8
echo "NV_PLTCG_LTC48_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074603e0
echo "NV_PLTCG_LTC48_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074603c8
echo "NV_PLTCG_LTC48_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07460030
echo "NV_PLTCG_LTC48_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07460040
echo "NV_PLTCG_LTC49_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074625e0
echo "NV_PLTCG_LTC49_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074625c8
echo "NV_PLTCG_LTC49_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074627e0
echo "NV_PLTCG_LTC49_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074627c8
echo "NV_PLTCG_LTC49_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074629e0
echo "NV_PLTCG_LTC49_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074629c8
echo "NV_PLTCG_LTC49_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07462be0
echo "NV_PLTCG_LTC49_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07462bc8
echo "NV_PLTCG_LTC49_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074623e0
echo "NV_PLTCG_LTC49_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074623c8
echo "NV_PLTCG_LTC49_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07462030
echo "NV_PLTCG_LTC49_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07462040
echo "NV_PLTCG_LTC4_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074085e0
echo "NV_PLTCG_LTC4_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074085c8
echo "NV_PLTCG_LTC4_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074087e0
echo "NV_PLTCG_LTC4_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074087c8
echo "NV_PLTCG_LTC4_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074089e0
echo "NV_PLTCG_LTC4_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074089c8
echo "NV_PLTCG_LTC4_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07408be0
echo "NV_PLTCG_LTC4_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07408bc8
echo "NV_PLTCG_LTC4_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074083e0
echo "NV_PLTCG_LTC4_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074083c8
echo "NV_PLTCG_LTC4_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07408030
echo "NV_PLTCG_LTC4_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07408040
echo "NV_PLTCG_LTC50_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074645e0
echo "NV_PLTCG_LTC50_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074645c8
echo "NV_PLTCG_LTC50_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074647e0
echo "NV_PLTCG_LTC50_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074647c8
echo "NV_PLTCG_LTC50_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074649e0
echo "NV_PLTCG_LTC50_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074649c8
echo "NV_PLTCG_LTC50_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07464be0
echo "NV_PLTCG_LTC50_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07464bc8
echo "NV_PLTCG_LTC50_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074643e0
echo "NV_PLTCG_LTC50_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074643c8
echo "NV_PLTCG_LTC50_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07464030
echo "NV_PLTCG_LTC50_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07464040
echo "NV_PLTCG_LTC51_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074665e0
echo "NV_PLTCG_LTC51_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074665c8
echo "NV_PLTCG_LTC51_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074667e0
echo "NV_PLTCG_LTC51_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074667c8
echo "NV_PLTCG_LTC51_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074669e0
echo "NV_PLTCG_LTC51_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074669c8
echo "NV_PLTCG_LTC51_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07466be0
echo "NV_PLTCG_LTC51_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07466bc8
echo "NV_PLTCG_LTC51_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074663e0
echo "NV_PLTCG_LTC51_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074663c8
echo "NV_PLTCG_LTC51_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07466030
echo "NV_PLTCG_LTC51_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07466040
echo "NV_PLTCG_LTC52_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074685e0
echo "NV_PLTCG_LTC52_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074685c8
echo "NV_PLTCG_LTC52_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074687e0
echo "NV_PLTCG_LTC52_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074687c8
echo "NV_PLTCG_LTC52_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074689e0
echo "NV_PLTCG_LTC52_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074689c8
echo "NV_PLTCG_LTC52_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07468be0
echo "NV_PLTCG_LTC52_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07468bc8
echo "NV_PLTCG_LTC52_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074683e0
echo "NV_PLTCG_LTC52_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074683c8
echo "NV_PLTCG_LTC52_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07468030
echo "NV_PLTCG_LTC52_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07468040
echo "NV_PLTCG_LTC53_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a5e0
echo "NV_PLTCG_LTC53_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a5c8
echo "NV_PLTCG_LTC53_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a7e0
echo "NV_PLTCG_LTC53_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a7c8
echo "NV_PLTCG_LTC53_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a9e0
echo "NV_PLTCG_LTC53_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a9c8
echo "NV_PLTCG_LTC53_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746abe0
echo "NV_PLTCG_LTC53_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746abc8
echo "NV_PLTCG_LTC53_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a3e0
echo "NV_PLTCG_LTC53_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a3c8
echo "NV_PLTCG_LTC53_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a030
echo "NV_PLTCG_LTC53_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a040
echo "NV_PLTCG_LTC54_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c5e0
echo "NV_PLTCG_LTC54_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c5c8
echo "NV_PLTCG_LTC54_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c7e0
echo "NV_PLTCG_LTC54_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c7c8
echo "NV_PLTCG_LTC54_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c9e0
echo "NV_PLTCG_LTC54_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c9c8
echo "NV_PLTCG_LTC54_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746cbe0
echo "NV_PLTCG_LTC54_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746cbc8
echo "NV_PLTCG_LTC54_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c3e0
echo "NV_PLTCG_LTC54_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c3c8
echo "NV_PLTCG_LTC54_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c030
echo "NV_PLTCG_LTC54_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c040
echo "NV_PLTCG_LTC55_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e5e0
echo "NV_PLTCG_LTC55_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e5c8
echo "NV_PLTCG_LTC55_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e7e0
echo "NV_PLTCG_LTC55_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e7c8
echo "NV_PLTCG_LTC55_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e9e0
echo "NV_PLTCG_LTC55_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e9c8
echo "NV_PLTCG_LTC55_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746ebe0
echo "NV_PLTCG_LTC55_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746ebc8
echo "NV_PLTCG_LTC55_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e3e0
echo "NV_PLTCG_LTC55_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e3c8
echo "NV_PLTCG_LTC55_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e030
echo "NV_PLTCG_LTC55_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e040
echo "NV_PLTCG_LTC56_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074705e0
echo "NV_PLTCG_LTC56_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074705c8
echo "NV_PLTCG_LTC56_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074707e0
echo "NV_PLTCG_LTC56_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074707c8
echo "NV_PLTCG_LTC56_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074709e0
echo "NV_PLTCG_LTC56_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074709c8
echo "NV_PLTCG_LTC56_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07470be0
echo "NV_PLTCG_LTC56_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07470bc8
echo "NV_PLTCG_LTC56_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074703e0
echo "NV_PLTCG_LTC56_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074703c8
echo "NV_PLTCG_LTC56_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07470030
echo "NV_PLTCG_LTC56_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07470040
echo "NV_PLTCG_LTC57_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074725e0
echo "NV_PLTCG_LTC57_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074725c8
echo "NV_PLTCG_LTC57_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074727e0
echo "NV_PLTCG_LTC57_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074727c8
echo "NV_PLTCG_LTC57_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074729e0
echo "NV_PLTCG_LTC57_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074729c8
echo "NV_PLTCG_LTC57_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07472be0
echo "NV_PLTCG_LTC57_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07472bc8
echo "NV_PLTCG_LTC57_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074723e0
echo "NV_PLTCG_LTC57_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074723c8
echo "NV_PLTCG_LTC57_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07472030
echo "NV_PLTCG_LTC57_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07472040
echo "NV_PLTCG_LTC58_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074745e0
echo "NV_PLTCG_LTC58_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074745c8
echo "NV_PLTCG_LTC58_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074747e0
echo "NV_PLTCG_LTC58_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074747c8
echo "NV_PLTCG_LTC58_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074749e0
echo "NV_PLTCG_LTC58_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074749c8
echo "NV_PLTCG_LTC58_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07474be0
echo "NV_PLTCG_LTC58_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07474bc8
echo "NV_PLTCG_LTC58_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074743e0
echo "NV_PLTCG_LTC58_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074743c8
echo "NV_PLTCG_LTC58_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07474030
echo "NV_PLTCG_LTC58_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07474040
echo "NV_PLTCG_LTC59_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074765e0
echo "NV_PLTCG_LTC59_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074765c8
echo "NV_PLTCG_LTC59_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074767e0
echo "NV_PLTCG_LTC59_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074767c8
echo "NV_PLTCG_LTC59_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074769e0
echo "NV_PLTCG_LTC59_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074769c8
echo "NV_PLTCG_LTC59_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07476be0
echo "NV_PLTCG_LTC59_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07476bc8
echo "NV_PLTCG_LTC59_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074763e0
echo "NV_PLTCG_LTC59_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074763c8
echo "NV_PLTCG_LTC59_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07476030
echo "NV_PLTCG_LTC59_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07476040
echo "NV_PLTCG_LTC5_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a5e0
echo "NV_PLTCG_LTC5_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a5c8
echo "NV_PLTCG_LTC5_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a7e0
echo "NV_PLTCG_LTC5_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a7c8
echo "NV_PLTCG_LTC5_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a9e0
echo "NV_PLTCG_LTC5_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a9c8
echo "NV_PLTCG_LTC5_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740abe0
echo "NV_PLTCG_LTC5_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740abc8
echo "NV_PLTCG_LTC5_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a3e0
echo "NV_PLTCG_LTC5_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a3c8
echo "NV_PLTCG_LTC5_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a030
echo "NV_PLTCG_LTC5_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a040
echo "NV_PLTCG_LTC60_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074785e0
echo "NV_PLTCG_LTC60_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074785c8
echo "NV_PLTCG_LTC60_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074787e0
echo "NV_PLTCG_LTC60_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074787c8
echo "NV_PLTCG_LTC60_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074789e0
echo "NV_PLTCG_LTC60_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074789c8
echo "NV_PLTCG_LTC60_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07478be0
echo "NV_PLTCG_LTC60_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07478bc8
echo "NV_PLTCG_LTC60_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074783e0
echo "NV_PLTCG_LTC60_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074783c8
echo "NV_PLTCG_LTC60_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07478030
echo "NV_PLTCG_LTC60_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07478040
echo "NV_PLTCG_LTC61_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a5e0
echo "NV_PLTCG_LTC61_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a5c8
echo "NV_PLTCG_LTC61_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a7e0
echo "NV_PLTCG_LTC61_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a7c8
echo "NV_PLTCG_LTC61_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a9e0
echo "NV_PLTCG_LTC61_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a9c8
echo "NV_PLTCG_LTC61_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747abe0
echo "NV_PLTCG_LTC61_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747abc8
echo "NV_PLTCG_LTC61_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a3e0
echo "NV_PLTCG_LTC61_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a3c8
echo "NV_PLTCG_LTC61_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a030
echo "NV_PLTCG_LTC61_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a040
echo "NV_PLTCG_LTC62_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c5e0
echo "NV_PLTCG_LTC62_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c5c8
echo "NV_PLTCG_LTC62_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c7e0
echo "NV_PLTCG_LTC62_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c7c8
echo "NV_PLTCG_LTC62_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c9e0
echo "NV_PLTCG_LTC62_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c9c8
echo "NV_PLTCG_LTC62_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747cbe0
echo "NV_PLTCG_LTC62_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747cbc8
echo "NV_PLTCG_LTC62_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c3e0
echo "NV_PLTCG_LTC62_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c3c8
echo "NV_PLTCG_LTC62_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c030
echo "NV_PLTCG_LTC62_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c040
echo "NV_PLTCG_LTC63_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e5e0
echo "NV_PLTCG_LTC63_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e5c8
echo "NV_PLTCG_LTC63_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e7e0
echo "NV_PLTCG_LTC63_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e7c8
echo "NV_PLTCG_LTC63_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e9e0
echo "NV_PLTCG_LTC63_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e9c8
echo "NV_PLTCG_LTC63_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747ebe0
echo "NV_PLTCG_LTC63_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747ebc8
echo "NV_PLTCG_LTC63_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e3e0
echo "NV_PLTCG_LTC63_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e3c8
echo "NV_PLTCG_LTC63_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e030
echo "NV_PLTCG_LTC63_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e040
echo "NV_PLTCG_LTC6_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c5e0
echo "NV_PLTCG_LTC6_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c5c8
echo "NV_PLTCG_LTC6_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c7e0
echo "NV_PLTCG_LTC6_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c7c8
echo "NV_PLTCG_LTC6_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c9e0
echo "NV_PLTCG_LTC6_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c9c8
echo "NV_PLTCG_LTC6_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740cbe0
echo "NV_PLTCG_LTC6_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740cbc8
echo "NV_PLTCG_LTC6_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c3e0
echo "NV_PLTCG_LTC6_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c3c8
echo "NV_PLTCG_LTC6_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c030
echo "NV_PLTCG_LTC6_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c040
echo "NV_PLTCG_LTC7_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e5e0
echo "NV_PLTCG_LTC7_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e5c8
echo "NV_PLTCG_LTC7_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e7e0
echo "NV_PLTCG_LTC7_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e7c8
echo "NV_PLTCG_LTC7_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e9e0
echo "NV_PLTCG_LTC7_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e9c8
echo "NV_PLTCG_LTC7_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740ebe0
echo "NV_PLTCG_LTC7_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740ebc8
echo "NV_PLTCG_LTC7_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e3e0
echo "NV_PLTCG_LTC7_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e3c8
echo "NV_PLTCG_LTC7_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e030
echo "NV_PLTCG_LTC7_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e040
echo "NV_PLTCG_LTC8_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074105e0
echo "NV_PLTCG_LTC8_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074105c8
echo "NV_PLTCG_LTC8_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074107e0
echo "NV_PLTCG_LTC8_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074107c8
echo "NV_PLTCG_LTC8_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074109e0
echo "NV_PLTCG_LTC8_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074109c8
echo "NV_PLTCG_LTC8_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07410be0
echo "NV_PLTCG_LTC8_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07410bc8
echo "NV_PLTCG_LTC8_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074103e0
echo "NV_PLTCG_LTC8_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074103c8
echo "NV_PLTCG_LTC8_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07410030
echo "NV_PLTCG_LTC8_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07410040
echo "NV_PLTCG_LTC9_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074125e0
echo "NV_PLTCG_LTC9_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074125c8
echo "NV_PLTCG_LTC9_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074127e0
echo "NV_PLTCG_LTC9_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074127c8
echo "NV_PLTCG_LTC9_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074129e0
echo "NV_PLTCG_LTC9_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074129c8
echo "NV_PLTCG_LTC9_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07412be0
echo "NV_PLTCG_LTC9_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07412bc8
echo "NV_PLTCG_LTC9_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074123e0
echo "NV_PLTCG_LTC9_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x074123c8
echo "NV_PLTCG_LTC9_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07412030
echo "NV_PLTCG_LTC9_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07412040
echo "NV_PLTCG_LTCS_LTS0_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c65e0
echo "NV_PLTCG_LTCS_LTS0_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c65c8
echo "NV_PLTCG_LTCS_LTS1_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c67e0
echo "NV_PLTCG_LTCS_LTS1_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c67c8
echo "NV_PLTCG_LTCS_LTS2_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c69e0
echo "NV_PLTCG_LTCS_LTS2_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c69c8
echo "NV_PLTCG_LTCS_LTS3_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c6be0
echo "NV_PLTCG_LTCS_LTS3_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c6bc8
echo "NV_PLTCG_LTCS_LTSS_G_PRI_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c63e0
echo "NV_PLTCG_LTCS_LTSS_G_PRI_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c63c8
echo "NV_PLTCG_LTCS_MISC_DCMP_PRI_DCMP_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c6030
echo "NV_PLTCG_LTCS_MISC_PRI_LTC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c6040
echo "NV_PNVDEC0_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00849320
echo "NV_PNVDEC1_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d320
echo "NV_PNVDEC2_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00851320
echo "NV_PNVDEC3_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00855320
echo "NV_PNVDEC4_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00859320
echo "NV_PNVDEC5_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d320
echo "NV_PNVDEC6_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00861320
echo "NV_PNVDEC7_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00865320
echo "NV_PNVJPG0_MISC_BLCG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009c0b00
echo "NV_PNVJPG1_MISC_BLCG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009c8b00
echo "NV_PNVJPG2_MISC_BLCG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009d0b00
echo "NV_PNVJPG3_MISC_BLCG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009d8b00
echo "NV_PNVJPG4_MISC_BLCG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009e0b00
echo "NV_PNVJPG5_MISC_BLCG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009e8b00
echo "NV_PNVJPG6_MISC_BLCG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009f0b00
echo "NV_PNVJPG7_MISC_BLCG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009f8b00
echo "NV_POFA0_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00846c00
echo "NV_POFA1_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008fec00
echo "NV_POFA_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00846c00
echo "NV_POFA_ZB_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x846c00
echo "NV_POFA_ZB_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8fec00
echo "NV_PPWR_PMU_PRI_PWR_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f6a70
echo "NV_PPXUC_NONPRGN_MISC_PRI_PXUC_CG_IDLE_CG_EN,  6:6,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x82a010
echo "NV_PSLRCC_SLRCC0_SLRC0_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e8420
echo "NV_PSLRCC_SLRCC0_SLRC1_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e8620
echo "NV_PSLRCC_SLRCC0_SLRC2_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e8820
echo "NV_PSLRCC_SLRCC0_SLRC3_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e8a20
echo "NV_PSLRCC_SLRCC0_SLRC4_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e8c20
echo "NV_PSLRCC_SLRCC0_SLRC5_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e8e20
echo "NV_PSLRCC_SLRCC0_SLRC6_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e9020
echo "NV_PSLRCC_SLRCC0_SLRC7_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e9220
echo "NV_PSLRCC_SLRCC0_SLRCS_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e8020
echo "NV_PSLRCC_SLRCC1_SLRC0_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008ea420
echo "NV_PSLRCC_SLRCC1_SLRC1_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008ea620
echo "NV_PSLRCC_SLRCC1_SLRC2_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008ea820
echo "NV_PSLRCC_SLRCC1_SLRC3_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008eaa20
echo "NV_PSLRCC_SLRCC1_SLRC4_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008eac20
echo "NV_PSLRCC_SLRCC1_SLRC5_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008eae20
echo "NV_PSLRCC_SLRCC1_SLRC6_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008eb020
echo "NV_PSLRCC_SLRCC1_SLRC7_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008eb220
echo "NV_PSLRCC_SLRCC1_SLRCS_PRI_SLRC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008ea020
echo "NV_PSYSL2LTCG1_LTC0_LTS0_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b105e0
echo "NV_PSYSL2LTCG1_LTC0_LTS0_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b105c8
echo "NV_PSYSL2LTCG1_LTC0_LTS1_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b107e0
echo "NV_PSYSL2LTCG1_LTC0_LTS1_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b107c8
echo "NV_PSYSL2LTCG1_LTC0_LTS2_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b109e0
echo "NV_PSYSL2LTCG1_LTC0_LTS2_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b109c8
echo "NV_PSYSL2LTCG1_LTC0_LTS3_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b10be0
echo "NV_PSYSL2LTCG1_LTC0_LTS3_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b10bc8
echo "NV_PSYSL2LTCG1_LTC0_LTS4_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b10de0
echo "NV_PSYSL2LTCG1_LTC0_LTS4_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b10dc8
echo "NV_PSYSL2LTCG1_LTC0_LTS5_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b10fe0
echo "NV_PSYSL2LTCG1_LTC0_LTS5_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b10fc8
echo "NV_PSYSL2LTCG1_LTC0_LTS6_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b111e0
echo "NV_PSYSL2LTCG1_LTC0_LTS6_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b111c8
echo "NV_PSYSL2LTCG1_LTC0_LTS7_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b113e0
echo "NV_PSYSL2LTCG1_LTC0_LTS7_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b113c8
echo "NV_PSYSL2LTCG1_LTC0_LTSS_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b103e0
echo "NV_PSYSL2LTCG1_LTC0_LTSS_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b103c8
echo "NV_PSYSL2LTCG1_LTC0_MISC_DCMP_PRI_SYSL2_DCMP_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b10030
echo "NV_PSYSL2LTCG1_LTC0_MISC_PRI_SYSL2_LTC_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b10040
echo "NV_PSYSL2LTCG_LTC0_LTS0_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b005e0
echo "NV_PSYSL2LTCG_LTC0_LTS0_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b005c8
echo "NV_PSYSL2LTCG_LTC0_LTS1_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b007e0
echo "NV_PSYSL2LTCG_LTC0_LTS1_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b007c8
echo "NV_PSYSL2LTCG_LTC0_LTS2_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b009e0
echo "NV_PSYSL2LTCG_LTC0_LTS2_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b009c8
echo "NV_PSYSL2LTCG_LTC0_LTS3_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b00be0
echo "NV_PSYSL2LTCG_LTC0_LTS3_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b00bc8
echo "NV_PSYSL2LTCG_LTC0_LTS4_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b00de0
echo "NV_PSYSL2LTCG_LTC0_LTS4_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b00dc8
echo "NV_PSYSL2LTCG_LTC0_LTS5_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b00fe0
echo "NV_PSYSL2LTCG_LTC0_LTS5_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b00fc8
echo "NV_PSYSL2LTCG_LTC0_LTS6_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b011e0
echo "NV_PSYSL2LTCG_LTC0_LTS6_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b011c8
echo "NV_PSYSL2LTCG_LTC0_LTS7_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b013e0
echo "NV_PSYSL2LTCG_LTC0_LTS7_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b013c8
echo "NV_PSYSL2LTCG_LTC0_LTSS_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b003e0
echo "NV_PSYSL2LTCG_LTC0_LTSS_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b003c8
echo "NV_PSYSL2LTCG_LTC0_MISC_DCMP_PRI_SYSL2_DCMP_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b00030
echo "NV_PSYSL2LTCG_LTC0_MISC_PRI_SYSL2_LTC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b00040
echo "NV_PSYSL2LTCG_LTCS_LTS0_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c65e0
echo "NV_PSYSL2LTCG_LTCS_LTS0_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c65c8
echo "NV_PSYSL2LTCG_LTCS_LTS1_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c67e0
echo "NV_PSYSL2LTCG_LTCS_LTS1_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c67c8
echo "NV_PSYSL2LTCG_LTCS_LTS2_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c69e0
echo "NV_PSYSL2LTCG_LTCS_LTS2_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c69c8
echo "NV_PSYSL2LTCG_LTCS_LTS3_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c6be0
echo "NV_PSYSL2LTCG_LTCS_LTS3_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c6bc8
echo "NV_PSYSL2LTCG_LTCS_LTSS_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c63e0
echo "NV_PSYSL2LTCG_LTCS_LTSS_G_PRI_SYSL2_IQ_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c63c8
echo "NV_PSYSL2LTCG_LTCS_MISC_DCMP_PRI_SYSL2_DCMP_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c6030
echo "NV_PSYSL2LTCG_LTCS_MISC_PRI_SYSL2_LTC_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c6040
echo "NV_PSYSL2LTC_LTS0_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb005e0
echo "NV_PSYSL2LTC_LTS0_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb105e0
echo "NV_PSYSL2LTC_LTS0_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb125e0
echo "NV_PSYSL2LTC_LTS1_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb007e0
echo "NV_PSYSL2LTC_LTS1_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb107e0
echo "NV_PSYSL2LTC_LTS1_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb127e0
echo "NV_PSYSL2LTC_LTS2_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb009e0
echo "NV_PSYSL2LTC_LTS2_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb109e0
echo "NV_PSYSL2LTC_LTS2_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb129e0
echo "NV_PSYSL2LTC_LTS3_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb00be0
echo "NV_PSYSL2LTC_LTS3_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb10be0
echo "NV_PSYSL2LTC_LTS3_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb12be0
echo "NV_PSYSL2LTC_LTS4_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb00de0
echo "NV_PSYSL2LTC_LTS4_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb10de0
echo "NV_PSYSL2LTC_LTS4_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb12de0
echo "NV_PSYSL2LTC_LTS5_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb00fe0
echo "NV_PSYSL2LTC_LTS5_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb10fe0
echo "NV_PSYSL2LTC_LTS5_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb12fe0
echo "NV_PSYSL2LTC_LTS6_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb011e0
echo "NV_PSYSL2LTC_LTS6_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb111e0
echo "NV_PSYSL2LTC_LTS6_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb131e0
echo "NV_PSYSL2LTC_LTS7_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb013e0
echo "NV_PSYSL2LTC_LTS7_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb113e0
echo "NV_PSYSL2LTC_LTS7_G_PRI_SYSL2_CBC_CG_IDLE_CG_EN,  6:6,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb133e0
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd00050
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd00450
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd00850
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd00c50
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd01050
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd01450
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd01850
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd01c50
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd02050
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd02450
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd02850
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd02c50
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd03050
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd03450
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd03850
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=15" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd03c50
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=16" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd04050
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=17" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd04450
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=18" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd04850
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=19" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd04c50
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=20" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd05050
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=21" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd05450
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=22" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd10050
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=23" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd10450
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=24" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd10850
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=25" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd10c50
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=26" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd11450
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=27" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd11850
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=28" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd11c50
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=29" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd12050
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=30" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd12450
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=31" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd12850
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=32" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd12c50
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=33" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd13050
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=34" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd13450
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=35" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd13850
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=36" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd13c50
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=37" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd14050
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=38" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd14450
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=39" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd14850
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=40" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd14c50
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=41" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd15050
echo "NV_RUNLIST_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=42" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd15450
echo "NV_XAL_EP_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010fa00
echo "NV_XBAR_CXBAR_CQ_PRI_SYS0_HXI_CXBAR_PREG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013ebc4
echo "NV_XBAR_CXBAR_CQ_PRI_SYS1_HXI_CXBAR_PREG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013efc4
echo "NV_XBAR_CXBAR_CQ_PRI_SYS2_HXI_CXBAR_PREG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00d63884
echo "NV_XBAR_CXBAR_CQ_PRI_SYS3_HXI_CXBAR_PREG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00d639c4
echo "NV_XBAR_MXBAR_CS_PRI_SYS0_HXI0_HXBAR_PREG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013c898
echo "NV_XBAR_MXBAR_CS_PRI_SYS0_HXI0_PREG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013c820
echo "NV_XBAR_MXBAR_CS_PRI_SYS0_HXI1_HXBAR_PREG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013c798
echo "NV_XBAR_MXBAR_CS_PRI_SYS0_HXI1_PREG_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013c720
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC11_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30000
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC11_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30008
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC12_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31000
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC12_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31008
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC13_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32000
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC13_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32008
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC14_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33000
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC14_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33008
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC1_PREG_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28000
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC1_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28008
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC2_PREG_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29000
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC2_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29008
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC3_PREG_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a000
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC3_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a008
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC4_PREG_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b000
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC4_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b008
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC6_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c000
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC6_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c008
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC7_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d000
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC7_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d008
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC8_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e000
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC8_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e008
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC9_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f000
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC9_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f008
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC0_PREG_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20000
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC0_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2006c
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC0_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20074
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC10_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22000
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC10_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2206c
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC10_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22074
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC5_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21000
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC5_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2106c
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC5_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21074
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC11_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30080
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC11_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30088
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC12_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31080
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC12_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31088
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC13_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32080
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC13_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32088
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC14_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33080
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC14_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33088
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC1_PREG_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28080
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC1_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28088
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC2_PREG_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29080
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC2_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29088
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC3_PREG_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a080
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC3_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a088
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC4_PREG_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b080
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC4_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b088
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC6_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c080
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC6_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c088
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC7_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d080
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC7_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d088
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC8_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e080
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC8_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e088
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC9_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f080
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC9_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f088
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC0_PREG_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20080
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC0_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b200ec
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC0_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b200f4
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC10_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22080
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC10_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b220ec
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC10_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b220f4
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC5_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21080
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC5_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b210ec
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC5_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b210f4
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC11_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30100
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC11_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30108
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC12_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31100
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC12_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31108
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC13_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32100
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC13_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32108
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC14_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33100
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC14_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33108
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC1_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28100
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC1_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28108
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC2_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29100
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC2_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29108
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC3_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a100
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC3_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a108
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC4_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b100
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC4_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b108
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC6_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c100
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC6_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c108
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC7_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d100
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC7_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d108
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC8_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e100
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC8_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e108
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC9_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f100
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC9_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f108
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC0_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20100
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC0_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2016c
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC0_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20174
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC10_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22100
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC10_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2216c
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC10_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22174
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC5_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21100
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC5_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2116c
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC5_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21174
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC11_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30180
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC11_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30188
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC12_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31180
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC12_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31188
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC13_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32180
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC13_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32188
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC14_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33180
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC14_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33188
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC1_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28180
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC1_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28188
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC2_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29180
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC2_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29188
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC3_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a180
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC3_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a188
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC4_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b180
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC4_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b188
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC6_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c180
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC6_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c188
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC7_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d180
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC7_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d188
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC8_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e180
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC8_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e188
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC9_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f180
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC9_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f188
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC0_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20180
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC0_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b201ec
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC0_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b201f4
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC10_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22180
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC10_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b221ec
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC10_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b221f4
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC5_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21180
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC5_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b211ec
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC5_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b211f4
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC11_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30200
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC11_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30208
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC12_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31200
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC12_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31208
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC13_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32200
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC13_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32208
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC14_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33200
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC14_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33208
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC1_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28200
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC1_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28208
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC2_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29200
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC2_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29208
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC3_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a200
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC3_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a208
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC4_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b200
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC4_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b208
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC6_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c200
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC6_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c208
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC7_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d200
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC7_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d208
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC8_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e200
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC8_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e208
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC9_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f200
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC9_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f208
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC0_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20200
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC0_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2026c
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC0_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20274
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC10_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22200
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC10_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2226c
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC10_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22274
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC5_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21200
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC5_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2126c
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC5_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21274
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC11_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30280
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC11_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30288
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC12_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31280
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC12_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31288
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC13_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32280
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC13_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32288
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC14_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33280
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC14_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33288
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC1_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28280
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC1_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28288
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC2_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29280
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC2_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29288
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC3_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a280
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC3_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a288
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC4_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b280
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC4_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b288
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC6_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c280
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC6_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c288
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC7_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d280
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC7_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d288
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC8_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e280
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC8_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e288
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC9_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f280
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC9_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f288
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC0_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20280
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC0_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b202ec
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC0_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b202f4
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC10_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22280
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC10_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b222ec
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC10_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b222f4
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC5_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21280
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC5_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b212ec
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC5_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b212f4
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC11_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30300
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC11_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30308
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC12_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31300
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC12_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31308
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC13_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32300
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC13_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32308
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC14_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33300
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC14_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33308
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC1_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28300
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC1_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28308
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC2_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29300
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC2_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29308
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC3_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a300
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC3_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a308
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC4_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b300
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC4_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b308
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC6_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c300
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC6_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c308
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC7_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d300
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC7_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d308
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC8_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e300
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC8_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e308
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC9_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f300
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC9_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f308
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC0_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20300
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC0_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2036c
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC0_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20374
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC10_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22300
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC10_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2236c
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC10_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22374
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC5_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21300
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC5_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2136c
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC5_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21374
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC11_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30380
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC11_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30388
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC12_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31380
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC12_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31388
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC13_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32380
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC13_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32388
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC14_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33380
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC14_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33388
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC1_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28380
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC1_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28388
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC2_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29380
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC2_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29388
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC3_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a380
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC3_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a388
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC4_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b380
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC4_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b388
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC6_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c380
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC6_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c388
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC7_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d380
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC7_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d388
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC8_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e380
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC8_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e388
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC9_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f380
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC9_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f388
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC0_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20380
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC0_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b203ec
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC0_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b203f4
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC10_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22380
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC10_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b223ec
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC10_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b223f4
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC5_PREG_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21380
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC5_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b213ec
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC5_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b213f4
echo "NV_XBAR_MXBAR_PRI_GPCS_EG_GNIC_PREG_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013cc00
echo "NV_XBAR_MXBAR_PRI_GPCS_EG_GNIC_PREG_TEX_EAT_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013cc08
echo "NV_XBAR_MXBAR_PRI_GPCS_IG_GNIC_PREG_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013cb80
echo "NV_XBAR_MXBAR_PRI_GPCS_IG_GNIC_PREG_XLAT_ARB_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013cbec
echo "NV_XBAR_MXBAR_PRI_GPCS_IG_GNIC_PREG_XLAT_SM2SM_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013cbf4
echo "NV_XBAR_PRI_GXBAR0_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b000
echo "NV_XBAR_PRI_GXBAR1_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b080
echo "NV_XBAR_PRI_GXBAR2_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b100
echo "NV_XBAR_PRI_GXBAR3_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b180
echo "NV_XBAR_PRI_GXBAR4_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b200
echo "NV_XBAR_PRI_GXBAR5_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b280
echo "NV_XBAR_PRI_GXBAR6_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b300
echo "NV_XBAR_PRI_GXBAR7_CG_IDLE_CG_EN,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b380
echo "NV_XBAR_PRI_GXBARS_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013cb00
echo "NV_XBAR_PRI_NXBAR0_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00d63810
echo "NV_XBAR_PRI_SXBAR0_CTRL_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013ea34
echo "NV_XBAR_PRI_SXBAR0_FOLD_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013ea00
echo "NV_XBAR_PRI_SXBAR1_CTRL_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013eab4
echo "NV_XBAR_PRI_SXBAR1_FOLD_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013ea80
echo "NV_XBAR_PRI_SXBAR2_CTRL_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013eb34
echo "NV_XBAR_PRI_SXBAR2_FOLD_CG_IDLE_CG_EN,  6:6,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013eb00
echo "NV_XPL_SHARED_PL_PAD_CTL_PRI_XPL_XCLK_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xe40520
echo "NV_XTL_MMB_PXUC_PRI_XTL_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xe64ff0
echo "NV_XTL_SYS_PRI_PCIE_CG_IDLE_CG_EN,  6:6,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xe6e3f0
