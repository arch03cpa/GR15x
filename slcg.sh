#sudo ## NVPEX Script to read all SLCG Registers ##
echo "NV_CE_BASE_PRI_CE_FE_CG1_SLCG,  31:1,  0x1800,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x104204
echo "NV_CE_BASE_PRI_CE_FE_CG1_SLCG,  31:1,  0x1800,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x106204
echo "NV_CE_PRI_CE_FE_CG1_SLCG,  31:1,  0x1800, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00104204
echo "NV_CTRL1_PRI_GIN_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00d26a2c
echo "NV_CTRL_PRI_GIN_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b66a2c
echo "NV_CXL_BRG_0_CG1_SLCG,  15:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f8220
echo "NV_CXL_BRG_CG1_SLCG,  15:0,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8f8220
echo "NV_GIN_PRI_GIN_CG1_SLCG,  2:1,  0x0,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2d06a2c
echo "NV_GIN_PRI_GIN_CG1_SLCG,  2:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb66a2c
echo "NV_GIN_PRI_GIN_CG1_SLCG,  2:1,  0x0,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd26a2c
echo "NV_HUBMMU_PRI_MMU0_CG1_SLCG,  11:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0088a39c
echo "NV_HUBMMU_PRI_MMU1_CG1_SLCG,  11:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0089a39c
echo "NV_MFC_PLM3_FBIF_CG1_SLCG,  3:0,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xa74474
echo "NV_MFC_PLM3_FBIF_CG1_SLCG,  3:0,  0x0,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xa76474
echo "NV_MSE_FALCON_CG2_SLCG,  17:1,  0x80,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2c00134
echo "NV_MSE_FALCON_SAFETY_CTRL_RISCV_DCLS_INOUT_DFF_SLCG,  12:12,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2c002f4
echo "NV_MSE_RISCV_CG2_SLCG,  1:0,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2c00798
echo "NV_MSE_RISCV_CORE1_CG2_SLCG,  1:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2c01c98
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a00b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a01b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a02b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a03b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a04b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a05b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a06b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a07b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a08b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a09b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a0ab34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a0bb34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a0cb34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a0db34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a0eb34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=15" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a0fb34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=16" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a10b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=17" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a11b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=18" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a12b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=19" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a13b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=20" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a14b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=21" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a15b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=22" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a16b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=23" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a17b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=24" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a18b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=25" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a19b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=26" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a1ab34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=27" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a1bb34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=28" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a1cb34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=29" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a1db34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=30" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a1eb34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=31" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a1fb34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=32" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a20b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=33" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a21b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=34" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a22b34
echo "NV_NVLPW_MVB_RX_MVB_RX_CG1_SLCG,  0:0,  NA,  0-base register inst=35" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a23b34
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a00f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a01f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a02f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a03f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a04f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a05f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a06f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a07f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a08f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a09f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a0af30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a0bf30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a0cf30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a0df30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a0ef30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=15" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a0ff30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=16" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a10f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=17" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a11f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=18" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a12f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=19" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a13f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=20" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a14f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=21" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a15f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=22" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a16f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=23" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a17f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=24" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a18f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=25" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a19f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=26" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a1af30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=27" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a1bf30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=28" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a1cf30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=29" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a1df30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=30" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a1ef30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=31" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a1ff30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=32" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a20f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=33" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a21f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=34" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a22f30
echo "NV_NVLPW_MVB_TX_MVB_TX_CG1_SLCG,  0:0,  NA,  0-base register inst=35" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a23f30
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x202e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x206e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x20ae048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x20ee048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x212e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x216e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x21ae048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x21ee048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x222e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x226e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x22ae048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x22ee048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x232e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x236e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x23ae048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=15" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x23ee048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=16" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x242e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=17" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x246e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=18" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x24ae048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=19" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x24ee048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=20" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x252e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=21" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x256e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=22" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x25ae048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=23" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x25ee048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=24" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x262e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=25" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x266e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=26" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x26ae048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=27" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x26ee048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=28" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x272e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=29" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x276e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=30" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x27ae048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=31" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x27ee048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=32" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x282e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=33" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x286e048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=34" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x28ae048
echo "NV_NVLPW_TREX_CG1_IO_SLCG,  1:1,  NA,  0-base register inst=35" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x28ee048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x202e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x206e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x20ae048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x20ee048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x212e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x216e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x21ae048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x21ee048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x222e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x226e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x22ae048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x22ee048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x232e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x236e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x23ae048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=15" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x23ee048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=16" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x242e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=17" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x246e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=18" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x24ae048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=19" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x24ee048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=20" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x252e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=21" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x256e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=22" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x25ae048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=23" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x25ee048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=24" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x262e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=25" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x266e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=26" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x26ae048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=27" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x26ee048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=28" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x272e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=29" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x276e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=30" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x27ae048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=31" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x27ee048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=32" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x282e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=33" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x286e048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=34" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x28ae048
echo "NV_NVLPW_TREX_CG1_SLCG,  0:0,  NA,  0-base register inst=35" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x28ee048
echo "NV_PC2C_CTCGRSS0_RISCV_FALCON_CG2_SLCG,  17:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x09040134
echo "NV_PC2C_CTCGRSS0_RISCV_RISCV_CG2_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x09040798
echo "NV_PC2C_CTCGRSS1_RISCV_FALCON_CG2_SLCG,  17:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x09043134
echo "NV_PC2C_CTCGRSS1_RISCV_RISCV_CG2_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x09043798
echo "NV_PCHIPLET_PWR_FBP0_CG1_SLCG,  0:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010c07c
echo "NV_PCHIPLET_PWR_FBP10_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010d47c
echo "NV_PCHIPLET_PWR_FBP11_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010d67c
echo "NV_PCHIPLET_PWR_FBP12_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010d87c
echo "NV_PCHIPLET_PWR_FBP13_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010da7c
echo "NV_PCHIPLET_PWR_FBP14_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010dc7c
echo "NV_PCHIPLET_PWR_FBP15_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010de7c
echo "NV_PCHIPLET_PWR_FBP1_CG1_SLCG,  0:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010c27c
echo "NV_PCHIPLET_PWR_FBP2_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010c47c
echo "NV_PCHIPLET_PWR_FBP3_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010c67c
echo "NV_PCHIPLET_PWR_FBP4_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010c87c
echo "NV_PCHIPLET_PWR_FBP5_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010ca7c
echo "NV_PCHIPLET_PWR_FBP6_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010cc7c
echo "NV_PCHIPLET_PWR_FBP7_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010ce7c
echo "NV_PCHIPLET_PWR_FBP8_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010d07c
echo "NV_PCHIPLET_PWR_FBP9_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010d27c
echo "NV_PCHIPLET_PWR_FBPS_CG1_SLCG,  0:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010e07c
echo "NV_PCHIPLET_PWR_GPC0_CG1_SLCG,  0:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e007c
echo "NV_PCHIPLET_PWR_GPC1_CG1_SLCG,  0:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e027c
echo "NV_PCHIPLET_PWR_GPC2_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e047c
echo "NV_PCHIPLET_PWR_GPC3_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e067c
echo "NV_PCHIPLET_PWR_GPC4_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e087c
echo "NV_PCHIPLET_PWR_GPC5_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e0a7c
echo "NV_PCHIPLET_PWR_GPC6_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e0c7c
echo "NV_PCHIPLET_PWR_GPC7_CG1_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e0e7c
echo "NV_PCHIPLET_PWR_GPCS_CG1_SLCG,  0:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008e4e7c
echo "NV_PCTCHBI0_CTCHBIRISCV_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00bcc134
echo "NV_PCTCHBI0_CTCHBIRISCV_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00bcc798
echo "NV_PCTCHBI1_CTCHBIRISCV_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00bdc134
echo "NV_PCTCHBI1_CTCHBIRISCV_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00bdc798
echo "NV_PCTCHBI_ZB_CTCHBIRISCV_FALCON_CG2_SLCG,  17:1,  0x80,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xa4c134
echo "NV_PCTCHBI_ZB_CTCHBIRISCV_FALCON_CG2_SLCG,  17:1,  0x80,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xa5c134
echo "NV_PCTCHBI_ZB_CTCHBIRISCV_FALCON_CG2_SLCG,  17:1,  0x80,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xbcc134
echo "NV_PCTCHBI_ZB_CTCHBIRISCV_FALCON_CG2_SLCG,  17:1,  0x80,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xbdc134
echo "NV_PCTCHBI_ZB_CTCHBIRISCV_RISCV_CG2_SLCG,  1:0,  0x0,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xa4c798
echo "NV_PCTCHBI_ZB_CTCHBIRISCV_RISCV_CG2_SLCG,  1:0,  0x0,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xa5c798
echo "NV_PCTCHBI_ZB_CTCHBIRISCV_RISCV_CG2_SLCG,  1:0,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xbcc798
echo "NV_PCTCHBI_ZB_CTCHBIRISCV_RISCV_CG2_SLCG,  1:0,  0x0,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xbdc798
echo "NV_PCTCUPHY_CTCUPHY_RISCV_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x09006134
echo "NV_PCTCUPHY_CTCUPHY_RISCV_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x09006798
echo "NV_PCTCUPHY_ZB_CTCUPHY_RISCV_FALCON_CG2_SLCG,  17:1,  0x80,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x9006134
echo "NV_PCTCUPHY_ZB_CTCUPHY_RISCV_RISCV_CG2_SLCG,  1:0,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x9006798
echo "NV_PERF_CCU_FBP0_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290038
echo "NV_PERF_CCU_FBP0_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290078
echo "NV_PERF_CCU_FBP10_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290a38
echo "NV_PERF_CCU_FBP10_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290a78
echo "NV_PERF_CCU_FBP11_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290b38
echo "NV_PERF_CCU_FBP11_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290b78
echo "NV_PERF_CCU_FBP12_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290c38
echo "NV_PERF_CCU_FBP12_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290c78
echo "NV_PERF_CCU_FBP13_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290d38
echo "NV_PERF_CCU_FBP13_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290d78
echo "NV_PERF_CCU_FBP14_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290e38
echo "NV_PERF_CCU_FBP14_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290e78
echo "NV_PERF_CCU_FBP15_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290f38
echo "NV_PERF_CCU_FBP15_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290f78
echo "NV_PERF_CCU_FBP1_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290138
echo "NV_PERF_CCU_FBP1_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290178
echo "NV_PERF_CCU_FBP2_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290238
echo "NV_PERF_CCU_FBP2_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290278
echo "NV_PERF_CCU_FBP3_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290338
echo "NV_PERF_CCU_FBP3_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290378
echo "NV_PERF_CCU_FBP4_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290438
echo "NV_PERF_CCU_FBP4_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290478
echo "NV_PERF_CCU_FBP5_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290538
echo "NV_PERF_CCU_FBP5_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290578
echo "NV_PERF_CCU_FBP6_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290638
echo "NV_PERF_CCU_FBP6_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290678
echo "NV_PERF_CCU_FBP7_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290738
echo "NV_PERF_CCU_FBP7_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290778
echo "NV_PERF_CCU_FBP8_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290838
echo "NV_PERF_CCU_FBP8_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290878
echo "NV_PERF_CCU_FBP9_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290938
echo "NV_PERF_CCU_FBP9_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x290978
echo "NV_PERF_CCU_FBPS_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a9038
echo "NV_PERF_CCU_FBPS_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a9078
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298038
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298078
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2980b8
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2980f8
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298138
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298178
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2981b8
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2981f8
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298238
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298278
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2982b8
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2982f8
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298338
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298378
echo "NV_PERF_CCU_GPC0_CG2_SLCG,  0:0,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2983b8
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298438
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298478
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2984b8
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2984f8
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298538
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298578
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2985b8
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2985f8
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298638
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298678
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2986b8
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2986f8
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298738
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298778
echo "NV_PERF_CCU_GPC1_CG2_SLCG,  0:0,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2987b8
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298838
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298878
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2988b8
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2988f8
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298938
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298978
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2989b8
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2989f8
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298a38
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298a78
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298ab8
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298af8
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298b38
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298b78
echo "NV_PERF_CCU_GPC2_CG2_SLCG,  0:0,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298bb8
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298c38
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298c78
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298cb8
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298cf8
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298d38
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298d78
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298db8
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298df8
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298e38
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298e78
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298eb8
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298ef8
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298f38
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298f78
echo "NV_PERF_CCU_GPC3_CG2_SLCG,  0:0,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x298fb8
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299038
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299078
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2990b8
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2990f8
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299138
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299178
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2991b8
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2991f8
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299238
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299278
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2992b8
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2992f8
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299338
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299378
echo "NV_PERF_CCU_GPC4_CG2_SLCG,  0:0,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2993b8
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299438
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299478
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2994b8
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2994f8
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299538
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299578
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2995b8
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2995f8
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299638
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299678
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2996b8
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2996f8
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299738
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299778
echo "NV_PERF_CCU_GPC5_CG2_SLCG,  0:0,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2997b8
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299838
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299878
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2998b8
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2998f8
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299938
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299978
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2999b8
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2999f8
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299a38
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299a78
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299ab8
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299af8
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299b38
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299b78
echo "NV_PERF_CCU_GPC6_CG2_SLCG,  0:0,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299bb8
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299c38
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299c78
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299cb8
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299cf8
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299d38
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299d78
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299db8
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299df8
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299e38
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299e78
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299eb8
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299ef8
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299f38
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299f78
echo "NV_PERF_CCU_GPC7_CG2_SLCG,  0:0,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x299fb8
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a9838
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a9878
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a98b8
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a98f8
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a9938
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a9978
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a99b8
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a99f8
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a9a38
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a9a78
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a9ab8
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a9af8
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a9b38
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a9b78
echo "NV_PERF_CCU_GPCS_CG2_SLCG,  0:0,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2a9bb8
echo "NV_PERF_CCU_IODN0_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b0038
echo "NV_PERF_CCU_IODN0_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b0078
echo "NV_PERF_CCU_IODN0_CG2_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b00b8
echo "NV_PERF_CCU_IODN0_CG2_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b00f8
echo "NV_PERF_CCU_IODN0_CG2_SLCG,  0:0,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b0138
echo "NV_PERF_CCU_IODN0_CG2_SLCG,  0:0,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b0178
echo "NV_PERF_CCU_IODN0_CG2_SLCG,  0:0,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b01b8
echo "NV_PERF_CCU_IODN0_CG2_SLCG,  0:0,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b01f8
echo "NV_PERF_CCU_IODN0_CG2_SLCG,  0:0,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b0238
echo "NV_PERF_CCU_IODN0_CG2_SLCG,  0:0,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b0278
echo "NV_PERF_CCU_IODN0_CG2_SLCG,  0:0,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b02b8
echo "NV_PERF_CCU_IODN0_CG2_SLCG,  0:0,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b02f8
echo "NV_PERF_CCU_IODS0_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b1038
echo "NV_PERF_CCU_IODS0_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b1078
echo "NV_PERF_CCU_IODS0_CG2_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b10b8
echo "NV_PERF_CCU_IODS0_CG2_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b10f8
echo "NV_PERF_CCU_IODS0_CG2_SLCG,  0:0,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b1138
echo "NV_PERF_CCU_IODS0_CG2_SLCG,  0:0,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b1178
echo "NV_PERF_CCU_IODS0_CG2_SLCG,  0:0,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b11b8
echo "NV_PERF_CCU_IODS0_CG2_SLCG,  0:0,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b11f8
echo "NV_PERF_CCU_IODS0_CG2_SLCG,  0:0,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b1238
echo "NV_PERF_CCU_IODS0_CG2_SLCG,  0:0,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1b1278
echo "NV_PERF_CCU_SYS0_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b5038
echo "NV_PERF_CCU_SYS0_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b5078
echo "NV_PERF_CCU_SYS0_CG2_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b50b8
echo "NV_PERF_CCU_SYS0_CG2_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b50f8
echo "NV_PERF_CCU_SYS1_CG2_SLCG,  0:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b5138
echo "NV_PERF_CCU_SYS1_CG2_SLCG,  0:0,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b5178
echo "NV_PERF_CCU_SYS1_CG2_SLCG,  0:0,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b51b8
echo "NV_PERF_CCU_SYS1_CG2_SLCG,  0:0,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b51f8
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090008
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090088
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090108
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090188
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090208
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090288
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090308
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090388
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090408
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090488
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090508
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090588
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090608
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090688
echo "NV_PERF_HEM_GPC0_CG2_SLCG,  31:31,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090708
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090808
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090888
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090908
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090988
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090a08
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090a88
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090b08
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090b88
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090c08
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090c88
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090d08
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090d88
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090e08
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090e88
echo "NV_PERF_HEM_GPC1_CG2_SLCG,  31:31,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8090f08
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091008
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091088
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091108
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091188
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091208
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091288
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091308
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091388
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091408
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091488
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091508
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091588
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091608
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091688
echo "NV_PERF_HEM_GPC2_CG2_SLCG,  31:31,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091708
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091808
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091888
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091908
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091988
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091a08
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091a88
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091b08
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091b88
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091c08
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091c88
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091d08
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091d88
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091e08
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091e88
echo "NV_PERF_HEM_GPC3_CG2_SLCG,  31:31,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8091f08
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092008
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092088
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092108
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092188
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092208
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092288
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092308
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092388
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092408
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092488
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092508
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092588
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092608
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092688
echo "NV_PERF_HEM_GPC4_CG2_SLCG,  31:31,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092708
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092808
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092888
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092908
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092988
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092a08
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092a88
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092b08
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092b88
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092c08
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092c88
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092d08
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092d88
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092e08
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092e88
echo "NV_PERF_HEM_GPC5_CG2_SLCG,  31:31,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8092f08
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093008
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093088
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093108
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093188
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093208
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093288
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093308
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093388
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093408
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093488
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093508
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093588
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093608
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093688
echo "NV_PERF_HEM_GPC6_CG2_SLCG,  31:31,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093708
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093808
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093888
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093908
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093988
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093a08
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093a88
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093b08
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093b88
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093c08
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093c88
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093d08
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093d88
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093e08
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093e88
echo "NV_PERF_HEM_GPC7_CG2_SLCG,  31:31,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8093f08
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098008
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098088
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098108
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  NA,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098188
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  NA,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098208
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  NA,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098288
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  NA,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098308
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  NA,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098388
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  NA,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098408
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  NA,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098488
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  NA,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098508
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  NA,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098588
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  NA,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098608
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  NA,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098688
echo "NV_PERF_HEM_GPCS_CG2_SLCG,  31:31,  NA,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8098708
echo "NV_PERF_HEM_SYS0_CG2_SLCG,  31:31,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b6c08
echo "NV_PERF_HEM_SYS0_CG2_SLCG,  31:31,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b6c88
echo "NV_PERF_HEM_SYS0_CG2_SLCG,  31:31,  0x1,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b6d08
echo "NV_PERF_HEM_SYS0_CG2_SLCG,  31:31,  0x1,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b6d88
echo "NV_PERF_HEM_SYS1_CG2_SLCG,  31:31,  0x1,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b6e08
echo "NV_PERF_HEM_SYS1_CG2_SLCG,  31:31,  0x1,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b6e88
echo "NV_PERF_HEM_SYS1_CG2_SLCG,  31:31,  0x1,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b6f08
echo "NV_PERF_HEM_SYS1_CG2_SLCG,  31:31,  0x1,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x2b6f88
echo "NV_PERF_PMASYS_MONITORING_CG2_SECURE_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b0010
echo "NV_PERF_PMASYS_PROFILING_CG2_SECURE_SLCG,  0:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b08c4
echo "NV_PERF_PMASYS_SYS0_MONITORING_CG2_SECURE_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b0010
echo "NV_PERF_PMASYS_SYS0_PROFILING_CG2_SECURE_SLCG,  0:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b08c4
echo "NV_PERF_PMASYS_SYS1_MONITORING_CG2_SECURE_SLCG,  0:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b2010
echo "NV_PERF_PMASYS_SYS1_PROFILING_CG2_SECURE_SLCG,  0:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b28c4
echo "NV_PERF_PMMFBPROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a000c
echo "NV_PERF_PMMFBPROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a009c
echo "NV_PERF_PMMFBPROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a0090
echo "NV_PERF_PMMFBP_FBP0ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a000c
echo "NV_PERF_PMMFBP_FBP0ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a009c
echo "NV_PERF_PMMFBP_FBP0ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a0090
echo "NV_PERF_PMMFBP_FBP10ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a280c
echo "NV_PERF_PMMFBP_FBP10ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a289c
echo "NV_PERF_PMMFBP_FBP10ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a2890
echo "NV_PERF_PMMFBP_FBP11ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a2c0c
echo "NV_PERF_PMMFBP_FBP11ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a2c9c
echo "NV_PERF_PMMFBP_FBP11ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a2c90
echo "NV_PERF_PMMFBP_FBP12ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a300c
echo "NV_PERF_PMMFBP_FBP12ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a309c
echo "NV_PERF_PMMFBP_FBP12ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a3090
echo "NV_PERF_PMMFBP_FBP13ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a340c
echo "NV_PERF_PMMFBP_FBP13ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a349c
echo "NV_PERF_PMMFBP_FBP13ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a3490
echo "NV_PERF_PMMFBP_FBP14ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a380c
echo "NV_PERF_PMMFBP_FBP14ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a389c
echo "NV_PERF_PMMFBP_FBP14ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a3890
echo "NV_PERF_PMMFBP_FBP15ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a3c0c
echo "NV_PERF_PMMFBP_FBP15ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a3c9c
echo "NV_PERF_PMMFBP_FBP15ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a3c90
echo "NV_PERF_PMMFBP_FBP1ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a040c
echo "NV_PERF_PMMFBP_FBP1ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a049c
echo "NV_PERF_PMMFBP_FBP1ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a0490
echo "NV_PERF_PMMFBP_FBP2ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a080c
echo "NV_PERF_PMMFBP_FBP2ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a089c
echo "NV_PERF_PMMFBP_FBP2ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a0890
echo "NV_PERF_PMMFBP_FBP3ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a0c0c
echo "NV_PERF_PMMFBP_FBP3ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a0c9c
echo "NV_PERF_PMMFBP_FBP3ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a0c90
echo "NV_PERF_PMMFBP_FBP4ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a100c
echo "NV_PERF_PMMFBP_FBP4ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a109c
echo "NV_PERF_PMMFBP_FBP4ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a1090
echo "NV_PERF_PMMFBP_FBP5ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a140c
echo "NV_PERF_PMMFBP_FBP5ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a149c
echo "NV_PERF_PMMFBP_FBP5ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a1490
echo "NV_PERF_PMMFBP_FBP6ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a180c
echo "NV_PERF_PMMFBP_FBP6ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a189c
echo "NV_PERF_PMMFBP_FBP6ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a1890
echo "NV_PERF_PMMFBP_FBP7ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a1c0c
echo "NV_PERF_PMMFBP_FBP7ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a1c9c
echo "NV_PERF_PMMFBP_FBP7ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a1c90
echo "NV_PERF_PMMFBP_FBP8ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a200c
echo "NV_PERF_PMMFBP_FBP8ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a209c
echo "NV_PERF_PMMFBP_FBP8ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a2090
echo "NV_PERF_PMMFBP_FBP9ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a240c
echo "NV_PERF_PMMFBP_FBP9ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a249c
echo "NV_PERF_PMMFBP_FBP9ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a2490
echo "NV_PERF_PMMFBP_FBPSROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002aa00c
echo "NV_PERF_PMMFBP_FBPSROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002aa09c
echo "NV_PERF_PMMFBP_FBPSROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002aa090
echo "NV_PERF_PMMGPCROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a400c
echo "NV_PERF_PMMGPCROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a409c
echo "NV_PERF_PMMGPCROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a4090
echo "NV_PERF_PMMGPC_GPC0ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a400c
echo "NV_PERF_PMMGPC_GPC0ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a409c
echo "NV_PERF_PMMGPC_GPC0ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a4090
echo "NV_PERF_PMMGPC_GPC1ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a440c
echo "NV_PERF_PMMGPC_GPC1ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a449c
echo "NV_PERF_PMMGPC_GPC1ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a4490
echo "NV_PERF_PMMGPC_GPC2ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a480c
echo "NV_PERF_PMMGPC_GPC2ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a489c
echo "NV_PERF_PMMGPC_GPC2ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a4890
echo "NV_PERF_PMMGPC_GPC3ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a4c0c
echo "NV_PERF_PMMGPC_GPC3ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a4c9c
echo "NV_PERF_PMMGPC_GPC3ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a4c90
echo "NV_PERF_PMMGPC_GPC4ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a500c
echo "NV_PERF_PMMGPC_GPC4ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a509c
echo "NV_PERF_PMMGPC_GPC4ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a5090
echo "NV_PERF_PMMGPC_GPC5ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a540c
echo "NV_PERF_PMMGPC_GPC5ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a549c
echo "NV_PERF_PMMGPC_GPC5ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a5490
echo "NV_PERF_PMMGPC_GPC6ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a580c
echo "NV_PERF_PMMGPC_GPC6ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a589c
echo "NV_PERF_PMMGPC_GPC6ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a5890
echo "NV_PERF_PMMGPC_GPC7ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a5c0c
echo "NV_PERF_PMMGPC_GPC7ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a5c9c
echo "NV_PERF_PMMGPC_GPC7ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002a5c90
echo "NV_PERF_PMMGPC_GPCSROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002aa40c
echo "NV_PERF_PMMGPC_GPCSROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002aa49c
echo "NV_PERF_PMMGPC_GPCSROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002aa490
echo "NV_PERF_PMMIODNROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001b200c
echo "NV_PERF_PMMIODNROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001b209c
echo "NV_PERF_PMMIODNROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001b2090
echo "NV_PERF_PMMIODN_IODN0ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001b200c
echo "NV_PERF_PMMIODN_IODN0ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001b209c
echo "NV_PERF_PMMIODN_IODN0ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001b2090
echo "NV_PERF_PMMIODSROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001b240c
echo "NV_PERF_PMMIODSROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001b249c
echo "NV_PERF_PMMIODSROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001b2490
echo "NV_PERF_PMMIODS_IODS0ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001b240c
echo "NV_PERF_PMMIODS_IODS0ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001b249c
echo "NV_PERF_PMMIODS_IODS0ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001b2490
echo "NV_PERF_PMMSYSROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b400c
echo "NV_PERF_PMMSYSROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b409c
echo "NV_PERF_PMMSYSROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b4090
echo "NV_PERF_PMMSYS_SYS0ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b400c
echo "NV_PERF_PMMSYS_SYS0ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b409c
echo "NV_PERF_PMMSYS_SYS0ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b4090
echo "NV_PERF_PMMSYS_SYS1ROUTER_MONITORING_CG2_SECURE_SLCG,  31:31,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b440c
echo "NV_PERF_PMMSYS_SYS1ROUTER_PERFMON_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b449c
echo "NV_PERF_PMMSYS_SYS1ROUTER_PROFILING_CG2_SECURE_SLCG,  31:31,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x002b4490
echo "NV_PFBFALCON_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009a4134
echo "NV_PFBFALCON_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009a4674
echo "NV_PFBFALCON_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009a4b98
echo "NV_PFB_CEHUB0_PRI_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac03f4
echo "NV_PFB_CEHUB0_PRI_RR_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac0bf4
echo "NV_PFB_CEHUB1_PRI_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac13f4
echo "NV_PFB_CEHUB1_PRI_RR_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac1bf4
echo "NV_PFB_CEHUB2_PRI_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac23f4
echo "NV_PFB_CEHUB2_PRI_RR_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac2bf4
echo "NV_PFB_CEHUB3_PRI_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac83f4
echo "NV_PFB_CEHUB3_PRI_RR_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac8bf4
echo "NV_PFB_CEHUB4_PRI_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac93f4
echo "NV_PFB_CEHUB4_PRI_RR_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00ac9bf4
echo "NV_PFB_CEHUB5_PRI_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00aca3f4
echo "NV_PFB_CEHUB5_PRI_RR_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00acabf4
echo "NV_PFB_FBHUB0_PRI_FBHUB_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008a0114
echo "NV_PFB_FBHUB1_PRI_FBHUB_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008a4114
echo "NV_PFB_FBHUB_BASE_PRI_FBHUB_IG_CG1_SLCG,  31:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a0114
echo "NV_PFB_FBHUB_BASE_PRI_FBHUB_IG_CG1_SLCG,  31:1,  0x0,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a4114
echo "NV_PFB_FBHUB_PRI_FBHUB_IG_CG1_SLCG,  31:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a0114
echo "NV_PFB_FBHUB_PRI_FBHUB_IG_CG1_SLCG,  31:1,  0x0,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x8a4114
echo "NV_PFB_FBPA_0_CG1_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07000280
echo "NV_PFB_FBPA_10_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07040280
echo "NV_PFB_FBPA_11_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07044280
echo "NV_PFB_FBPA_12_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07048280
echo "NV_PFB_FBPA_13_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0704c280
echo "NV_PFB_FBPA_14_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07050280
echo "NV_PFB_FBPA_15_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07054280
echo "NV_PFB_FBPA_16_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07058280
echo "NV_PFB_FBPA_17_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0705c280
echo "NV_PFB_FBPA_18_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07060280
echo "NV_PFB_FBPA_19_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07064280
echo "NV_PFB_FBPA_1A_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07068280
echo "NV_PFB_FBPA_1B_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0706c280
echo "NV_PFB_FBPA_1C_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07070280
echo "NV_PFB_FBPA_1D_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07074280
echo "NV_PFB_FBPA_1E_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07078280
echo "NV_PFB_FBPA_1F_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0707c280
echo "NV_PFB_FBPA_1_CG1_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07004280
echo "NV_PFB_FBPA_20_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07080280
echo "NV_PFB_FBPA_21_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07084280
echo "NV_PFB_FBPA_22_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07088280
echo "NV_PFB_FBPA_23_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0708c280
echo "NV_PFB_FBPA_24_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07090280
echo "NV_PFB_FBPA_25_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07094280
echo "NV_PFB_FBPA_26_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07098280
echo "NV_PFB_FBPA_27_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0709c280
echo "NV_PFB_FBPA_28_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070a0280
echo "NV_PFB_FBPA_29_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070a4280
echo "NV_PFB_FBPA_2A_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070a8280
echo "NV_PFB_FBPA_2B_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070ac280
echo "NV_PFB_FBPA_2C_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070b0280
echo "NV_PFB_FBPA_2D_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070b4280
echo "NV_PFB_FBPA_2E_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070b8280
echo "NV_PFB_FBPA_2F_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070bc280
echo "NV_PFB_FBPA_2_CG1_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07008280
echo "NV_PFB_FBPA_30_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070c0280
echo "NV_PFB_FBPA_31_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070c4280
echo "NV_PFB_FBPA_32_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070c8280
echo "NV_PFB_FBPA_33_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070cc280
echo "NV_PFB_FBPA_34_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070d0280
echo "NV_PFB_FBPA_35_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070d4280
echo "NV_PFB_FBPA_36_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070d8280
echo "NV_PFB_FBPA_37_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070dc280
echo "NV_PFB_FBPA_38_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070e0280
echo "NV_PFB_FBPA_39_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070e4280
echo "NV_PFB_FBPA_3A_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070e8280
echo "NV_PFB_FBPA_3B_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070ec280
echo "NV_PFB_FBPA_3C_CG1_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070f0280
echo "NV_PFB_FBPA_3D_CG1_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070f4280
echo "NV_PFB_FBPA_3E_CG1_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070f8280
echo "NV_PFB_FBPA_3F_CG1_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x070fc280
echo "NV_PFB_FBPA_3_CG1_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0700c280
echo "NV_PFB_FBPA_4_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07010280
echo "NV_PFB_FBPA_5_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07014280
echo "NV_PFB_FBPA_6_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07018280
echo "NV_PFB_FBPA_7_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0701c280
echo "NV_PFB_FBPA_8_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07020280
echo "NV_PFB_FBPA_9_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07024280
echo "NV_PFB_FBPA_A_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07028280
echo "NV_PFB_FBPA_B_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0702c280
echo "NV_PFB_FBPA_CG1_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009a0280
echo "NV_PFB_FBPA_C_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07030280
echo "NV_PFB_FBPA_D_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07034280
echo "NV_PFB_FBPA_E_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07038280
echo "NV_PFB_FBPA_F_CG1_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0703c280
echo "NV_PFB_FBPA_MC_0_CG1_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00980280
echo "NV_PFB_FBPA_MC_1_CG1_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00984280
echo "NV_PFB_FBPA_MC_2_CG1_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00988280
echo "NV_PFB_HSHUB0_PRI_EG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008707f4
echo "NV_PFB_HSHUB0_PRI_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008703f4
echo "NV_PFB_HSHUB0_PRI_RR_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00870bf4
echo "NV_PFB_HSHUB1_PRI_EG_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008717f4
echo "NV_PFB_HSHUB1_PRI_IG_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008713f4
echo "NV_PFB_HSHUB1_PRI_RR_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00871bf4
echo "NV_PFB_HSHUB2_PRI_EG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008727f4
echo "NV_PFB_HSHUB2_PRI_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008723f4
echo "NV_PFB_HSHUB2_PRI_RR_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00872bf4
echo "NV_PFB_HSHUB3_PRI_EG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008737f4
echo "NV_PFB_HSHUB3_PRI_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008733f4
echo "NV_PFB_HSHUB3_PRI_RR_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00873bf4
echo "NV_PFB_HSHUB4_PRI_EG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008747f4
echo "NV_PFB_HSHUB4_PRI_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008743f4
echo "NV_PFB_HSHUB4_PRI_RR_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00874bf4
echo "NV_PFB_HSHUB5_PRI_EG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008757f4
echo "NV_PFB_HSHUB5_PRI_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008753f4
echo "NV_PFB_HSHUB5_PRI_RR_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00875bf4
echo "NV_PFB_HSHUB6_PRI_EG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008767f4
echo "NV_PFB_HSHUB6_PRI_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008763f4
echo "NV_PFB_HSHUB6_PRI_RR_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00876bf4
echo "NV_PFB_HSHUB7_PRI_EG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008777f4
echo "NV_PFB_HSHUB7_PRI_IG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008773f4
echo "NV_PFB_HSHUB7_PRI_RR_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00877bf4
echo "NV_PFB_HSHUB8_PRI_EG_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008787f4
echo "NV_PFB_HSHUB8_PRI_IG_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008783f4
echo "NV_PFB_HSHUB8_PRI_RR_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00878bf4
echo "NV_PFB_HSHUB9_PRI_EG_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008797f4
echo "NV_PFB_HSHUB9_PRI_IG_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008793f4
echo "NV_PFB_HSHUB9_PRI_RR_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00879bf4
echo "NV_PFB_HSMMU0_PRI_MMU_CG1_SLCG,  11:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xa0b4
echo "NV_PFB_HSMMU1_PRI_MMU_CG1_SLCG,  11:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xa4b4
echo "NV_PFB_HSMMU2_PRI_MMU_CG1_SLCG,  11:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0011c0b4
echo "NV_PFB_HSMMU3_PRI_MMU_CG1_SLCG,  11:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0011c4b4
echo "NV_PFB_PRI_MMU_CG1_SLCG,  11:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001fa39c
echo "NV_PFSP_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f0134
echo "NV_PFSP_FALCON_SAFETY_CTRL_RISCV_DCLS_INOUT_DFF_SLCG,  12:12,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f02f4
echo "NV_PFSP_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f1274
echo "NV_PFSP_MISC_CG1_SLCG,  31:0,  0x80000060, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f283c
echo "NV_PFSP_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f0798
echo "NV_PGC61_LPSEC_CG1_SLCG,  7:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00aa6b04
echo "NV_PGC62_LPSEC_CG1_SLCG,  7:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00aaab04
echo "NV_PGC63_LPSEC_CG1_SLCG,  7:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00aaeb04
echo "NV_PGC6_LPSEC_CG1_SLCG,  7:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0011ab04
echo "NV_PGC6_ZB_LPSEC_CG1_SLCG,  7:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x11ab04
echo "NV_PGC6_ZB_LPSEC_CG1_SLCG,  7:1,  0x0,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xaa6b04
echo "NV_PGRAPH_PRI_CWD_CG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00405bf4
echo "NV_PGRAPH_PRI_FECS_CG1_SLCG,  15:1,  0x2000, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00409894
echo "NV_PGRAPH_PRI_FECS_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0040c134
echo "NV_PGRAPH_PRI_FECS_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0040c798
echo "NV_PGRAPH_PRI_FE_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x004041f4
echo "NV_PGRAPH_PRI_GPC0_GCC_CG1_SLCG,  8:1,  0xff, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00501024
echo "NV_PGRAPH_PRI_GPC0_GPCCS_CG1_SLCG,  15:1,  0x2000, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00502894
echo "NV_PGRAPH_PRI_GPC0_GPCCS_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00505134
echo "NV_PGRAPH_PRI_GPC0_GPCCS_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00505798
echo "NV_PGRAPH_PRI_GPC0_MMU0_CG1_SLCG,  11:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0050149c
echo "NV_PGRAPH_PRI_GPC0_MMU1_CG1_SLCG,  11:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0050159c
echo "NV_PGRAPH_PRI_GPC0_MMU2_CG1_SLCG,  11:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0050169c
echo "NV_PGRAPH_PRI_GPC0_MMU_CG1_SLCG,  11:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0050089c
echo "NV_PGRAPH_PRI_GPC0_TPC0_CAU_CG2_SLCG,  0:0,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x5061a0
echo "NV_PGRAPH_PRI_GPC0_TPC0_CAU_CG2_SLCG,  0:0,  0x0,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x5061e0
echo "NV_PGRAPH_PRI_GPC0_TPC0_MPC_CG1_SLCG,  4:1,  0xf, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00506474
echo "NV_PGRAPH_PRI_GPC0_TPC0_SM_BLCG_0_CG1_SLCG,  17:1,  0x1fffa, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00506484
echo "NV_PGRAPH_PRI_GPC0_TPC0_SM_BLCG_1_CG1_SLCG,  31:1,  0x7f807900, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0050648c
echo "NV_PGRAPH_PRI_GPC0_TPC0_SM_BLCG_2_CG1_SLCG,  29:1,  0x1c2001a0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00506494
echo "NV_PGRAPH_PRI_GPC0_TPC0_SM_BLCG_4_CG1_SLCG,  13:1,  0x1ffc, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x005064a4
echo "NV_PGRAPH_PRI_GPC0_TPC0_SM_BLCG_6_CG1_SLCG,  12:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x005064b4
echo "NV_PGRAPH_PRI_GPC0_TPC0_SM_BLCG_7_CG1_SLCG,  12:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x005064ac
echo "NV_PGRAPH_PRI_GPC0_TPC0_TEX_F_CG1_SLCG,  5:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0050627c
echo "NV_PGRAPH_PRI_GPC0_TPC0_TEX_IN_CG1_SLCG,  3:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00506244
echo "NV_PGRAPH_PRI_GPC0_TPC0_TEX_MIPB_CG1_SLCG,  3:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00506284
echo "NV_PGRAPH_PRI_GPC0_TPC0_TEX_SAMP_CG1_SLCG,  8:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0050624c
echo "NV_PGRAPH_PRI_GPC0_TPC0_TEX_W_CG1_SLCG,  3:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0050625c
echo "NV_PGRAPH_PRI_GPC0_TPC0_TEX_X_CG1_SLCG,  5:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00506254
echo "NV_PGRAPH_PRI_GPC0_TPC0_TPCCS_CG1_SLCG,  7:0,  0x2, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00506524
echo "NV_PGRAPH_PRI_GPC0_TPCS_CAU_CG2_SLCG,  0:0,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x5041a0
echo "NV_PGRAPH_PRI_GPC0_TPCS_CAU_CG2_SLCG,  0:0,  0x0,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x5041e0
echo "NV_PGRAPH_PRI_GPC0_TPCS_MPC_CG1_SLCG,  4:1,  0xf, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00504474
echo "NV_PGRAPH_PRI_GPC0_TPCS_SM_BLCG_0_CG1_SLCG,  17:1,  0x1fffa, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00504484
echo "NV_PGRAPH_PRI_GPC0_TPCS_SM_BLCG_1_CG1_SLCG,  31:1,  0x7f807900, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0050448c
echo "NV_PGRAPH_PRI_GPC0_TPCS_SM_BLCG_2_CG1_SLCG,  29:1,  0x1c2001a0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00504494
echo "NV_PGRAPH_PRI_GPC0_TPCS_SM_BLCG_4_CG1_SLCG,  13:1,  0x1ffc, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x005044a4
echo "NV_PGRAPH_PRI_GPC0_TPCS_SM_BLCG_6_CG1_SLCG,  12:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x005044b4
echo "NV_PGRAPH_PRI_GPC0_TPCS_SM_BLCG_7_CG1_SLCG,  12:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x005044ac
echo "NV_PGRAPH_PRI_GPC0_TPCS_TEX_F_CG1_SLCG,  5:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0050427c
echo "NV_PGRAPH_PRI_GPC0_TPCS_TEX_IN_CG1_SLCG,  3:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00504244
echo "NV_PGRAPH_PRI_GPC0_TPCS_TEX_MIPB_CG1_SLCG,  3:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00504284
echo "NV_PGRAPH_PRI_GPC0_TPCS_TEX_SAMP_CG1_SLCG,  8:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0050424c
echo "NV_PGRAPH_PRI_GPC0_TPCS_TEX_W_CG1_SLCG,  3:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0050425c
echo "NV_PGRAPH_PRI_GPC0_TPCS_TEX_X_CG1_SLCG,  5:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00504254
echo "NV_PGRAPH_PRI_GPC0_TPCS_TPCCS_CG1_SLCG,  7:0,  0x2, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00504524
echo "NV_PGRAPH_PRI_GPCS_GCC_CG1_SLCG,  8:1,  0xff, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00421024
echo "NV_PGRAPH_PRI_GPCS_GPCCS_CG1_SLCG,  15:1,  0x2000, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00422894
echo "NV_PGRAPH_PRI_GPCS_GPCCS_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00425134
echo "NV_PGRAPH_PRI_GPCS_GPCCS_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00425798
echo "NV_PGRAPH_PRI_GPCS_MMU0_CG1_SLCG,  11:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0042149c
echo "NV_PGRAPH_PRI_GPCS_MMU1_CG1_SLCG,  11:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0042159c
echo "NV_PGRAPH_PRI_GPCS_MMU2_CG1_SLCG,  11:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0042169c
echo "NV_PGRAPH_PRI_GPCS_MMU_CG1_SLCG,  11:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0042089c
echo "NV_PGRAPH_PRI_GPCS_TPC0_CAU_CG2_SLCG,  0:0,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4261a0
echo "NV_PGRAPH_PRI_GPCS_TPC0_CAU_CG2_SLCG,  0:0,  0x0,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4261e0
echo "NV_PGRAPH_PRI_GPCS_TPC0_MPC_CG1_SLCG,  4:1,  0xf, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00426474
echo "NV_PGRAPH_PRI_GPCS_TPC0_SM_BLCG_0_CG1_SLCG,  17:1,  0x1fffa, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00426484
echo "NV_PGRAPH_PRI_GPCS_TPC0_SM_BLCG_1_CG1_SLCG,  31:1,  0x7f807900, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0042648c
echo "NV_PGRAPH_PRI_GPCS_TPC0_SM_BLCG_2_CG1_SLCG,  29:1,  0x1c2001a0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00426494
echo "NV_PGRAPH_PRI_GPCS_TPC0_SM_BLCG_4_CG1_SLCG,  13:1,  0x1ffc, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x004264a4
echo "NV_PGRAPH_PRI_GPCS_TPC0_SM_BLCG_6_CG1_SLCG,  12:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x004264b4
echo "NV_PGRAPH_PRI_GPCS_TPC0_SM_BLCG_7_CG1_SLCG,  12:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x004264ac
echo "NV_PGRAPH_PRI_GPCS_TPC0_TEX_F_CG1_SLCG,  5:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0042627c
echo "NV_PGRAPH_PRI_GPCS_TPC0_TEX_IN_CG1_SLCG,  3:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00426244
echo "NV_PGRAPH_PRI_GPCS_TPC0_TEX_MIPB_CG1_SLCG,  3:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00426284
echo "NV_PGRAPH_PRI_GPCS_TPC0_TEX_SAMP_CG1_SLCG,  8:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0042624c
echo "NV_PGRAPH_PRI_GPCS_TPC0_TEX_W_CG1_SLCG,  3:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0042625c
echo "NV_PGRAPH_PRI_GPCS_TPC0_TEX_X_CG1_SLCG,  5:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00426254
echo "NV_PGRAPH_PRI_GPCS_TPC0_TPCCS_CG1_SLCG,  7:0,  0x2, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00426524
echo "NV_PGRAPH_PRI_GPCS_TPCS_CAU_CG2_SLCG,  0:0,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4241a0
echo "NV_PGRAPH_PRI_GPCS_TPCS_CAU_CG2_SLCG,  0:0,  0x0,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x4241e0
echo "NV_PGRAPH_PRI_GPCS_TPCS_MPC_CG1_SLCG,  4:1,  0xf, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00424474
echo "NV_PGRAPH_PRI_GPCS_TPCS_SM_BLCG_0_CG1_SLCG,  17:1,  0x1fffa, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00424484
echo "NV_PGRAPH_PRI_GPCS_TPCS_SM_BLCG_1_CG1_SLCG,  31:1,  0x7f807900, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0042448c
echo "NV_PGRAPH_PRI_GPCS_TPCS_SM_BLCG_2_CG1_SLCG,  29:1,  0x1c2001a0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00424494
echo "NV_PGRAPH_PRI_GPCS_TPCS_SM_BLCG_4_CG1_SLCG,  13:1,  0x1ffc, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x004244a4
echo "NV_PGRAPH_PRI_GPCS_TPCS_SM_BLCG_6_CG1_SLCG,  12:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x004244b4
echo "NV_PGRAPH_PRI_GPCS_TPCS_SM_BLCG_7_CG1_SLCG,  12:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x004244ac
echo "NV_PGRAPH_PRI_GPCS_TPCS_TEX_F_CG1_SLCG,  5:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0042427c
echo "NV_PGRAPH_PRI_GPCS_TPCS_TEX_IN_CG1_SLCG,  3:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00424244
echo "NV_PGRAPH_PRI_GPCS_TPCS_TEX_MIPB_CG1_SLCG,  3:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00424284
echo "NV_PGRAPH_PRI_GPCS_TPCS_TEX_SAMP_CG1_SLCG,  8:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0042424c
echo "NV_PGRAPH_PRI_GPCS_TPCS_TEX_W_CG1_SLCG,  3:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0042425c
echo "NV_PGRAPH_PRI_GPCS_TPCS_TEX_X_CG1_SLCG,  5:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00424254
echo "NV_PGRAPH_PRI_GPCS_TPCS_TPCCS_CG1_SLCG,  7:0,  0x2, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00424524
echo "NV_PGRAPH_PRI_SKED_CG1_SLCG,  8:1,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00407004
echo "NV_PGSP_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00110134
echo "NV_PGSP_FALCON_SAFETY_CTRL_RISCV_DCLS_INOUT_DFF_SLCG,  12:12,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001102f4
echo "NV_PGSP_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00110674
echo "NV_PGSP_MISC_CG1_SLCG,  31:0,  0x80000060, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0011083c
echo "NV_PGSP_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00111398
echo "NV_PGSP_RISCV_CORE1_CG2_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00111c98
echo "NV_PLRCC_LRCC0_LRC0_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07500424
echo "NV_PLRCC_LRCC0_LRC1_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07500624
echo "NV_PLRCC_LRCC0_LRC2_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07500824
echo "NV_PLRCC_LRCC0_LRC3_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07500a24
echo "NV_PLRCC_LRCC0_LRCS_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07500024
echo "NV_PLRCC_LRCC10_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750a424
echo "NV_PLRCC_LRCC10_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750a624
echo "NV_PLRCC_LRCC10_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750a824
echo "NV_PLRCC_LRCC10_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750aa24
echo "NV_PLRCC_LRCC10_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750a024
echo "NV_PLRCC_LRCC11_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750b424
echo "NV_PLRCC_LRCC11_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750b624
echo "NV_PLRCC_LRCC11_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750b824
echo "NV_PLRCC_LRCC11_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750ba24
echo "NV_PLRCC_LRCC11_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750b024
echo "NV_PLRCC_LRCC12_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750c424
echo "NV_PLRCC_LRCC12_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750c624
echo "NV_PLRCC_LRCC12_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750c824
echo "NV_PLRCC_LRCC12_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750ca24
echo "NV_PLRCC_LRCC12_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750c024
echo "NV_PLRCC_LRCC13_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750d424
echo "NV_PLRCC_LRCC13_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750d624
echo "NV_PLRCC_LRCC13_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750d824
echo "NV_PLRCC_LRCC13_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750da24
echo "NV_PLRCC_LRCC13_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750d024
echo "NV_PLRCC_LRCC14_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750e424
echo "NV_PLRCC_LRCC14_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750e624
echo "NV_PLRCC_LRCC14_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750e824
echo "NV_PLRCC_LRCC14_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750ea24
echo "NV_PLRCC_LRCC14_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750e024
echo "NV_PLRCC_LRCC15_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750f424
echo "NV_PLRCC_LRCC15_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750f624
echo "NV_PLRCC_LRCC15_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750f824
echo "NV_PLRCC_LRCC15_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750fa24
echo "NV_PLRCC_LRCC15_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0750f024
echo "NV_PLRCC_LRCC16_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07510424
echo "NV_PLRCC_LRCC16_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07510624
echo "NV_PLRCC_LRCC16_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07510824
echo "NV_PLRCC_LRCC16_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07510a24
echo "NV_PLRCC_LRCC16_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07510024
echo "NV_PLRCC_LRCC17_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07511424
echo "NV_PLRCC_LRCC17_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07511624
echo "NV_PLRCC_LRCC17_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07511824
echo "NV_PLRCC_LRCC17_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07511a24
echo "NV_PLRCC_LRCC17_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07511024
echo "NV_PLRCC_LRCC18_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07512424
echo "NV_PLRCC_LRCC18_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07512624
echo "NV_PLRCC_LRCC18_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07512824
echo "NV_PLRCC_LRCC18_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07512a24
echo "NV_PLRCC_LRCC18_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07512024
echo "NV_PLRCC_LRCC19_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07513424
echo "NV_PLRCC_LRCC19_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07513624
echo "NV_PLRCC_LRCC19_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07513824
echo "NV_PLRCC_LRCC19_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07513a24
echo "NV_PLRCC_LRCC19_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07513024
echo "NV_PLRCC_LRCC1_LRC0_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07501424
echo "NV_PLRCC_LRCC1_LRC1_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07501624
echo "NV_PLRCC_LRCC1_LRC2_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07501824
echo "NV_PLRCC_LRCC1_LRC3_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07501a24
echo "NV_PLRCC_LRCC1_LRCS_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07501024
echo "NV_PLRCC_LRCC20_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07514424
echo "NV_PLRCC_LRCC20_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07514624
echo "NV_PLRCC_LRCC20_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07514824
echo "NV_PLRCC_LRCC20_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07514a24
echo "NV_PLRCC_LRCC20_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07514024
echo "NV_PLRCC_LRCC21_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07515424
echo "NV_PLRCC_LRCC21_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07515624
echo "NV_PLRCC_LRCC21_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07515824
echo "NV_PLRCC_LRCC21_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07515a24
echo "NV_PLRCC_LRCC21_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07515024
echo "NV_PLRCC_LRCC22_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07516424
echo "NV_PLRCC_LRCC22_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07516624
echo "NV_PLRCC_LRCC22_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07516824
echo "NV_PLRCC_LRCC22_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07516a24
echo "NV_PLRCC_LRCC22_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07516024
echo "NV_PLRCC_LRCC23_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07517424
echo "NV_PLRCC_LRCC23_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07517624
echo "NV_PLRCC_LRCC23_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07517824
echo "NV_PLRCC_LRCC23_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07517a24
echo "NV_PLRCC_LRCC23_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07517024
echo "NV_PLRCC_LRCC24_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07518424
echo "NV_PLRCC_LRCC24_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07518624
echo "NV_PLRCC_LRCC24_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07518824
echo "NV_PLRCC_LRCC24_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07518a24
echo "NV_PLRCC_LRCC24_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07518024
echo "NV_PLRCC_LRCC25_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07519424
echo "NV_PLRCC_LRCC25_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07519624
echo "NV_PLRCC_LRCC25_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07519824
echo "NV_PLRCC_LRCC25_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07519a24
echo "NV_PLRCC_LRCC25_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07519024
echo "NV_PLRCC_LRCC26_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751a424
echo "NV_PLRCC_LRCC26_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751a624
echo "NV_PLRCC_LRCC26_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751a824
echo "NV_PLRCC_LRCC26_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751aa24
echo "NV_PLRCC_LRCC26_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751a024
echo "NV_PLRCC_LRCC27_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751b424
echo "NV_PLRCC_LRCC27_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751b624
echo "NV_PLRCC_LRCC27_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751b824
echo "NV_PLRCC_LRCC27_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751ba24
echo "NV_PLRCC_LRCC27_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751b024
echo "NV_PLRCC_LRCC28_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751c424
echo "NV_PLRCC_LRCC28_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751c624
echo "NV_PLRCC_LRCC28_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751c824
echo "NV_PLRCC_LRCC28_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751ca24
echo "NV_PLRCC_LRCC28_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751c024
echo "NV_PLRCC_LRCC29_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751d424
echo "NV_PLRCC_LRCC29_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751d624
echo "NV_PLRCC_LRCC29_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751d824
echo "NV_PLRCC_LRCC29_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751da24
echo "NV_PLRCC_LRCC29_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751d024
echo "NV_PLRCC_LRCC2_LRC0_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07502424
echo "NV_PLRCC_LRCC2_LRC1_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07502624
echo "NV_PLRCC_LRCC2_LRC2_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07502824
echo "NV_PLRCC_LRCC2_LRC3_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07502a24
echo "NV_PLRCC_LRCC2_LRCS_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07502024
echo "NV_PLRCC_LRCC30_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751e424
echo "NV_PLRCC_LRCC30_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751e624
echo "NV_PLRCC_LRCC30_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751e824
echo "NV_PLRCC_LRCC30_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751ea24
echo "NV_PLRCC_LRCC30_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751e024
echo "NV_PLRCC_LRCC31_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751f424
echo "NV_PLRCC_LRCC31_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751f624
echo "NV_PLRCC_LRCC31_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751f824
echo "NV_PLRCC_LRCC31_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751fa24
echo "NV_PLRCC_LRCC31_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0751f024
echo "NV_PLRCC_LRCC32_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07520424
echo "NV_PLRCC_LRCC32_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07520624
echo "NV_PLRCC_LRCC32_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07520824
echo "NV_PLRCC_LRCC32_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07520a24
echo "NV_PLRCC_LRCC32_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07520024
echo "NV_PLRCC_LRCC33_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07521424
echo "NV_PLRCC_LRCC33_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07521624
echo "NV_PLRCC_LRCC33_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07521824
echo "NV_PLRCC_LRCC33_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07521a24
echo "NV_PLRCC_LRCC33_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07521024
echo "NV_PLRCC_LRCC34_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07522424
echo "NV_PLRCC_LRCC34_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07522624
echo "NV_PLRCC_LRCC34_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07522824
echo "NV_PLRCC_LRCC34_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07522a24
echo "NV_PLRCC_LRCC34_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07522024
echo "NV_PLRCC_LRCC35_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07523424
echo "NV_PLRCC_LRCC35_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07523624
echo "NV_PLRCC_LRCC35_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07523824
echo "NV_PLRCC_LRCC35_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07523a24
echo "NV_PLRCC_LRCC35_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07523024
echo "NV_PLRCC_LRCC36_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07524424
echo "NV_PLRCC_LRCC36_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07524624
echo "NV_PLRCC_LRCC36_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07524824
echo "NV_PLRCC_LRCC36_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07524a24
echo "NV_PLRCC_LRCC36_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07524024
echo "NV_PLRCC_LRCC37_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07525424
echo "NV_PLRCC_LRCC37_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07525624
echo "NV_PLRCC_LRCC37_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07525824
echo "NV_PLRCC_LRCC37_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07525a24
echo "NV_PLRCC_LRCC37_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07525024
echo "NV_PLRCC_LRCC38_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07526424
echo "NV_PLRCC_LRCC38_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07526624
echo "NV_PLRCC_LRCC38_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07526824
echo "NV_PLRCC_LRCC38_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07526a24
echo "NV_PLRCC_LRCC38_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07526024
echo "NV_PLRCC_LRCC39_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07527424
echo "NV_PLRCC_LRCC39_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07527624
echo "NV_PLRCC_LRCC39_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07527824
echo "NV_PLRCC_LRCC39_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07527a24
echo "NV_PLRCC_LRCC39_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07527024
echo "NV_PLRCC_LRCC3_LRC0_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07503424
echo "NV_PLRCC_LRCC3_LRC1_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07503624
echo "NV_PLRCC_LRCC3_LRC2_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07503824
echo "NV_PLRCC_LRCC3_LRC3_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07503a24
echo "NV_PLRCC_LRCC3_LRCS_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07503024
echo "NV_PLRCC_LRCC40_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07528424
echo "NV_PLRCC_LRCC40_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07528624
echo "NV_PLRCC_LRCC40_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07528824
echo "NV_PLRCC_LRCC40_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07528a24
echo "NV_PLRCC_LRCC40_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07528024
echo "NV_PLRCC_LRCC41_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07529424
echo "NV_PLRCC_LRCC41_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07529624
echo "NV_PLRCC_LRCC41_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07529824
echo "NV_PLRCC_LRCC41_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07529a24
echo "NV_PLRCC_LRCC41_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07529024
echo "NV_PLRCC_LRCC42_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752a424
echo "NV_PLRCC_LRCC42_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752a624
echo "NV_PLRCC_LRCC42_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752a824
echo "NV_PLRCC_LRCC42_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752aa24
echo "NV_PLRCC_LRCC42_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752a024
echo "NV_PLRCC_LRCC43_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752b424
echo "NV_PLRCC_LRCC43_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752b624
echo "NV_PLRCC_LRCC43_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752b824
echo "NV_PLRCC_LRCC43_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752ba24
echo "NV_PLRCC_LRCC43_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752b024
echo "NV_PLRCC_LRCC44_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752c424
echo "NV_PLRCC_LRCC44_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752c624
echo "NV_PLRCC_LRCC44_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752c824
echo "NV_PLRCC_LRCC44_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752ca24
echo "NV_PLRCC_LRCC44_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752c024
echo "NV_PLRCC_LRCC45_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752d424
echo "NV_PLRCC_LRCC45_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752d624
echo "NV_PLRCC_LRCC45_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752d824
echo "NV_PLRCC_LRCC45_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752da24
echo "NV_PLRCC_LRCC45_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752d024
echo "NV_PLRCC_LRCC46_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752e424
echo "NV_PLRCC_LRCC46_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752e624
echo "NV_PLRCC_LRCC46_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752e824
echo "NV_PLRCC_LRCC46_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752ea24
echo "NV_PLRCC_LRCC46_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752e024
echo "NV_PLRCC_LRCC47_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752f424
echo "NV_PLRCC_LRCC47_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752f624
echo "NV_PLRCC_LRCC47_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752f824
echo "NV_PLRCC_LRCC47_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752fa24
echo "NV_PLRCC_LRCC47_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0752f024
echo "NV_PLRCC_LRCC48_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07530424
echo "NV_PLRCC_LRCC48_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07530624
echo "NV_PLRCC_LRCC48_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07530824
echo "NV_PLRCC_LRCC48_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07530a24
echo "NV_PLRCC_LRCC48_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07530024
echo "NV_PLRCC_LRCC49_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07531424
echo "NV_PLRCC_LRCC49_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07531624
echo "NV_PLRCC_LRCC49_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07531824
echo "NV_PLRCC_LRCC49_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07531a24
echo "NV_PLRCC_LRCC49_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07531024
echo "NV_PLRCC_LRCC4_LRC0_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07504424
echo "NV_PLRCC_LRCC4_LRC1_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07504624
echo "NV_PLRCC_LRCC4_LRC2_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07504824
echo "NV_PLRCC_LRCC4_LRC3_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07504a24
echo "NV_PLRCC_LRCC4_LRCS_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07504024
echo "NV_PLRCC_LRCC50_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07532424
echo "NV_PLRCC_LRCC50_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07532624
echo "NV_PLRCC_LRCC50_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07532824
echo "NV_PLRCC_LRCC50_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07532a24
echo "NV_PLRCC_LRCC50_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07532024
echo "NV_PLRCC_LRCC51_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07533424
echo "NV_PLRCC_LRCC51_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07533624
echo "NV_PLRCC_LRCC51_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07533824
echo "NV_PLRCC_LRCC51_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07533a24
echo "NV_PLRCC_LRCC51_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07533024
echo "NV_PLRCC_LRCC52_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07534424
echo "NV_PLRCC_LRCC52_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07534624
echo "NV_PLRCC_LRCC52_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07534824
echo "NV_PLRCC_LRCC52_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07534a24
echo "NV_PLRCC_LRCC52_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07534024
echo "NV_PLRCC_LRCC53_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07535424
echo "NV_PLRCC_LRCC53_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07535624
echo "NV_PLRCC_LRCC53_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07535824
echo "NV_PLRCC_LRCC53_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07535a24
echo "NV_PLRCC_LRCC53_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07535024
echo "NV_PLRCC_LRCC54_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07536424
echo "NV_PLRCC_LRCC54_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07536624
echo "NV_PLRCC_LRCC54_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07536824
echo "NV_PLRCC_LRCC54_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07536a24
echo "NV_PLRCC_LRCC54_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07536024
echo "NV_PLRCC_LRCC55_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07537424
echo "NV_PLRCC_LRCC55_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07537624
echo "NV_PLRCC_LRCC55_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07537824
echo "NV_PLRCC_LRCC55_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07537a24
echo "NV_PLRCC_LRCC55_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07537024
echo "NV_PLRCC_LRCC56_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07538424
echo "NV_PLRCC_LRCC56_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07538624
echo "NV_PLRCC_LRCC56_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07538824
echo "NV_PLRCC_LRCC56_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07538a24
echo "NV_PLRCC_LRCC56_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07538024
echo "NV_PLRCC_LRCC57_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07539424
echo "NV_PLRCC_LRCC57_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07539624
echo "NV_PLRCC_LRCC57_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07539824
echo "NV_PLRCC_LRCC57_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07539a24
echo "NV_PLRCC_LRCC57_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07539024
echo "NV_PLRCC_LRCC58_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753a424
echo "NV_PLRCC_LRCC58_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753a624
echo "NV_PLRCC_LRCC58_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753a824
echo "NV_PLRCC_LRCC58_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753aa24
echo "NV_PLRCC_LRCC58_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753a024
echo "NV_PLRCC_LRCC59_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753b424
echo "NV_PLRCC_LRCC59_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753b624
echo "NV_PLRCC_LRCC59_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753b824
echo "NV_PLRCC_LRCC59_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753ba24
echo "NV_PLRCC_LRCC59_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753b024
echo "NV_PLRCC_LRCC5_LRC0_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07505424
echo "NV_PLRCC_LRCC5_LRC1_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07505624
echo "NV_PLRCC_LRCC5_LRC2_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07505824
echo "NV_PLRCC_LRCC5_LRC3_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07505a24
echo "NV_PLRCC_LRCC5_LRCS_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07505024
echo "NV_PLRCC_LRCC60_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753c424
echo "NV_PLRCC_LRCC60_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753c624
echo "NV_PLRCC_LRCC60_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753c824
echo "NV_PLRCC_LRCC60_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753ca24
echo "NV_PLRCC_LRCC60_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753c024
echo "NV_PLRCC_LRCC61_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753d424
echo "NV_PLRCC_LRCC61_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753d624
echo "NV_PLRCC_LRCC61_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753d824
echo "NV_PLRCC_LRCC61_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753da24
echo "NV_PLRCC_LRCC61_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753d024
echo "NV_PLRCC_LRCC62_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753e424
echo "NV_PLRCC_LRCC62_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753e624
echo "NV_PLRCC_LRCC62_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753e824
echo "NV_PLRCC_LRCC62_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753ea24
echo "NV_PLRCC_LRCC62_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753e024
echo "NV_PLRCC_LRCC63_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753f424
echo "NV_PLRCC_LRCC63_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753f624
echo "NV_PLRCC_LRCC63_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753f824
echo "NV_PLRCC_LRCC63_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753fa24
echo "NV_PLRCC_LRCC63_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0753f024
echo "NV_PLRCC_LRCC6_LRC0_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07506424
echo "NV_PLRCC_LRCC6_LRC1_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07506624
echo "NV_PLRCC_LRCC6_LRC2_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07506824
echo "NV_PLRCC_LRCC6_LRC3_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07506a24
echo "NV_PLRCC_LRCC6_LRCS_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07506024
echo "NV_PLRCC_LRCC7_LRC0_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07507424
echo "NV_PLRCC_LRCC7_LRC1_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07507624
echo "NV_PLRCC_LRCC7_LRC2_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07507824
echo "NV_PLRCC_LRCC7_LRC3_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07507a24
echo "NV_PLRCC_LRCC7_LRCS_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07507024
echo "NV_PLRCC_LRCC8_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07508424
echo "NV_PLRCC_LRCC8_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07508624
echo "NV_PLRCC_LRCC8_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07508824
echo "NV_PLRCC_LRCC8_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07508a24
echo "NV_PLRCC_LRCC8_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07508024
echo "NV_PLRCC_LRCC9_LRC0_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07509424
echo "NV_PLRCC_LRCC9_LRC1_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07509624
echo "NV_PLRCC_LRCC9_LRC2_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07509824
echo "NV_PLRCC_LRCC9_LRC3_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07509a24
echo "NV_PLRCC_LRCC9_LRCS_PRI_LRC_CG1_SLCG,  2:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07509024
echo "NV_PLRCC_LRCCS_LRC0_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008bf424
echo "NV_PLRCC_LRCCS_LRC1_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008bf624
echo "NV_PLRCC_LRCCS_LRC2_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008bf824
echo "NV_PLRCC_LRCCS_LRC3_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008bfa24
echo "NV_PLRCC_LRCCS_LRCS_PRI_LRC_CG1_SLCG,  2:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008bf024
echo "NV_PLTCG_LTC0_LTS0_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740055c
echo "NV_PLTCG_LTC0_LTS1_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740075c
echo "NV_PLTCG_LTC0_LTS2_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740095c
echo "NV_PLTCG_LTC0_LTS3_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07400b5c
echo "NV_PLTCG_LTC0_LTSS_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740035c
echo "NV_PLTCG_LTC0_MISC_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07400050
echo "NV_PLTCG_LTC10_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741455c
echo "NV_PLTCG_LTC10_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741475c
echo "NV_PLTCG_LTC10_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741495c
echo "NV_PLTCG_LTC10_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07414b5c
echo "NV_PLTCG_LTC10_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741435c
echo "NV_PLTCG_LTC10_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07414050
echo "NV_PLTCG_LTC11_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741655c
echo "NV_PLTCG_LTC11_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741675c
echo "NV_PLTCG_LTC11_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741695c
echo "NV_PLTCG_LTC11_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07416b5c
echo "NV_PLTCG_LTC11_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741635c
echo "NV_PLTCG_LTC11_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07416050
echo "NV_PLTCG_LTC12_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741855c
echo "NV_PLTCG_LTC12_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741875c
echo "NV_PLTCG_LTC12_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741895c
echo "NV_PLTCG_LTC12_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07418b5c
echo "NV_PLTCG_LTC12_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741835c
echo "NV_PLTCG_LTC12_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07418050
echo "NV_PLTCG_LTC13_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a55c
echo "NV_PLTCG_LTC13_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a75c
echo "NV_PLTCG_LTC13_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a95c
echo "NV_PLTCG_LTC13_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741ab5c
echo "NV_PLTCG_LTC13_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a35c
echo "NV_PLTCG_LTC13_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741a050
echo "NV_PLTCG_LTC14_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c55c
echo "NV_PLTCG_LTC14_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c75c
echo "NV_PLTCG_LTC14_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c95c
echo "NV_PLTCG_LTC14_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741cb5c
echo "NV_PLTCG_LTC14_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c35c
echo "NV_PLTCG_LTC14_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741c050
echo "NV_PLTCG_LTC15_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e55c
echo "NV_PLTCG_LTC15_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e75c
echo "NV_PLTCG_LTC15_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e95c
echo "NV_PLTCG_LTC15_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741eb5c
echo "NV_PLTCG_LTC15_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e35c
echo "NV_PLTCG_LTC15_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741e050
echo "NV_PLTCG_LTC16_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742055c
echo "NV_PLTCG_LTC16_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742075c
echo "NV_PLTCG_LTC16_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742095c
echo "NV_PLTCG_LTC16_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07420b5c
echo "NV_PLTCG_LTC16_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742035c
echo "NV_PLTCG_LTC16_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07420050
echo "NV_PLTCG_LTC17_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742255c
echo "NV_PLTCG_LTC17_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742275c
echo "NV_PLTCG_LTC17_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742295c
echo "NV_PLTCG_LTC17_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07422b5c
echo "NV_PLTCG_LTC17_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742235c
echo "NV_PLTCG_LTC17_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07422050
echo "NV_PLTCG_LTC18_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742455c
echo "NV_PLTCG_LTC18_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742475c
echo "NV_PLTCG_LTC18_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742495c
echo "NV_PLTCG_LTC18_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07424b5c
echo "NV_PLTCG_LTC18_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742435c
echo "NV_PLTCG_LTC18_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07424050
echo "NV_PLTCG_LTC19_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742655c
echo "NV_PLTCG_LTC19_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742675c
echo "NV_PLTCG_LTC19_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742695c
echo "NV_PLTCG_LTC19_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07426b5c
echo "NV_PLTCG_LTC19_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742635c
echo "NV_PLTCG_LTC19_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07426050
echo "NV_PLTCG_LTC1_LTS0_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740255c
echo "NV_PLTCG_LTC1_LTS1_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740275c
echo "NV_PLTCG_LTC1_LTS2_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740295c
echo "NV_PLTCG_LTC1_LTS3_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07402b5c
echo "NV_PLTCG_LTC1_LTSS_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740235c
echo "NV_PLTCG_LTC1_MISC_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07402050
echo "NV_PLTCG_LTC20_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742855c
echo "NV_PLTCG_LTC20_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742875c
echo "NV_PLTCG_LTC20_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742895c
echo "NV_PLTCG_LTC20_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07428b5c
echo "NV_PLTCG_LTC20_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742835c
echo "NV_PLTCG_LTC20_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07428050
echo "NV_PLTCG_LTC21_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a55c
echo "NV_PLTCG_LTC21_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a75c
echo "NV_PLTCG_LTC21_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a95c
echo "NV_PLTCG_LTC21_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742ab5c
echo "NV_PLTCG_LTC21_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a35c
echo "NV_PLTCG_LTC21_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742a050
echo "NV_PLTCG_LTC22_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c55c
echo "NV_PLTCG_LTC22_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c75c
echo "NV_PLTCG_LTC22_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c95c
echo "NV_PLTCG_LTC22_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742cb5c
echo "NV_PLTCG_LTC22_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c35c
echo "NV_PLTCG_LTC22_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742c050
echo "NV_PLTCG_LTC23_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e55c
echo "NV_PLTCG_LTC23_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e75c
echo "NV_PLTCG_LTC23_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e95c
echo "NV_PLTCG_LTC23_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742eb5c
echo "NV_PLTCG_LTC23_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e35c
echo "NV_PLTCG_LTC23_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0742e050
echo "NV_PLTCG_LTC24_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743055c
echo "NV_PLTCG_LTC24_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743075c
echo "NV_PLTCG_LTC24_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743095c
echo "NV_PLTCG_LTC24_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07430b5c
echo "NV_PLTCG_LTC24_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743035c
echo "NV_PLTCG_LTC24_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07430050
echo "NV_PLTCG_LTC25_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743255c
echo "NV_PLTCG_LTC25_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743275c
echo "NV_PLTCG_LTC25_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743295c
echo "NV_PLTCG_LTC25_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07432b5c
echo "NV_PLTCG_LTC25_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743235c
echo "NV_PLTCG_LTC25_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07432050
echo "NV_PLTCG_LTC26_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743455c
echo "NV_PLTCG_LTC26_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743475c
echo "NV_PLTCG_LTC26_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743495c
echo "NV_PLTCG_LTC26_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07434b5c
echo "NV_PLTCG_LTC26_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743435c
echo "NV_PLTCG_LTC26_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07434050
echo "NV_PLTCG_LTC27_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743655c
echo "NV_PLTCG_LTC27_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743675c
echo "NV_PLTCG_LTC27_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743695c
echo "NV_PLTCG_LTC27_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07436b5c
echo "NV_PLTCG_LTC27_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743635c
echo "NV_PLTCG_LTC27_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07436050
echo "NV_PLTCG_LTC28_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743855c
echo "NV_PLTCG_LTC28_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743875c
echo "NV_PLTCG_LTC28_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743895c
echo "NV_PLTCG_LTC28_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07438b5c
echo "NV_PLTCG_LTC28_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743835c
echo "NV_PLTCG_LTC28_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07438050
echo "NV_PLTCG_LTC29_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a55c
echo "NV_PLTCG_LTC29_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a75c
echo "NV_PLTCG_LTC29_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a95c
echo "NV_PLTCG_LTC29_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743ab5c
echo "NV_PLTCG_LTC29_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a35c
echo "NV_PLTCG_LTC29_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743a050
echo "NV_PLTCG_LTC2_LTS0_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740455c
echo "NV_PLTCG_LTC2_LTS1_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740475c
echo "NV_PLTCG_LTC2_LTS2_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740495c
echo "NV_PLTCG_LTC2_LTS3_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07404b5c
echo "NV_PLTCG_LTC2_LTSS_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740435c
echo "NV_PLTCG_LTC2_MISC_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07404050
echo "NV_PLTCG_LTC30_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c55c
echo "NV_PLTCG_LTC30_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c75c
echo "NV_PLTCG_LTC30_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c95c
echo "NV_PLTCG_LTC30_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743cb5c
echo "NV_PLTCG_LTC30_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c35c
echo "NV_PLTCG_LTC30_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743c050
echo "NV_PLTCG_LTC31_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e55c
echo "NV_PLTCG_LTC31_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e75c
echo "NV_PLTCG_LTC31_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e95c
echo "NV_PLTCG_LTC31_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743eb5c
echo "NV_PLTCG_LTC31_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e35c
echo "NV_PLTCG_LTC31_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0743e050
echo "NV_PLTCG_LTC32_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744055c
echo "NV_PLTCG_LTC32_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744075c
echo "NV_PLTCG_LTC32_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744095c
echo "NV_PLTCG_LTC32_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07440b5c
echo "NV_PLTCG_LTC32_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744035c
echo "NV_PLTCG_LTC32_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07440050
echo "NV_PLTCG_LTC33_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744255c
echo "NV_PLTCG_LTC33_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744275c
echo "NV_PLTCG_LTC33_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744295c
echo "NV_PLTCG_LTC33_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07442b5c
echo "NV_PLTCG_LTC33_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744235c
echo "NV_PLTCG_LTC33_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07442050
echo "NV_PLTCG_LTC34_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744455c
echo "NV_PLTCG_LTC34_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744475c
echo "NV_PLTCG_LTC34_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744495c
echo "NV_PLTCG_LTC34_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07444b5c
echo "NV_PLTCG_LTC34_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744435c
echo "NV_PLTCG_LTC34_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07444050
echo "NV_PLTCG_LTC35_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744655c
echo "NV_PLTCG_LTC35_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744675c
echo "NV_PLTCG_LTC35_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744695c
echo "NV_PLTCG_LTC35_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07446b5c
echo "NV_PLTCG_LTC35_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744635c
echo "NV_PLTCG_LTC35_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07446050
echo "NV_PLTCG_LTC36_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744855c
echo "NV_PLTCG_LTC36_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744875c
echo "NV_PLTCG_LTC36_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744895c
echo "NV_PLTCG_LTC36_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07448b5c
echo "NV_PLTCG_LTC36_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744835c
echo "NV_PLTCG_LTC36_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07448050
echo "NV_PLTCG_LTC37_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a55c
echo "NV_PLTCG_LTC37_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a75c
echo "NV_PLTCG_LTC37_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a95c
echo "NV_PLTCG_LTC37_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744ab5c
echo "NV_PLTCG_LTC37_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a35c
echo "NV_PLTCG_LTC37_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744a050
echo "NV_PLTCG_LTC38_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c55c
echo "NV_PLTCG_LTC38_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c75c
echo "NV_PLTCG_LTC38_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c95c
echo "NV_PLTCG_LTC38_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744cb5c
echo "NV_PLTCG_LTC38_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c35c
echo "NV_PLTCG_LTC38_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744c050
echo "NV_PLTCG_LTC39_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e55c
echo "NV_PLTCG_LTC39_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e75c
echo "NV_PLTCG_LTC39_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e95c
echo "NV_PLTCG_LTC39_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744eb5c
echo "NV_PLTCG_LTC39_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e35c
echo "NV_PLTCG_LTC39_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0744e050
echo "NV_PLTCG_LTC3_LTS0_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740655c
echo "NV_PLTCG_LTC3_LTS1_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740675c
echo "NV_PLTCG_LTC3_LTS2_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740695c
echo "NV_PLTCG_LTC3_LTS3_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07406b5c
echo "NV_PLTCG_LTC3_LTSS_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740635c
echo "NV_PLTCG_LTC3_MISC_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07406050
echo "NV_PLTCG_LTC40_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745055c
echo "NV_PLTCG_LTC40_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745075c
echo "NV_PLTCG_LTC40_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745095c
echo "NV_PLTCG_LTC40_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07450b5c
echo "NV_PLTCG_LTC40_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745035c
echo "NV_PLTCG_LTC40_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07450050
echo "NV_PLTCG_LTC41_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745255c
echo "NV_PLTCG_LTC41_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745275c
echo "NV_PLTCG_LTC41_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745295c
echo "NV_PLTCG_LTC41_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07452b5c
echo "NV_PLTCG_LTC41_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745235c
echo "NV_PLTCG_LTC41_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07452050
echo "NV_PLTCG_LTC42_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745455c
echo "NV_PLTCG_LTC42_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745475c
echo "NV_PLTCG_LTC42_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745495c
echo "NV_PLTCG_LTC42_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07454b5c
echo "NV_PLTCG_LTC42_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745435c
echo "NV_PLTCG_LTC42_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07454050
echo "NV_PLTCG_LTC43_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745655c
echo "NV_PLTCG_LTC43_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745675c
echo "NV_PLTCG_LTC43_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745695c
echo "NV_PLTCG_LTC43_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07456b5c
echo "NV_PLTCG_LTC43_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745635c
echo "NV_PLTCG_LTC43_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07456050
echo "NV_PLTCG_LTC44_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745855c
echo "NV_PLTCG_LTC44_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745875c
echo "NV_PLTCG_LTC44_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745895c
echo "NV_PLTCG_LTC44_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07458b5c
echo "NV_PLTCG_LTC44_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745835c
echo "NV_PLTCG_LTC44_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07458050
echo "NV_PLTCG_LTC45_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a55c
echo "NV_PLTCG_LTC45_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a75c
echo "NV_PLTCG_LTC45_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a95c
echo "NV_PLTCG_LTC45_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745ab5c
echo "NV_PLTCG_LTC45_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a35c
echo "NV_PLTCG_LTC45_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745a050
echo "NV_PLTCG_LTC46_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c55c
echo "NV_PLTCG_LTC46_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c75c
echo "NV_PLTCG_LTC46_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c95c
echo "NV_PLTCG_LTC46_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745cb5c
echo "NV_PLTCG_LTC46_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c35c
echo "NV_PLTCG_LTC46_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745c050
echo "NV_PLTCG_LTC47_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e55c
echo "NV_PLTCG_LTC47_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e75c
echo "NV_PLTCG_LTC47_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e95c
echo "NV_PLTCG_LTC47_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745eb5c
echo "NV_PLTCG_LTC47_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e35c
echo "NV_PLTCG_LTC47_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0745e050
echo "NV_PLTCG_LTC48_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746055c
echo "NV_PLTCG_LTC48_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746075c
echo "NV_PLTCG_LTC48_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746095c
echo "NV_PLTCG_LTC48_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07460b5c
echo "NV_PLTCG_LTC48_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746035c
echo "NV_PLTCG_LTC48_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07460050
echo "NV_PLTCG_LTC49_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746255c
echo "NV_PLTCG_LTC49_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746275c
echo "NV_PLTCG_LTC49_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746295c
echo "NV_PLTCG_LTC49_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07462b5c
echo "NV_PLTCG_LTC49_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746235c
echo "NV_PLTCG_LTC49_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07462050
echo "NV_PLTCG_LTC4_LTS0_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740855c
echo "NV_PLTCG_LTC4_LTS1_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740875c
echo "NV_PLTCG_LTC4_LTS2_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740895c
echo "NV_PLTCG_LTC4_LTS3_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07408b5c
echo "NV_PLTCG_LTC4_LTSS_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740835c
echo "NV_PLTCG_LTC4_MISC_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07408050
echo "NV_PLTCG_LTC50_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746455c
echo "NV_PLTCG_LTC50_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746475c
echo "NV_PLTCG_LTC50_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746495c
echo "NV_PLTCG_LTC50_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07464b5c
echo "NV_PLTCG_LTC50_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746435c
echo "NV_PLTCG_LTC50_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07464050
echo "NV_PLTCG_LTC51_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746655c
echo "NV_PLTCG_LTC51_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746675c
echo "NV_PLTCG_LTC51_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746695c
echo "NV_PLTCG_LTC51_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07466b5c
echo "NV_PLTCG_LTC51_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746635c
echo "NV_PLTCG_LTC51_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07466050
echo "NV_PLTCG_LTC52_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746855c
echo "NV_PLTCG_LTC52_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746875c
echo "NV_PLTCG_LTC52_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746895c
echo "NV_PLTCG_LTC52_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07468b5c
echo "NV_PLTCG_LTC52_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746835c
echo "NV_PLTCG_LTC52_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07468050
echo "NV_PLTCG_LTC53_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a55c
echo "NV_PLTCG_LTC53_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a75c
echo "NV_PLTCG_LTC53_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a95c
echo "NV_PLTCG_LTC53_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746ab5c
echo "NV_PLTCG_LTC53_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a35c
echo "NV_PLTCG_LTC53_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746a050
echo "NV_PLTCG_LTC54_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c55c
echo "NV_PLTCG_LTC54_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c75c
echo "NV_PLTCG_LTC54_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c95c
echo "NV_PLTCG_LTC54_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746cb5c
echo "NV_PLTCG_LTC54_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c35c
echo "NV_PLTCG_LTC54_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746c050
echo "NV_PLTCG_LTC55_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e55c
echo "NV_PLTCG_LTC55_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e75c
echo "NV_PLTCG_LTC55_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e95c
echo "NV_PLTCG_LTC55_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746eb5c
echo "NV_PLTCG_LTC55_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e35c
echo "NV_PLTCG_LTC55_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0746e050
echo "NV_PLTCG_LTC56_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747055c
echo "NV_PLTCG_LTC56_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747075c
echo "NV_PLTCG_LTC56_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747095c
echo "NV_PLTCG_LTC56_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07470b5c
echo "NV_PLTCG_LTC56_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747035c
echo "NV_PLTCG_LTC56_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07470050
echo "NV_PLTCG_LTC57_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747255c
echo "NV_PLTCG_LTC57_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747275c
echo "NV_PLTCG_LTC57_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747295c
echo "NV_PLTCG_LTC57_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07472b5c
echo "NV_PLTCG_LTC57_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747235c
echo "NV_PLTCG_LTC57_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07472050
echo "NV_PLTCG_LTC58_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747455c
echo "NV_PLTCG_LTC58_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747475c
echo "NV_PLTCG_LTC58_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747495c
echo "NV_PLTCG_LTC58_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07474b5c
echo "NV_PLTCG_LTC58_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747435c
echo "NV_PLTCG_LTC58_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07474050
echo "NV_PLTCG_LTC59_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747655c
echo "NV_PLTCG_LTC59_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747675c
echo "NV_PLTCG_LTC59_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747695c
echo "NV_PLTCG_LTC59_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07476b5c
echo "NV_PLTCG_LTC59_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747635c
echo "NV_PLTCG_LTC59_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07476050
echo "NV_PLTCG_LTC5_LTS0_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a55c
echo "NV_PLTCG_LTC5_LTS1_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a75c
echo "NV_PLTCG_LTC5_LTS2_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a95c
echo "NV_PLTCG_LTC5_LTS3_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740ab5c
echo "NV_PLTCG_LTC5_LTSS_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a35c
echo "NV_PLTCG_LTC5_MISC_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740a050
echo "NV_PLTCG_LTC60_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747855c
echo "NV_PLTCG_LTC60_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747875c
echo "NV_PLTCG_LTC60_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747895c
echo "NV_PLTCG_LTC60_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07478b5c
echo "NV_PLTCG_LTC60_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747835c
echo "NV_PLTCG_LTC60_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07478050
echo "NV_PLTCG_LTC61_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a55c
echo "NV_PLTCG_LTC61_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a75c
echo "NV_PLTCG_LTC61_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a95c
echo "NV_PLTCG_LTC61_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747ab5c
echo "NV_PLTCG_LTC61_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a35c
echo "NV_PLTCG_LTC61_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747a050
echo "NV_PLTCG_LTC62_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c55c
echo "NV_PLTCG_LTC62_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c75c
echo "NV_PLTCG_LTC62_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c95c
echo "NV_PLTCG_LTC62_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747cb5c
echo "NV_PLTCG_LTC62_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c35c
echo "NV_PLTCG_LTC62_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747c050
echo "NV_PLTCG_LTC63_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e55c
echo "NV_PLTCG_LTC63_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e75c
echo "NV_PLTCG_LTC63_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e95c
echo "NV_PLTCG_LTC63_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747eb5c
echo "NV_PLTCG_LTC63_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e35c
echo "NV_PLTCG_LTC63_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0747e050
echo "NV_PLTCG_LTC6_LTS0_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c55c
echo "NV_PLTCG_LTC6_LTS1_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c75c
echo "NV_PLTCG_LTC6_LTS2_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c95c
echo "NV_PLTCG_LTC6_LTS3_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740cb5c
echo "NV_PLTCG_LTC6_LTSS_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c35c
echo "NV_PLTCG_LTC6_MISC_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740c050
echo "NV_PLTCG_LTC7_LTS0_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e55c
echo "NV_PLTCG_LTC7_LTS1_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e75c
echo "NV_PLTCG_LTC7_LTS2_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e95c
echo "NV_PLTCG_LTC7_LTS3_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740eb5c
echo "NV_PLTCG_LTC7_LTSS_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e35c
echo "NV_PLTCG_LTC7_MISC_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0740e050
echo "NV_PLTCG_LTC8_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741055c
echo "NV_PLTCG_LTC8_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741075c
echo "NV_PLTCG_LTC8_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741095c
echo "NV_PLTCG_LTC8_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07410b5c
echo "NV_PLTCG_LTC8_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741035c
echo "NV_PLTCG_LTC8_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07410050
echo "NV_PLTCG_LTC9_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741255c
echo "NV_PLTCG_LTC9_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741275c
echo "NV_PLTCG_LTC9_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741295c
echo "NV_PLTCG_LTC9_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07412b5c
echo "NV_PLTCG_LTC9_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0741235c
echo "NV_PLTCG_LTC9_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x07412050
echo "NV_PLTCG_LTCS_LTS0_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c655c
echo "NV_PLTCG_LTCS_LTS1_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c675c
echo "NV_PLTCG_LTCS_LTS2_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c695c
echo "NV_PLTCG_LTCS_LTS3_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c6b5c
echo "NV_PLTCG_LTCS_LTSS_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c635c
echo "NV_PLTCG_LTCS_MISC_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c6050
echo "NV_PNVDEC0_CG10_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00849968
echo "NV_PNVDEC0_CG11_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084996c
echo "NV_PNVDEC0_CG12_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00849970
echo "NV_PNVDEC0_CG13_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00849974
echo "NV_PNVDEC0_CG14_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084997c
echo "NV_PNVDEC0_CG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00849324
echo "NV_PNVDEC0_CG2_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00849328
echo "NV_PNVDEC0_CG3_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084932c
echo "NV_PNVDEC0_CG4_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00849950
echo "NV_PNVDEC0_CG5_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00849954
echo "NV_PNVDEC0_CG6_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00849958
echo "NV_PNVDEC0_CG7_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084995c
echo "NV_PNVDEC0_CG8_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00849960
echo "NV_PNVDEC0_CG9_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00849964
echo "NV_PNVDEC0_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00848134
echo "NV_PNVDEC0_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084be74
echo "NV_PNVDEC0_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084b398
echo "NV_PNVDEC1_CG10_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d968
echo "NV_PNVDEC1_CG11_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d96c
echo "NV_PNVDEC1_CG12_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d970
echo "NV_PNVDEC1_CG13_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d974
echo "NV_PNVDEC1_CG14_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d97c
echo "NV_PNVDEC1_CG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d324
echo "NV_PNVDEC1_CG2_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d328
echo "NV_PNVDEC1_CG3_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d32c
echo "NV_PNVDEC1_CG4_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d950
echo "NV_PNVDEC1_CG5_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d954
echo "NV_PNVDEC1_CG6_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d958
echo "NV_PNVDEC1_CG7_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d95c
echo "NV_PNVDEC1_CG8_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d960
echo "NV_PNVDEC1_CG9_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084d964
echo "NV_PNVDEC1_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084c134
echo "NV_PNVDEC1_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084fe74
echo "NV_PNVDEC1_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084f398
echo "NV_PNVDEC2_CG10_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00851968
echo "NV_PNVDEC2_CG11_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085196c
echo "NV_PNVDEC2_CG12_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00851970
echo "NV_PNVDEC2_CG13_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00851974
echo "NV_PNVDEC2_CG14_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085197c
echo "NV_PNVDEC2_CG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00851324
echo "NV_PNVDEC2_CG2_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00851328
echo "NV_PNVDEC2_CG3_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085132c
echo "NV_PNVDEC2_CG4_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00851950
echo "NV_PNVDEC2_CG5_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00851954
echo "NV_PNVDEC2_CG6_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00851958
echo "NV_PNVDEC2_CG7_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085195c
echo "NV_PNVDEC2_CG8_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00851960
echo "NV_PNVDEC2_CG9_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00851964
echo "NV_PNVDEC2_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00850134
echo "NV_PNVDEC2_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00853e74
echo "NV_PNVDEC2_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00853398
echo "NV_PNVDEC3_CG10_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00855968
echo "NV_PNVDEC3_CG11_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085596c
echo "NV_PNVDEC3_CG12_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00855970
echo "NV_PNVDEC3_CG13_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00855974
echo "NV_PNVDEC3_CG14_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085597c
echo "NV_PNVDEC3_CG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00855324
echo "NV_PNVDEC3_CG2_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00855328
echo "NV_PNVDEC3_CG3_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085532c
echo "NV_PNVDEC3_CG4_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00855950
echo "NV_PNVDEC3_CG5_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00855954
echo "NV_PNVDEC3_CG6_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00855958
echo "NV_PNVDEC3_CG7_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085595c
echo "NV_PNVDEC3_CG8_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00855960
echo "NV_PNVDEC3_CG9_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00855964
echo "NV_PNVDEC3_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00854134
echo "NV_PNVDEC3_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00857e74
echo "NV_PNVDEC3_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00857398
echo "NV_PNVDEC4_CG10_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00859968
echo "NV_PNVDEC4_CG11_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085996c
echo "NV_PNVDEC4_CG12_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00859970
echo "NV_PNVDEC4_CG13_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00859974
echo "NV_PNVDEC4_CG14_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085997c
echo "NV_PNVDEC4_CG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00859324
echo "NV_PNVDEC4_CG2_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00859328
echo "NV_PNVDEC4_CG3_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085932c
echo "NV_PNVDEC4_CG4_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00859950
echo "NV_PNVDEC4_CG5_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00859954
echo "NV_PNVDEC4_CG6_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00859958
echo "NV_PNVDEC4_CG7_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085995c
echo "NV_PNVDEC4_CG8_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00859960
echo "NV_PNVDEC4_CG9_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00859964
echo "NV_PNVDEC4_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00858134
echo "NV_PNVDEC4_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085be74
echo "NV_PNVDEC4_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085b398
echo "NV_PNVDEC5_CG10_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d968
echo "NV_PNVDEC5_CG11_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d96c
echo "NV_PNVDEC5_CG12_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d970
echo "NV_PNVDEC5_CG13_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d974
echo "NV_PNVDEC5_CG14_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d97c
echo "NV_PNVDEC5_CG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d324
echo "NV_PNVDEC5_CG2_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d328
echo "NV_PNVDEC5_CG3_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d32c
echo "NV_PNVDEC5_CG4_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d950
echo "NV_PNVDEC5_CG5_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d954
echo "NV_PNVDEC5_CG6_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d958
echo "NV_PNVDEC5_CG7_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d95c
echo "NV_PNVDEC5_CG8_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d960
echo "NV_PNVDEC5_CG9_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085d964
echo "NV_PNVDEC5_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085c134
echo "NV_PNVDEC5_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085fe74
echo "NV_PNVDEC5_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0085f398
echo "NV_PNVDEC6_CG10_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00861968
echo "NV_PNVDEC6_CG11_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0086196c
echo "NV_PNVDEC6_CG12_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00861970
echo "NV_PNVDEC6_CG13_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00861974
echo "NV_PNVDEC6_CG14_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0086197c
echo "NV_PNVDEC6_CG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00861324
echo "NV_PNVDEC6_CG2_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00861328
echo "NV_PNVDEC6_CG3_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0086132c
echo "NV_PNVDEC6_CG4_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00861950
echo "NV_PNVDEC6_CG5_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00861954
echo "NV_PNVDEC6_CG6_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00861958
echo "NV_PNVDEC6_CG7_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0086195c
echo "NV_PNVDEC6_CG8_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00861960
echo "NV_PNVDEC6_CG9_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00861964
echo "NV_PNVDEC6_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00860134
echo "NV_PNVDEC6_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00863e74
echo "NV_PNVDEC6_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00863398
echo "NV_PNVDEC7_CG10_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00865968
echo "NV_PNVDEC7_CG11_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0086596c
echo "NV_PNVDEC7_CG12_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00865970
echo "NV_PNVDEC7_CG13_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00865974
echo "NV_PNVDEC7_CG14_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0086597c
echo "NV_PNVDEC7_CG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00865324
echo "NV_PNVDEC7_CG2_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00865328
echo "NV_PNVDEC7_CG3_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0086532c
echo "NV_PNVDEC7_CG4_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00865950
echo "NV_PNVDEC7_CG5_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00865954
echo "NV_PNVDEC7_CG6_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00865958
echo "NV_PNVDEC7_CG7_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0086595c
echo "NV_PNVDEC7_CG8_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00865960
echo "NV_PNVDEC7_CG9_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00865964
echo "NV_PNVDEC7_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00864134
echo "NV_PNVDEC7_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00867e74
echo "NV_PNVDEC7_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00867398
echo "NV_PNVJPG0_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009c0134
echo "NV_PNVJPG0_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009c0474
echo "NV_PNVJPG0_MISC_BLCG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009c0b04
echo "NV_PNVJPG0_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009c3398
echo "NV_PNVJPG1_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009c8134
echo "NV_PNVJPG1_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009c8474
echo "NV_PNVJPG1_MISC_BLCG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009c8b04
echo "NV_PNVJPG1_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009cb398
echo "NV_PNVJPG2_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009d0134
echo "NV_PNVJPG2_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009d0474
echo "NV_PNVJPG2_MISC_BLCG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009d0b04
echo "NV_PNVJPG2_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009d3398
echo "NV_PNVJPG3_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009d8134
echo "NV_PNVJPG3_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009d8474
echo "NV_PNVJPG3_MISC_BLCG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009d8b04
echo "NV_PNVJPG3_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009db398
echo "NV_PNVJPG4_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009e0134
echo "NV_PNVJPG4_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009e0474
echo "NV_PNVJPG4_MISC_BLCG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009e0b04
echo "NV_PNVJPG4_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009e3398
echo "NV_PNVJPG5_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009e8134
echo "NV_PNVJPG5_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009e8474
echo "NV_PNVJPG5_MISC_BLCG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009e8b04
echo "NV_PNVJPG5_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009eb398
echo "NV_PNVJPG6_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009f0134
echo "NV_PNVJPG6_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009f0474
echo "NV_PNVJPG6_MISC_BLCG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009f0b04
echo "NV_PNVJPG6_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009f3398
echo "NV_PNVJPG7_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009f8134
echo "NV_PNVJPG7_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009f8474
echo "NV_PNVJPG7_MISC_BLCG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009f8b04
echo "NV_PNVJPG7_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x009fb398
echo "NV_POFA0_CG1_SLCG,  1:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00846c04
echo "NV_POFA0_CG2_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00846b20
echo "NV_POFA0_CG3_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00846b24
echo "NV_POFA0_CG4_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00846b28
echo "NV_POFA0_FALCON_CG2_SLCG,  17:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00844134
echo "NV_POFA0_FBIF_CG1_SLCG,  3:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00844474
echo "NV_POFA0_RISCV_CG2_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00844b98
echo "NV_POFA1_CG1_SLCG,  1:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008fec04
echo "NV_POFA1_CG2_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008feb20
echo "NV_POFA1_CG3_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008feb24
echo "NV_POFA1_CG4_SLCG,  31:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008feb28
echo "NV_POFA1_FALCON_CG2_SLCG,  17:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008fc134
echo "NV_POFA1_FBIF_CG1_SLCG,  3:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008fc474
echo "NV_POFA1_RISCV_CG2_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008fcb98
echo "NV_POFA_CG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00846c04
echo "NV_POFA_CG2_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00846b20
echo "NV_POFA_CG3_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00846b24
echo "NV_POFA_CG4_SLCG,  31:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00846b28
echo "NV_POFA_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00844134
echo "NV_POFA_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00844474
echo "NV_POFA_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00844b98
echo "NV_POOBHUB_PEREGRINE_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008a8134
echo "NV_POOBHUB_PEREGRINE_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008a8798
echo "NV_POOBHUB_RCV_CG1_SLCG,  0:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008aa35c
echo "NV_PPRIV_BLOCKER_SYSC0_CG1_SLCG,  2:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00100b70
echo "NV_PPRIV_BLOCKER_SYSC1_CG1_SLCG,  2:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00100a70
echo "NV_PPRIV_BLOCKER_SYSC_BASE_CG1_SLCG,  2:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0
echo "NV_PPRIV_BLOCKER_SYSC_CG1_SLCG,  2:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00100b70
echo "NV_PPRIV_BLOCKER_SYSE_CG1_SLCG,  2:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00a60970
echo "NV_PPRIV_CLUSTER_CG1_SLCG,  10:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0
echo "NV_PPRIV_CONTROL_CG1_SLCG,  1:0,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0
echo "NV_PPRIV_FBP_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00128250
echo "NV_PPRIV_FBP_FBP0_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00128250
echo "NV_PPRIV_FBP_FBP10_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012d250
echo "NV_PPRIV_FBP_FBP11_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012da50
echo "NV_PPRIV_FBP_FBP12_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012e250
echo "NV_PPRIV_FBP_FBP13_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012ea50
echo "NV_PPRIV_FBP_FBP14_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012f250
echo "NV_PPRIV_FBP_FBP15_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012fa50
echo "NV_PPRIV_FBP_FBP1_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00128a50
echo "NV_PPRIV_FBP_FBP2_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00129250
echo "NV_PPRIV_FBP_FBP3_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00129a50
echo "NV_PPRIV_FBP_FBP4_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012a250
echo "NV_PPRIV_FBP_FBP5_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012aa50
echo "NV_PPRIV_FBP_FBP6_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012b250
echo "NV_PPRIV_FBP_FBP7_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012ba50
echo "NV_PPRIV_FBP_FBP8_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012c250
echo "NV_PPRIV_FBP_FBP9_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012ca50
echo "NV_PPRIV_FBP_FBPS_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00121250
echo "NV_PPRIV_GPC_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00124250
echo "NV_PPRIV_GPC_GPC0_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00124250
echo "NV_PPRIV_GPC_GPC1_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00124a50
echo "NV_PPRIV_GPC_GPC2_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00125250
echo "NV_PPRIV_GPC_GPC3_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00125a50
echo "NV_PPRIV_GPC_GPC4_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00126250
echo "NV_PPRIV_GPC_GPC5_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00126a50
echo "NV_PPRIV_GPC_GPC6_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00127250
echo "NV_PPRIV_GPC_GPC7_CG1_SLCG,  10:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00127a50
echo "NV_PPRIV_GPC_GPCS_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00120a50
echo "NV_PPRIV_MASTER_CG1_SLCG,  0:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001200a8
echo "NV_PPRIV_MASTER_RINGSTATION0_CG1_SLCG,  0:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001200a8
echo "NV_PPRIV_MASTER_RINGSTATION1_CG1_SLCG,  0:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001204a8
echo "NV_PPRIV_RS_CTRL_FBP_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00128048
echo "NV_PPRIV_RS_CTRL_FBP_FBP0_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00128048
echo "NV_PPRIV_RS_CTRL_FBP_FBP10_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012d048
echo "NV_PPRIV_RS_CTRL_FBP_FBP11_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012d848
echo "NV_PPRIV_RS_CTRL_FBP_FBP12_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012e048
echo "NV_PPRIV_RS_CTRL_FBP_FBP13_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012e848
echo "NV_PPRIV_RS_CTRL_FBP_FBP14_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012f048
echo "NV_PPRIV_RS_CTRL_FBP_FBP15_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012f848
echo "NV_PPRIV_RS_CTRL_FBP_FBP1_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00128848
echo "NV_PPRIV_RS_CTRL_FBP_FBP2_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00129048
echo "NV_PPRIV_RS_CTRL_FBP_FBP3_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00129848
echo "NV_PPRIV_RS_CTRL_FBP_FBP4_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012a048
echo "NV_PPRIV_RS_CTRL_FBP_FBP5_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012a848
echo "NV_PPRIV_RS_CTRL_FBP_FBP6_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012b048
echo "NV_PPRIV_RS_CTRL_FBP_FBP7_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012b848
echo "NV_PPRIV_RS_CTRL_FBP_FBP8_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012c048
echo "NV_PPRIV_RS_CTRL_FBP_FBP9_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0012c848
echo "NV_PPRIV_RS_CTRL_FBP_FBPS_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00121048
echo "NV_PPRIV_RS_CTRL_GPC_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00124048
echo "NV_PPRIV_RS_CTRL_GPC_GPC0_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00124048
echo "NV_PPRIV_RS_CTRL_GPC_GPC1_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00124848
echo "NV_PPRIV_RS_CTRL_GPC_GPC2_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00125048
echo "NV_PPRIV_RS_CTRL_GPC_GPC3_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00125848
echo "NV_PPRIV_RS_CTRL_GPC_GPC4_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00126048
echo "NV_PPRIV_RS_CTRL_GPC_GPC5_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00126848
echo "NV_PPRIV_RS_CTRL_GPC_GPC6_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00127048
echo "NV_PPRIV_RS_CTRL_GPC_GPC7_CG1_SLCG,  1:0,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00127848
echo "NV_PPRIV_RS_CTRL_GPC_GPCS_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00120848
echo "NV_PPRIV_RS_CTRL_SYSB_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00122848
echo "NV_PPRIV_RS_CTRL_SYSB_SYSB0_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00039048
echo "NV_PPRIV_RS_CTRL_SYSC_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00123048
echo "NV_PPRIV_RS_CTRL_SYSC_SYSC0_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0003a048
echo "NV_PPRIV_RS_CTRL_SYSC_SYSC1_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0003a848
echo "NV_PPRIV_RS_CTRL_SYSD_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00123848
echo "NV_PPRIV_RS_CTRL_SYSD_SYSD0_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0003c048
echo "NV_PPRIV_RS_CTRL_SYSD_SYSD1_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0003c848
echo "NV_PPRIV_RS_CTRL_SYSE_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00a68048
echo "NV_PPRIV_RS_CTRL_SYSE_SYSE0_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0003d048
echo "NV_PPRIV_RS_CTRL_SYSF_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00a68848
echo "NV_PPRIV_RS_CTRL_SYSF_SYSF0_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0003e048
echo "NV_PPRIV_RS_CTRL_SYSG_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00a69048
echo "NV_PPRIV_RS_CTRL_SYSG_SYSG0_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0003f048
echo "NV_PPRIV_RS_CTRL_SYS_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00122048
echo "NV_PPRIV_RS_CTRL_SYS_SYS0_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00038048
echo "NV_PPRIV_RS_CTRL_SYS_SYS1_CG1_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00038848
echo "NV_PPRIV_SYSB_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00122a50
echo "NV_PPRIV_SYSB_SYSB0_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00039250
echo "NV_PPRIV_SYSC_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00123250
echo "NV_PPRIV_SYSC_SYSC0_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0003a250
echo "NV_PPRIV_SYSC_SYSC1_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0003aa50
echo "NV_PPRIV_SYSD_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00123a50
echo "NV_PPRIV_SYSD_SYSD0_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0003c250
echo "NV_PPRIV_SYSD_SYSD1_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0003ca50
echo "NV_PPRIV_SYSE_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00a68250
echo "NV_PPRIV_SYSE_SYSE0_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0003d250
echo "NV_PPRIV_SYSF_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00a68a50
echo "NV_PPRIV_SYSF_SYSF0_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0003e250
echo "NV_PPRIV_SYSG_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00a69250
echo "NV_PPRIV_SYSG_SYSG0_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0003f250
echo "NV_PPRIV_SYS_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00122250
echo "NV_PPRIV_SYS_SYS0_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00038250
echo "NV_PPRIV_SYS_SYS1_CG1_SLCG,  10:0,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00038a50
echo "NV_PPWR_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f4134
echo "NV_PPWR_FALCON_SAFETY_CTRL_RISCV_DCLS_INOUT_DFF_SLCG,  12:12,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f42f4
echo "NV_PPWR_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f4e74
echo "NV_PPWR_PMU_PRI_PWR_CG1_SLCG,  13:1,  0x200, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f6a74
echo "NV_PPWR_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008f5398
echo "NV_PPXUC_FALCON_CG2_SLCG,  17:1,  0x80,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x828134
echo "NV_PPXUC_RISCV_CG2_SLCG,  1:0,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x828798
echo "NV_PRI_LEADSTATION_ZB_CG1_SLCG,  0:0,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1200a8
echo "NV_PRI_LEADSTATION_ZB_CG1_SLCG,  0:0,  0x0,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x1204a8
echo "NV_PRI_LEADSTATION_ZB_CG1_SLCG,  0:0,  0x0,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xa600a8
echo "NV_PRI_LEADSTATION_ZB_CG1_SLCG,  0:0,  0x0,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xa604a8
echo "NV_PSEC_FALCON_CG2_SLCG,  17:1,  0x80, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00840134
echo "NV_PSEC_FALCON_SAFETY_CTRL_RISCV_DCLS_INOUT_DFF_SLCG,  12:12,  0x1, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x008402f4
echo "NV_PSEC_FBIF_CG1_SLCG,  3:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00840674
echo "NV_PSEC_MISC_CG1_SLCG,  31:0,  0x80000060, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0084083c
echo "NV_PSEC_RISCV_CG2_SLCG,  1:0,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00841398
echo "NV_PSYSL2LTCG1_LTC0_LTS0_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b1055c
echo "NV_PSYSL2LTCG1_LTC0_LTS1_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b1075c
echo "NV_PSYSL2LTCG1_LTC0_LTS2_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b1095c
echo "NV_PSYSL2LTCG1_LTC0_LTS3_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b10b5c
echo "NV_PSYSL2LTCG1_LTC0_LTS4_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b10d5c
echo "NV_PSYSL2LTCG1_LTC0_LTS5_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b10f5c
echo "NV_PSYSL2LTCG1_LTC0_LTS6_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b1115c
echo "NV_PSYSL2LTCG1_LTC0_LTS7_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b1135c
echo "NV_PSYSL2LTCG1_LTC0_LTSS_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b1035c
echo "NV_PSYSL2LTCG1_LTC0_MISC_CG1_SLCG,  31:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b10050
echo "NV_PSYSL2LTCG_LTC0_LTS0_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b0055c
echo "NV_PSYSL2LTCG_LTC0_LTS1_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b0075c
echo "NV_PSYSL2LTCG_LTC0_LTS2_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b0095c
echo "NV_PSYSL2LTCG_LTC0_LTS3_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b00b5c
echo "NV_PSYSL2LTCG_LTC0_LTS4_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b00d5c
echo "NV_PSYSL2LTCG_LTC0_LTS5_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b00f5c
echo "NV_PSYSL2LTCG_LTC0_LTS6_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b0115c
echo "NV_PSYSL2LTCG_LTC0_LTS7_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b0135c
echo "NV_PSYSL2LTCG_LTC0_LTSS_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b0035c
echo "NV_PSYSL2LTCG_LTC0_MISC_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b00050
echo "NV_PSYSL2LTCG_LTCS_LTS0_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c655c
echo "NV_PSYSL2LTCG_LTCS_LTS1_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c675c
echo "NV_PSYSL2LTCG_LTCS_LTS2_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c695c
echo "NV_PSYSL2LTCG_LTCS_LTS3_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c6b5c
echo "NV_PSYSL2LTCG_LTCS_LTSS_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c635c
echo "NV_PSYSL2LTCG_LTCS_MISC_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x001c6050
echo "NV_PSYSL2LTC_LTS0_CG1_SLCG,  31:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb0055c
echo "NV_PSYSL2LTC_LTS0_CG1_SLCG,  31:1,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb1055c
echo "NV_PSYSL2LTC_LTS0_CG1_SLCG,  31:1,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb1255c
echo "NV_PSYSL2LTC_LTS1_CG1_SLCG,  31:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb0075c
echo "NV_PSYSL2LTC_LTS1_CG1_SLCG,  31:1,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb1075c
echo "NV_PSYSL2LTC_LTS1_CG1_SLCG,  31:1,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb1275c
echo "NV_PSYSL2LTC_LTS2_CG1_SLCG,  31:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb0095c
echo "NV_PSYSL2LTC_LTS2_CG1_SLCG,  31:1,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb1095c
echo "NV_PSYSL2LTC_LTS2_CG1_SLCG,  31:1,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb1295c
echo "NV_PSYSL2LTC_LTS3_CG1_SLCG,  31:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb00b5c
echo "NV_PSYSL2LTC_LTS3_CG1_SLCG,  31:1,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb10b5c
echo "NV_PSYSL2LTC_LTS3_CG1_SLCG,  31:1,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb12b5c
echo "NV_PSYSL2LTC_LTS4_CG1_SLCG,  31:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb00d5c
echo "NV_PSYSL2LTC_LTS4_CG1_SLCG,  31:1,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb10d5c
echo "NV_PSYSL2LTC_LTS4_CG1_SLCG,  31:1,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb12d5c
echo "NV_PSYSL2LTC_LTS5_CG1_SLCG,  31:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb00f5c
echo "NV_PSYSL2LTC_LTS5_CG1_SLCG,  31:1,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb10f5c
echo "NV_PSYSL2LTC_LTS5_CG1_SLCG,  31:1,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb12f5c
echo "NV_PSYSL2LTC_LTS6_CG1_SLCG,  31:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb0115c
echo "NV_PSYSL2LTC_LTS6_CG1_SLCG,  31:1,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb1115c
echo "NV_PSYSL2LTC_LTS6_CG1_SLCG,  31:1,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb1315c
echo "NV_PSYSL2LTC_LTS7_CG1_SLCG,  31:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb0135c
echo "NV_PSYSL2LTC_LTS7_CG1_SLCG,  31:1,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb1135c
echo "NV_PSYSL2LTC_LTS7_CG1_SLCG,  31:1,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb1335c
echo "NV_PSYSL2LTC_MISC_CG1_SLCG,  31:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb00050
echo "NV_PSYSL2LTC_MISC_CG1_SLCG,  31:1,  NA,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb10050
echo "NV_PSYSL2LTC_MISC_CG1_SLCG,  31:1,  NA,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xb12050
echo "NV_PTIMER_1_PRI_TMR_CG1_SLCG,  1:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00082600
echo "NV_PTIMER_PRI_TMR_CG1_SLCG,  1:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x9600
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd00054
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd00454
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd00854
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd00c54
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=4" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd01054
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=5" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd01454
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=6" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd01854
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=7" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd01c54
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=8" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd02054
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=9" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd02454
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=10" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd02854
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=11" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd02c54
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=12" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd03054
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=13" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd03454
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=14" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd03854
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=15" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd03c54
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=16" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd04054
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=17" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd04454
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=18" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd04854
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=19" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd04c54
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=20" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd05054
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=21" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd05454
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=22" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd10054
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=23" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd10454
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=24" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd10854
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=25" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd10c54
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=26" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd11454
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=27" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd11854
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=28" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd11c54
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=29" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd12054
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=30" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd12454
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=31" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd12854
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=32" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd12c54
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=33" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd13054
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=34" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd13454
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=35" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd13854
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=36" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd13c54
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=37" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd14054
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=38" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd14454
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=39" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd14854
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=40" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd14c54
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=41" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd15054
echo "NV_RUNLIST_CG1_SLCG,  16:1,  0x0,  0-base register inst=42" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd15454
echo "NV_SSE_CG1_SLCG,  9:1,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0
echo "NV_SSE_SWITCH_CTRL1_CG1_SLCG,  9:1,  NA,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0
echo "NV_TMR_PRI_TMR_CG1_SLCG,  1:1,  0x0,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x82600
echo "NV_TMR_PRI_TMR_CG1_SLCG,  1:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x9600
echo "NV_TMR_PRI_TMR_CG1_SLCG,  1:1,  0x0,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd60600
echo "NV_TMR_PRI_TMR_CG1_SLCG,  1:1,  0x0,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd61600
echo "NV_TMR_ZB_PRI_TMR_CG1_SLCG,  1:1,  0x0,  0-base register inst=1" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x82600
echo "NV_TMR_ZB_PRI_TMR_CG1_SLCG,  1:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x9600
echo "NV_TMR_ZB_PRI_TMR_CG1_SLCG,  1:1,  0x0,  0-base register inst=2" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd60600
echo "NV_TMR_ZB_PRI_TMR_CG1_SLCG,  1:1,  0x0,  0-base register inst=3" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xd61600
echo "NV_XAL_EP_CG1_SLCG,  24:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0010fa04
echo "NV_XBAR_CXBAR_CQ_PRI_SYS0_HXI_CXBAR_PREG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013ebc8
echo "NV_XBAR_CXBAR_CQ_PRI_SYS1_HXI_CXBAR_PREG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013efc8
echo "NV_XBAR_CXBAR_CQ_PRI_SYS2_HXI_CXBAR_PREG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00d63888
echo "NV_XBAR_CXBAR_CQ_PRI_SYS3_HXI_CXBAR_PREG_CG1_SLCG,  31:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00d639c8
echo "NV_XBAR_MXBAR_CS_PRI_SYS0_HXI0_HXBAR_PREG_CG1_SLCG,  30:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013c89c
echo "NV_XBAR_MXBAR_CS_PRI_SYS0_HXI0_PREG_CG1_SLCG,  30:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013c824
echo "NV_XBAR_MXBAR_CS_PRI_SYS0_HXI0_PREG_CYA_GXCARB_PORT_SLCG,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013c87c
echo "NV_XBAR_MXBAR_CS_PRI_SYS0_HXI1_HXBAR_PREG_CG1_SLCG,  30:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013c79c
echo "NV_XBAR_MXBAR_CS_PRI_SYS0_HXI1_PREG_CG1_SLCG,  30:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013c724
echo "NV_XBAR_MXBAR_CS_PRI_SYS0_HXI1_PREG_CYA_GXCARB_PORT_SLCG,  6:6,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013c77c
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC11_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30004
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC11_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3000c
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC12_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31004
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC12_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3100c
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC13_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32004
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC13_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3200c
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC14_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33004
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC14_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3300c
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC1_PREG_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28004
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC1_PREG_TEX_EAT_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2800c
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC2_PREG_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29004
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC2_PREG_TEX_EAT_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2900c
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC3_PREG_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a004
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC3_PREG_TEX_EAT_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a00c
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC4_PREG_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b004
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC4_PREG_TEX_EAT_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b00c
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC6_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c004
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC6_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c00c
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC7_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d004
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC7_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d00c
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC8_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e004
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC8_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e00c
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC9_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f004
echo "NV_XBAR_MXBAR_PRI_GPC0_EG_GNIC9_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f00c
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC0_PREG_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20004
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC0_PREG_XLAT_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20070
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC0_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20078
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC10_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22004
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC10_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22070
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC10_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22078
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC5_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21004
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC5_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21070
echo "NV_XBAR_MXBAR_PRI_GPC0_IG_GNIC5_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21078
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC11_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30084
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC11_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3008c
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC12_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31084
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC12_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3108c
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC13_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32084
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC13_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3208c
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC14_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33084
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC14_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3308c
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC1_PREG_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28084
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC1_PREG_TEX_EAT_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2808c
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC2_PREG_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29084
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC2_PREG_TEX_EAT_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2908c
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC3_PREG_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a084
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC3_PREG_TEX_EAT_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a08c
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC4_PREG_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b084
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC4_PREG_TEX_EAT_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b08c
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC6_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c084
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC6_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c08c
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC7_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d084
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC7_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d08c
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC8_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e084
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC8_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e08c
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC9_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f084
echo "NV_XBAR_MXBAR_PRI_GPC1_EG_GNIC9_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f08c
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC0_PREG_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20084
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC0_PREG_XLAT_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b200f0
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC0_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b200f8
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC10_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22084
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC10_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b220f0
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC10_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b220f8
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC5_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21084
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC5_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b210f0
echo "NV_XBAR_MXBAR_PRI_GPC1_IG_GNIC5_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b210f8
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC11_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30104
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC11_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3010c
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC12_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31104
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC12_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3110c
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC13_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32104
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC13_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3210c
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC14_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33104
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC14_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3310c
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC1_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28104
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC1_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2810c
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC2_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29104
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC2_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2910c
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC3_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a104
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC3_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a10c
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC4_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b104
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC4_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b10c
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC6_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c104
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC6_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c10c
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC7_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d104
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC7_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d10c
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC8_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e104
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC8_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e10c
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC9_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f104
echo "NV_XBAR_MXBAR_PRI_GPC2_EG_GNIC9_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f10c
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC0_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20104
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC0_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20170
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC0_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20178
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC10_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22104
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC10_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22170
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC10_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22178
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC5_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21104
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC5_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21170
echo "NV_XBAR_MXBAR_PRI_GPC2_IG_GNIC5_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21178
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC11_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30184
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC11_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3018c
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC12_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31184
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC12_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3118c
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC13_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32184
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC13_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3218c
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC14_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33184
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC14_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3318c
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC1_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28184
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC1_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2818c
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC2_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29184
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC2_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2918c
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC3_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a184
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC3_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a18c
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC4_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b184
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC4_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b18c
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC6_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c184
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC6_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c18c
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC7_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d184
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC7_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d18c
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC8_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e184
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC8_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e18c
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC9_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f184
echo "NV_XBAR_MXBAR_PRI_GPC3_EG_GNIC9_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f18c
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC0_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20184
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC0_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b201f0
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC0_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b201f8
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC10_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22184
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC10_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b221f0
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC10_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b221f8
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC5_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21184
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC5_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b211f0
echo "NV_XBAR_MXBAR_PRI_GPC3_IG_GNIC5_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b211f8
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC11_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30204
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC11_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3020c
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC12_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31204
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC12_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3120c
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC13_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32204
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC13_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3220c
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC14_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33204
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC14_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3320c
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC1_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28204
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC1_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2820c
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC2_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29204
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC2_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2920c
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC3_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a204
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC3_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a20c
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC4_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b204
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC4_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b20c
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC6_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c204
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC6_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c20c
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC7_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d204
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC7_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d20c
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC8_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e204
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC8_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e20c
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC9_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f204
echo "NV_XBAR_MXBAR_PRI_GPC4_EG_GNIC9_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f20c
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC0_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20204
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC0_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20270
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC0_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20278
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC10_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22204
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC10_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22270
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC10_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22278
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC5_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21204
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC5_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21270
echo "NV_XBAR_MXBAR_PRI_GPC4_IG_GNIC5_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21278
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC11_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30284
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC11_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3028c
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC12_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31284
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC12_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3128c
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC13_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32284
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC13_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3228c
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC14_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33284
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC14_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3328c
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC1_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28284
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC1_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2828c
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC2_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29284
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC2_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2928c
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC3_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a284
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC3_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a28c
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC4_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b284
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC4_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b28c
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC6_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c284
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC6_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c28c
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC7_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d284
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC7_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d28c
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC8_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e284
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC8_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e28c
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC9_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f284
echo "NV_XBAR_MXBAR_PRI_GPC5_EG_GNIC9_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f28c
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC0_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20284
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC0_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b202f0
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC0_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b202f8
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC10_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22284
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC10_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b222f0
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC10_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b222f8
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC5_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21284
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC5_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b212f0
echo "NV_XBAR_MXBAR_PRI_GPC5_IG_GNIC5_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b212f8
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC11_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30304
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC11_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3030c
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC12_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31304
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC12_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3130c
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC13_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32304
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC13_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3230c
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC14_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33304
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC14_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3330c
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC1_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28304
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC1_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2830c
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC2_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29304
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC2_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2930c
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC3_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a304
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC3_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a30c
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC4_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b304
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC4_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b30c
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC6_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c304
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC6_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c30c
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC7_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d304
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC7_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d30c
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC8_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e304
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC8_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e30c
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC9_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f304
echo "NV_XBAR_MXBAR_PRI_GPC6_EG_GNIC9_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f30c
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC0_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20304
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC0_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20370
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC0_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20378
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC10_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22304
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC10_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22370
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC10_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22378
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC5_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21304
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC5_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21370
echo "NV_XBAR_MXBAR_PRI_GPC6_IG_GNIC5_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21378
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC11_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b30384
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC11_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3038c
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC12_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b31384
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC12_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3138c
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC13_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b32384
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC13_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3238c
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC14_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b33384
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC14_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b3338c
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC1_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b28384
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC1_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2838c
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC2_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b29384
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC2_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2938c
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC3_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a384
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC3_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2a38c
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC4_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b384
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC4_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2b38c
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC6_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c384
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC6_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2c38c
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC7_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d384
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC7_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2d38c
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC8_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e384
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC8_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2e38c
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC9_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f384
echo "NV_XBAR_MXBAR_PRI_GPC7_EG_GNIC9_PREG_TEX_EAT_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b2f38c
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC0_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b20384
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC0_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b203f0
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC0_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b203f8
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC10_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b22384
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC10_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b223f0
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC10_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b223f8
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC5_PREG_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b21384
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC5_PREG_XLAT_ARB_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b213f0
echo "NV_XBAR_MXBAR_PRI_GPC7_IG_GNIC5_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00b213f8
echo "NV_XBAR_MXBAR_PRI_GPCS_EG_GNIC_PREG_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013cc04
echo "NV_XBAR_MXBAR_PRI_GPCS_EG_GNIC_PREG_TEX_EAT_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013cc0c
echo "NV_XBAR_MXBAR_PRI_GPCS_IG_GNIC_PREG_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013cb84
echo "NV_XBAR_MXBAR_PRI_GPCS_IG_GNIC_PREG_XLAT_ARB_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013cbf0
echo "NV_XBAR_MXBAR_PRI_GPCS_IG_GNIC_PREG_XLAT_SM2SM_CG1_SLCG,  28:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013cbf8
echo "NV_XBAR_PRI_GXBAR0_CG1_SLCG,  30:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b004
echo "NV_XBAR_PRI_GXBAR1_CG1_SLCG,  30:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b084
echo "NV_XBAR_PRI_GXBAR2_CG1_SLCG,  30:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b104
echo "NV_XBAR_PRI_GXBAR3_CG1_SLCG,  30:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b184
echo "NV_XBAR_PRI_GXBAR4_CG1_SLCG,  30:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b204
echo "NV_XBAR_PRI_GXBAR5_CG1_SLCG,  30:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b284
echo "NV_XBAR_PRI_GXBAR6_CG1_SLCG,  30:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b304
echo "NV_XBAR_PRI_GXBAR7_CG1_SLCG,  30:1,  NA, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013b384
echo "NV_XBAR_PRI_GXBARS_CG1_SLCG,  30:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013cb04
echo "NV_XBAR_PRI_NXBAR0_CG1_SLCG,  30:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x00d63814
echo "NV_XBAR_PRI_SXBAR0_CTRL_CG1_SLCG,  30:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013ea38
echo "NV_XBAR_PRI_SXBAR0_FOLD_CG1_SLCG,  30:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013ea04
echo "NV_XBAR_PRI_SXBAR1_CTRL_CG1_SLCG,  30:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013eab8
echo "NV_XBAR_PRI_SXBAR1_FOLD_CG1_SLCG,  30:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013ea84
echo "NV_XBAR_PRI_SXBAR2_CTRL_CG1_SLCG,  30:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013eb38
echo "NV_XBAR_PRI_SXBAR2_FOLD_CG1_SLCG,  30:1,  0x0, " 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0x0013eb04
echo "NV_XPL_SHARED_DL_RX_PRI_XPL_DL_RX_XCLK_CG1_SLCG,  6:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xe40420
echo "NV_XPL_SHARED_DL_TL_TX_IF_PRI_XPL_DL_TL_TX_IF_XCLK_CG1_SLCG,  3:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xe40980
echo "NV_XPL_SHARED_DL_TX_PRI_XPL_DL_TX_XCLK_CG1_SLCG,  7:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xe40300
echo "NV_XPL_SHARED_PL_LANES_PRI_XPL_PL_LANES_XCLK_CG1_SLCG,  11:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xe40810
echo "NV_XPL_SHARED_PL_PAD_CTL_PRI_XPL_XCLK_CG1_SLCG,  9:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xe40524
echo "NV_XTL_SYS_PRI_PCIE_CG1_SLCG,  1:1,  0x0,  0-base register inst=0" 
sudo ./nvpex2 --bdf 09:00.0 --reg R:0:0xe6e3f4
