#!/usr/bin/perl
################################################################################
#                   REGISTER CONTROL CONFIGURATION
################################################################################
# Purpose: Define chip-specific register control strategies
# 
# This file is loaded by lpe.pl to populate %regControlConfig
# Separated for better code organization and maintainability
################################################################################

use strict;
use warnings;

# Return the configuration hash based on chip type
sub get_reg_control_config {
    my ($chip) = @_;
    my %regControlConfig;

    if ($chip eq 'gr10x') {
        # ============================================================
        # GR10x Chip Register Control Configuration
        # ============================================================
        %regControlConfig = (

            'NVDCLK_SD' => {
                'description' => 'NVDCLK Power Gate Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_ROOT_GATING_CTRL'    => 
                    {
                        'group'          => 'control',
                        'bit_position'   => 31,
                        'enable_value'   => 0x1,
                        'disable_value'  => 0x0,
                    }
                }
            },

            'NVDCLK_SD_STATUS' => {
                'description' => 'NVDCLK Power Gate Status Read only',
                'registers'   => 
                {
                    'NV_PPWR_PMU_ROOT_GATING_STATUS'   => 
                    {
                        'group'          => 'control',
                        'bit_position'   => '10:8',
                        'enable_value'   => 0x3,
                        'disable_value'  => 0x0,
                    }
                }
            },            

            'PCIE_BLCG' => {
                'description' => 'PCIE BLCG Control',
                'registers'   => 
                {
                    'NV_XPL_SHARED_PL_PAD_CTL_PRI_XPL_XCLK_CG' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => 'whole',
                        'enable_value'   => 0x42,
                        'disable_value'  => 0x00,
                    }
                }
            },
            

            'PCIE_SLCG' => {
                'description' => 'PCIE SLCG Control',
                'registers'   => 
                {
                    'NV_XPL_SHARED_DL_TX_PRI_XPL_DL_TX_XCLK_CG1' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => '7:1',
                        'enable_value'   => 0x00,
                        'disable_value'  => 0x7f,
                    },
                    'NV_XPL_SHARED_DL_RX_PRI_XPL_DL_RX_XCLK_CG1' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => '6:1',
                        'enable_value'   => 0x00,
                        'disable_value'  => 0x3f,
                    },
                    'NV_XPL_SHARED_DL_TL_TX_IF_PRI_XPL_DL_TL_TX_IF_XCLK_CG1' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => '3:1',
                        'enable_value'   => 0x00,
                        'disable_value'  => 0x7,
                    },
                    'NV_XPL_SHARED_PL_PAD_CTL_PRI_XPL_XCLK_CG1' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => '9:1',
                        'enable_value'   => 0x00,
                        'disable_value'  => 0x1ff,
                    },
                    'NV_XPL_SHARED_PL_LANES_PRI_XPL_PL_LANES_XCLK_CG1' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => '11:1',
                        'enable_value'   => 0x000,
                        'disable_value'  => 0x7ff,
                    }
                }
            },
            

            'ELCG_GR' => {
                'description' => 'GR Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_0'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_OFA_0' => {
                'description' => 'OFA_0 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_7'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },
            'ELCG_OFA_1' => {
                'description' => 'OFA_1 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_31'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },
            'ELCG_COPY_0' => {
                'description' => 'COPY 0 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_1'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },                        

            'ELCG_COPY_1' => {
                'description' => 'COPY 1 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_2'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_COPY_2' => {
                'description' => 'COPY 2 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_3'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },   

            'ELCG_COPY_3' => {
                'description' => 'COPY 3 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_4'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_NVDEC_0' => {
                'description' => 'NVDEC 0 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_5'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_NVJPG_0' => {
                'description' => 'NVJPG 0 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_6'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
      

            'ELCG_COPY_4' => {
                'description' => 'COPY 4 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_9'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },      

            'ELCG_COPY_5' => {
                'description' => 'COPY 5 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_10'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_NVDEC_1' => {
                'description' => 'NVDEC 1 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_11'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_NVJPG_1' => {
                'description' => 'NVJPG 1 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_12'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },


            'ELCG_COPY_6' => {
                'description' => 'COPY 6 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_15'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_COPY_7' => {
                'description' => 'COPY 7 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_16'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            

            'ELCG_NVDEC_2' => {
                'description' => 'NVDEC 2 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_17'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  

            'ELCG_NVJPG_2' => {
                'description' => 'NVJPG 2 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_18'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  

            'ELCG_COPY_8' => {
                'description' => 'COPY 8 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_20'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },      

            'ELCG_COPY_9' => {
                'description' => 'COPY 9 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_21'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_COPY_10' => {
                'description' => 'COPY 10 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_25'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_COPY_11' => {
                'description' => 'COPY 11 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_26'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_COPY_12' => {
                'description' => 'COPY 12 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_27'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_COPY_13' => {
                'description' => 'COPY 13 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_28'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_14' => {
                'description' => 'COPY 14 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_33'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_15' => {
                'description' => 'COPY 15 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_34'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_16' => {
                'description' => 'COPY 16 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_39'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_17' => {
                'description' => 'COPY 17 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_40'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_18' => {
                'description' => 'COPY 18 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_44'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },
            'ELCG_COPY_19' => {
                'description' => 'COPY 19 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_45'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },
            'ELCG_NVDEC_3' => {
                'description' => 'NVDEC 3 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_22'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  

            'ELCG_NVDEC_4' => {
                'description' => 'NVDEC 4 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_29'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  

            'ELCG_NVDEC_5' => {
                'description' => 'NVDEC 5 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_35'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVDEC_6' => {
                'description' => 'NVDEC 6 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_41'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVDEC_7' => {
                'description' => 'NVDEC 7 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_46'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_NVJPG_3' => {
                'description' => 'NVJPG 3 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_23'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVJPG_4' => {
                'description' => 'NVJPG 4 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_30'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVJPG_5' => {
                'description' => 'NVJPG 5 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_36'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVJPG_6' => {
                'description' => 'NVJPG 6 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_42'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVJPG_7' => {
                'description' => 'NVJPG 7 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_47'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            # ┌─────────────────────────────────────────────────────────────────┐
            # │ ELCG_ALL - ELCG Block Level Clock Gating Control single die mode│
            # │ Register: NV_PPWR_PMU_GATE_CTRL_ALL                             │
            # └─────────────────────────────────────────────────────────────────┘
            'ELCG_ALL' => {
                'description' => 'ELCG ALL Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_0'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_1'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_2'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_3'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_4'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_5'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_6'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_7'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_9'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_10'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_11'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_12'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    # 'NV_PPWR_PMU_GATE_CTRL_13' => 
                    # { 
                    #     'group' => 'control',
                    #     'bit_position' => "whole",
                    #     'enable_value' => 0x22582245,
                    #     'disable_value' => 0x22000040,
                    # },
                    'NV_PPWR_PMU_GATE_CTRL_15'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_16'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_17'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_18'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_20'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_21'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_22'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_23'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            # ┌─────────────────────────────────────────────────────────────────┐
            # │ ELCG_ALL - ELCG Block Level Clock Gating Control dual die mode  │
            # │ Register: NV_PPWR_PMU_GATE_CTRL_ALL dual                        │
            # └─────────────────────────────────────────────────────────────────┘
            'ELCG_ALL_dual' => {
                'description' => 'ELCG ALL Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_0'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_1'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_2'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_3'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_4'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_5'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_6'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_7'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_9'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_10'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_11'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_12'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    # 'NV_PPWR_PMU_GATE_CTRL_13' => 
                    # { 
                    #     'group' => 'control',
                    #     'bit_position' => "whole",
                    #     'enable_value' => 0x22582245,
                    #     'disable_value' => 0x22000040,
                    # },
                    'NV_PPWR_PMU_GATE_CTRL_15'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_16'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_17'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_18'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_20'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_21'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_22'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_23'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_25'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_26'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_27'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_28'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_29'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_30'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_31'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_33'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_34'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_35'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_36'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_39'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_40'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_41'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_42'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_44'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_45'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_46'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_47'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  

            'NVLINK_BLCG_0' => {
                'description' => 'NVLINK BLCG 0 Control',
                'registers'   => 
                {
                    'NV_NVLPW_CTRL_CG_BLCG_0' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => 0,
                        'enable_value'   => 0x0,
                        'disable_value'  => 0x1,
                    }
                }
            },
            

            'NVLINK_SLCG_0' => {
                'description' => 'NVLINK SLCG 0 Control',
                'registers'   => 
                {
                    'NV_NVLPW_TREX_CG1_0' => 
                    [
                        {
                            'group'          => 'control',
                            'bit_position'   => 0,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 1,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        }
                    ],
                    'NV_NVLPW_TLW_CTRL_CG1_0' => 
                    [
                        {
                            'group'          => 'control',
                            'bit_position'   => 0,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 1,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 2,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        }
                    ],
                    'NV_NVLPW_RLW_CTRL_CG1_0' => 
                    [
                        {
                            'group'          => 'control',
                            'bit_position'   => 0,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 1,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 2,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 3,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 4,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 5,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 31,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        }
                    ],
                    'NV_NVLPW_MVB_TX_MVB_TX_CG1_0' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => 0,
                        'enable_value'   => 0x0,
                        'disable_value'  => 0x1,
                    },
                    'NV_NVLPW_MVB_RX_MVB_RX_CG1_0' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => 0,
                        'enable_value'   => 0x0,
                        'disable_value'  => 0x1,
                    }
                }
            },
            

            'NVLINK_BLCG_ALL' => {
                'description' => 'NVLINK BLCG ALL Control',
                'registers'   => 
                {
                    'NV_NVLPW_CTRL_CG_BLCG_ALL' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => 0,
                        'enable_value'   => 0x0,
                        'disable_value'  => 0x1,
                    },
                    'NV_GIN_PRI_GIN_CG_ALL' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => 6,
                        'enable_value'   => 0x1,
                        'disable_value'  => 0x0,
                    },
                        
                    
                }
            },
            

            'NVLINK_SLCG_ALL' => {
                'description' => 'NVLINK SLCG ALL Control',
                'registers'   => 
                {
                    'NV_NVLPW_TREX_CG1_ALL' => 
                    [
                        {
                            'group'          => 'control',
                            'bit_position'   => 0,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 1,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        }
                    ],
                    'NV_NVLPW_TLW_CTRL_CG1_ALL' => 
                    [
                        {
                            'group'          => 'control',
                            'bit_position'   => 0,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 1,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 2,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        }
                    ],
                    'NV_NVLPW_RLW_CTRL_CG1_ALL' => 
                    [
                        {
                            'group'          => 'control',
                            'bit_position'   => 0,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 1,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 2,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 3,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 4,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 5,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 31,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        }
                    ],
                    'NV_NVLPW_MVB_TX_MVB_TX_CG1_ALL' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => 0,
                        'enable_value'   => 0x0,
                        'disable_value'  => 0x1,
                    },
                    'NV_NVLPW_MVB_RX_MVB_RX_CG1_ALL' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => 0,
                        'enable_value'   => 0x0,
                        'disable_value'  => 0x1,
                    },
                    'NV_GIN_PRI_GIN_CG1_ALL' => 
                    [
                        {
                            'group'          => 'control',
                            'bit_position'   => 0,
                            'enable_value'   => 0x1,
                            'disable_value'  => 0x0,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 1,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        },
                        {
                            'group'          => 'control',
                            'bit_position'   => 2,
                            'enable_value'   => 0x0,
                            'disable_value'  => 0x1,
                        }
                    ],
                    'NV_PERF_PMMROUTER_PERFMON_CG2_SECURE' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => 31,
                        'enable_value'   => 0x0,
                        'disable_value'  => 0x1,
                    },
                    'NV_PERF_PMMROUTER_PROFILING_CG2_SECURE' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => 31,
                        'enable_value'   => 0x0,
                        'disable_value'  => 0x1,
                    }
                }
            }
            
        );  # End of GR10x configuration
        
    } elsif ($chip eq 'gb202') {
        # ============================================================
        # GB202 Chip Register Control Configuration
        # ============================================================
        # Status: Reserved for future use
        # Note: Add gb202-specific register control configurations here
        %regControlConfig = (
            # Add gb202-specific register control configurations here
        );
        
    } elsif ($chip eq 'gb100') {
        # ============================================================
        # GB100 Chip Register Control Configuration
        # ============================================================
        # Status: Reserved for future use
        # Note: Add gb100-specific register control configurations here
        %regControlConfig = (
            'NVLINK_BLCG_0' => {
                'description' => 'NVLINK BLCG Control',
                'registers'   => 
                {
                    'NV_NVLPW_CTRL_CG_BLCG_0' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => 0,
                        'enable_value'   => 0x0,
                        'disable_value'  => 0x1,
                    }
                }
            },

            'ELCG_GR' => {
                'description' => 'GR Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_0'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_OFA_0' => {
                'description' => 'OFA_0 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_7'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },
            'ELCG_OFA_1' => {
                'description' => 'OFA_1 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_31'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },
            'ELCG_COPY_0' => {
                'description' => 'COPY 0 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_1'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },                        

            'ELCG_COPY_1' => {
                'description' => 'COPY 1 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_2'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_COPY_2' => {
                'description' => 'COPY 2 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_3'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },   

            'ELCG_COPY_3' => {
                'description' => 'COPY 3 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_4'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_NVDEC_0' => {
                'description' => 'NVDEC 0 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_5'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_NVJPG_0' => {
                'description' => 'NVJPG 0 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_6'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
      

            'ELCG_COPY_4' => {
                'description' => 'COPY 4 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_9'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },      

            'ELCG_COPY_5' => {
                'description' => 'COPY 5 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_10'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_NVDEC_1' => {
                'description' => 'NVDEC 1 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_11'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_NVJPG_1' => {
                'description' => 'NVJPG 1 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_12'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },


            'ELCG_COPY_6' => {
                'description' => 'COPY 6 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_15'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_COPY_7' => {
                'description' => 'COPY 7 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_16'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            

            'ELCG_NVDEC_2' => {
                'description' => 'NVDEC 2 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_17'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  

            'ELCG_NVJPG_2' => {
                'description' => 'NVJPG 2 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_18'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  

            'ELCG_COPY_8' => {
                'description' => 'COPY 8 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_20'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },      

            'ELCG_COPY_9' => {
                'description' => 'COPY 9 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_21'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_COPY_10' => {
                'description' => 'COPY 10 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_25'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_COPY_11' => {
                'description' => 'COPY 11 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_26'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_COPY_12' => {
                'description' => 'COPY 12 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_27'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_COPY_13' => {
                'description' => 'COPY 13 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_28'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_14' => {
                'description' => 'COPY 14 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_33'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_15' => {
                'description' => 'COPY 15 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_34'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_16' => {
                'description' => 'COPY 16 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_39'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_17' => {
                'description' => 'COPY 17 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_40'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_18' => {
                'description' => 'COPY 18 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_44'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },
            'ELCG_COPY_19' => {
                'description' => 'COPY 19 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_45'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },
            'ELCG_NVDEC_3' => {
                'description' => 'NVDEC 3 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_22'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  

            'ELCG_NVDEC_4' => {
                'description' => 'NVDEC 4 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_29'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  

            'ELCG_NVDEC_5' => {
                'description' => 'NVDEC 5 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_35'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVDEC_6' => {
                'description' => 'NVDEC 6 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_41'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVDEC_7' => {
                'description' => 'NVDEC 7 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_46'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_NVJPG_3' => {
                'description' => 'NVJPG 3 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_23'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVJPG_4' => {
                'description' => 'NVJPG 4 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_30'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVJPG_5' => {
                'description' => 'NVJPG 5 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_36'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVJPG_6' => {
                'description' => 'NVJPG 6 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_42'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVJPG_7' => {
                'description' => 'NVJPG 7 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_47'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            # ┌─────────────────────────────────────────────────────────────────┐
            # │ ELCG_ALL - ELCG Block Level Clock Gating Control single die mode│
            # │ Register: NV_PPWR_PMU_GATE_CTRL_ALL                             │
            # └─────────────────────────────────────────────────────────────────┘
            'ELCG_ALL' => {
                'description' => 'ELCG ALL Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_0'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_1'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_2'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_3'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_4'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_5'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_6'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_7'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_9'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_10'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_11'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_12'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    # 'NV_PPWR_PMU_GATE_CTRL_13' => 
                    # { 
                    #     'group' => 'control',
                    #     'bit_position' => "whole",
                    #     'enable_value' => 0x22582245,
                    #     'disable_value' => 0x22000040,
                    # },
                    'NV_PPWR_PMU_GATE_CTRL_15'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_16'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_17'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_18'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_20'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_21'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_22'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_23'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            # ┌─────────────────────────────────────────────────────────────────┐
            # │ ELCG_ALL - ELCG Block Level Clock Gating Control dual die mode  │
            # │ Register: NV_PPWR_PMU_GATE_CTRL_ALL dual                        │
            # └─────────────────────────────────────────────────────────────────┘
            'ELCG_ALL_dual' => {
                'description' => 'ELCG ALL Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_0'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_1'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_2'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_3'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_4'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_5'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_6'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_7'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_9'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_10'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_11'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_12'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    # 'NV_PPWR_PMU_GATE_CTRL_13' => 
                    # { 
                    #     'group' => 'control',
                    #     'bit_position' => "whole",
                    #     'enable_value' => 0x22582245,
                    #     'disable_value' => 0x22000040,
                    # },
                    'NV_PPWR_PMU_GATE_CTRL_15'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_16'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_17'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_18'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_20'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_21'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_22'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_23'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_25'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_26'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_27'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_28'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_29'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_30'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_31'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_33'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_34'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_35'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_36'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_39'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_40'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_41'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_42'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_44'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_45'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_46'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_47'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

        );  # End of GB100 configuration
        
    } elsif ($chip eq 'gr15x') {
        # ============================================================
        # GR15x Chip Register Control Configuration
        # ============================================================
        %regControlConfig = (

            'NVDCLK_SD' => {
                'description' => 'NVDCLK Power Gate Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_ROOT_GATING_CTRL'    => 
                    {
                        'group'          => 'control',
                        'bit_position'   => 31,
                        'enable_value'   => 0x1,
                        'disable_value'  => 0x0,
                    }
                }
            },

            'NVDCLK_SD_STATUS' => {
                'description' => 'NVDCLK Power Gate Status Read only',
                'registers'   => 
                {
                    'NV_PPWR_PMU_ROOT_GATING_STATUS'   => 
                    {
                        'group'          => 'control',
                        'bit_position'   => '10:8',
                        'enable_value'   => 0x3,
                        'disable_value'  => 0x0,
                    }
                }
            },            

            'ELCG_GR' => {
                'description' => 'GR Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_0'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_OFA_0' => {
                'description' => 'OFA_0 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_7'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },
            'ELCG_OFA_1' => {
                'description' => 'OFA_1 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_31'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },
            'ELCG_COPY_0' => {
                'description' => 'COPY 0 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_1'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },                        

            'ELCG_COPY_1' => {
                'description' => 'COPY 1 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_2'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_COPY_2' => {
                'description' => 'COPY 2 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_3'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },   

            'ELCG_COPY_3' => {
                'description' => 'COPY 3 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_4'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_NVDEC_0' => {
                'description' => 'NVDEC 0 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_5'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_NVJPG_0' => {
                'description' => 'NVJPG 0 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_6'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
      

            'ELCG_COPY_4' => {
                'description' => 'COPY 4 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_9'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },      

            'ELCG_COPY_5' => {
                'description' => 'COPY 5 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_10'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_NVDEC_1' => {
                'description' => 'NVDEC 1 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_11'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_NVJPG_1' => {
                'description' => 'NVJPG 1 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_12'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },


            'ELCG_COPY_6' => {
                'description' => 'COPY 6 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_15'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },

            'ELCG_COPY_7' => {
                'description' => 'COPY 7 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_16'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            

            'ELCG_NVDEC_2' => {
                'description' => 'NVDEC 2 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_17'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  

            'ELCG_NVJPG_2' => {
                'description' => 'NVJPG 2 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_18'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  

            'ELCG_COPY_8' => {
                'description' => 'COPY 8 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_20'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },      

            'ELCG_COPY_9' => {
                'description' => 'COPY 9 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_21'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_COPY_10' => {
                'description' => 'COPY 10 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_25'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_COPY_11' => {
                'description' => 'COPY 11 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_26'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_COPY_12' => {
                'description' => 'COPY 12 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_27'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_COPY_13' => {
                'description' => 'COPY 13 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_28'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_14' => {
                'description' => 'COPY 14 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_33'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_15' => {
                'description' => 'COPY 15 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_34'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_16' => {
                'description' => 'COPY 16 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_39'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_17' => {
                'description' => 'COPY 17 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_40'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_COPY_18' => {
                'description' => 'COPY 18 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_44'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },
            'ELCG_COPY_19' => {
                'description' => 'COPY 19 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_45'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },
            'ELCG_NVDEC_3' => {
                'description' => 'NVDEC 3 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_22'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  

            'ELCG_NVDEC_4' => {
                'description' => 'NVDEC 4 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_29'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  

            'ELCG_NVDEC_5' => {
                'description' => 'NVDEC 5 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_35'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVDEC_6' => {
                'description' => 'NVDEC 6 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_41'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVDEC_7' => {
                'description' => 'NVDEC 7 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_46'         => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }, 
            'ELCG_NVJPG_3' => {
                'description' => 'NVJPG 3 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_23'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVJPG_4' => {
                'description' => 'NVJPG 4 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_30'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVJPG_5' => {
                'description' => 'NVJPG 5 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_36'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVJPG_6' => {
                'description' => 'NVJPG 6 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_42'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            'ELCG_NVJPG_7' => {
                'description' => 'NVJPG 7 Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_47'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            },  
            # ┌─────────────────────────────────────────────────────────────────┐
            # │ ELCG_ALL - ELCG Block Level Clock Gating Control               │
            # │ Register: NV_PPWR_PMU_GATE_CTRL_ALL                            │
            # └─────────────────────────────────────────────────────────────────┘
            'ELCG_ALL' => {
                'description' => 'ELCG ALL Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_0'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_1'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_2'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_3'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_4'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_5'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_6'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_7'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_9'          => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_10'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_11'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_12'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_15'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_16'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_17'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_18'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_20'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_21'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_22'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_23'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_25'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_26'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_27'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_28'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_29'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_30'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_31'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_33'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_34'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_35'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_36'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_39'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_40'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_41'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_42'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_44'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_45'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_46'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    },
                    'NV_PPWR_PMU_GATE_CTRL_47'         => 
                    { 
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }

        );  # End of GR15x configuration
        
    } elsif ($chip eq 'gb20x') {
        # ============================================================
        # GB20x Chip Register Control Configuration
        # ============================================================
        %regControlConfig = (

            'NVDCLK_SD' => {
                'description' => 'NVDCLK Power Gate Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_ROOT_GATING_CTRL' => 
                    {
                        'group'          => 'control',
                        'bit_position'   => 31,
                        'enable_value'   => 0x1,
                        'disable_value'  => 0x0,
                    }
                }
            },

            'NVDCLK_SD_STATUS' => {
                'description' => 'NVDCLK Power Gate Status Read only',
                'registers'   => 
                {
                    'NV_PPWR_PMU_ROOT_GATING_STATUS'   => 
                    {
                        'group'          => 'control',
                        'bit_position'   => '10:8',
                        'enable_value'   => 0x3,
                        'disable_value'  => 0x0,
                    }
                }
            }, 

            'ELCG_GR' => {
                'description' => 'GR Control',
                'registers'   => 
                {
                    'NV_PPWR_PMU_GATE_CTRL_0'          => 
                    {
                        'group'          => 'control',
                        'bit_position'   => "whole",
                        'enable_value'   => 0x22582245,
                        'disable_value'  => 0x22000040,
                    }
                }
            }
        );
        
    } else {
        # ============================================================
        # Default/Unknown Chip Configuration
        # ============================================================
        # Warning: Empty configuration for unsupported chip type
        %regControlConfig = ();
    }

    return %regControlConfig;
}

1; # Module must return true value
