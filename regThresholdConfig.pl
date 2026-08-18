#!/usr/bin/perl
################################################################################
#                   REGISTER THRESHOLD CONFIGURATION
################################################################################
# Purpose: Define chip-specific register threshold configurations
# 
# This file is loaded by lpe.pl to populate %regThresholdConfig
# Manages ENG_IDLE_FILT_EXP, ENG_IDLE_FILT_MANT, ENG_DELAY_BEFORE, ENG_DELAY_AFTER fields
################################################################################

use strict;
use warnings;

# Return the threshold configuration hash based on chip type
sub get_reg_threshold_config {
    my ($chip) = @_;
    my %regThresholdConfig;

    if ($chip eq 'gr10x') {
        # ============================================================
        # GR10x Chip Register Threshold Configuration
        # Note: Using short names (GR, OFA_0, etc.) for simplicity
        # ============================================================
        %regThresholdConfig = (
            'ELCG_GR' => {
                'description' => 'GR Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_0',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_OFA_0' => {
                'description' => 'OFA 0 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_7',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_OFA_1' => {
                'description' => 'OFA 1 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_31',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_COPY_0' => {
                'description' => 'COPY 0 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_1',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_1' => {
                'description' => 'COPY 1 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_2',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_COPY_2' => {
                'description' => 'COPY 2 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_3',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_COPY_3' => {
                'description' => 'COPY 3 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_4',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_NVDEC_0' => {
                'description' => 'NVDEC 0 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_5',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_NVJPG_0' => {
                'description' => 'NVJPG 0 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_6',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_4' => {
                'description' => 'COPY 4 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_9',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_5' => {
                'description' => 'COPY 5 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_10',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVDEC_1' => {
                'description' => 'NVDEC 1 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_11',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVJPG_1' => {
                'description' => 'NVJPG 1 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_12',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_6' => {
                'description' => 'COPY 6 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_15',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_7' => {
                'description' => 'COPY 7 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_16',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVDEC_2' => {
                'description' => 'NVDEC 2 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_17',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVJPG_2' => {
                'description' => 'NVJPG 2 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_18',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_8' => {
                'description' => 'COPY 8 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_20',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_9' => {
                'description' => 'COPY 9 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_21',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_10' => {
                'description' => 'COPY 10 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_25',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_11' => {
                'description' => 'COPY 11 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_26',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_12' => {
                'description' => 'COPY 12 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_27',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_13' => {
                'description' => 'COPY 13 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_28',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_14' => {
                'description' => 'COPY 14 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_33',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_15' => {
                'description' => 'COPY 15 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_34',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_16' => {
                'description' => 'COPY 16 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_39',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_17' => {
                'description' => 'COPY 17 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_40',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_18' => {
                'description' => 'COPY 18 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_44',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_19' => {
                'description' => 'COPY 19 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_45',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVDEC_3' => {
                'description' => 'NVDEC 3 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_22',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVDEC_4' => {
                'description' => 'NVDEC 4 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_29',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVDEC_5' => {
                'description' => 'NVDEC 5 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_35',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVDEC_6' => {
                'description' => 'NVDEC 6 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_41',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVDEC_7' => {
                'description' => 'NVDEC 7 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_46',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVJPG_3' => {
                'description' => 'NVJPG 3 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_23',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVJPG_4' => {
                'description' => 'NVJPG 4 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_30',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVJPG_5' => {
                'description' => 'NVJPG 5 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_36',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVJPG_6' => {
                'description' => 'NVJPG 6 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_42',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVJPG_7' => {
                'description' => 'NVJPG 7 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_47',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
        );  # End of GR10x configuration
        
    } elsif ($chip eq 'gb202') {
        # ============================================================
        # GB202 Chip Register Threshold Configuration
        # Note: Using short name (GR) for simplicity
        # ============================================================
        %regThresholdConfig = (
            'ELCG_GR' => {
                'description' => 'GR Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_0',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            }
        );
        
    } elsif ($chip eq 'gb100') {
        # ============================================================
        # GB100 Chip Register Threshold Configuration
        # Note: Using short name (GR) for simplicity
        # ============================================================
        %regThresholdConfig = (
            'ELCG_GR' => {
                'description' => 'GR Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_0',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_OFA_0' => {
                'description' => 'OFA 0 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_7',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_OFA_1' => {
                'description' => 'OFA 1 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_31',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_COPY_0' => {
                'description' => 'COPY 0 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_1',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_1' => {
                'description' => 'COPY 1 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_2',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_COPY_2' => {
                'description' => 'COPY 2 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_3',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_COPY_3' => {
                'description' => 'COPY 3 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_4',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_NVDEC_0' => {
                'description' => 'NVDEC 0 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_5',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_NVJPG_0' => {
                'description' => 'NVJPG 0 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_6',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_4' => {
                'description' => 'COPY 4 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_9',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_5' => {
                'description' => 'COPY 5 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_10',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVDEC_1' => {
                'description' => 'NVDEC 1 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_11',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVJPG_1' => {
                'description' => 'NVJPG 1 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_12',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_6' => {
                'description' => 'COPY 6 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_15',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_7' => {
                'description' => 'COPY 7 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_16',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVDEC_2' => {
                'description' => 'NVDEC 2 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_17',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVJPG_2' => {
                'description' => 'NVJPG 2 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_18',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_8' => {
                'description' => 'COPY 8 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_20',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_9' => {
                'description' => 'COPY 9 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_21',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_10' => {
                'description' => 'COPY 10 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_25',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_11' => {
                'description' => 'COPY 11 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_26',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_12' => {
                'description' => 'COPY 12 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_27',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_13' => {
                'description' => 'COPY 13 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_28',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_14' => {
                'description' => 'COPY 14 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_33',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_15' => {
                'description' => 'COPY 15 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_34',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_16' => {
                'description' => 'COPY 16 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_39',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_17' => {
                'description' => 'COPY 17 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_40',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_18' => {
                'description' => 'COPY 18 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_44',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_COPY_19' => {
                'description' => 'COPY 19 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_45',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVDEC_3' => {
                'description' => 'NVDEC 3 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_22',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVDEC_4' => {
                'description' => 'NVDEC 4 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_29',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVDEC_5' => {
                'description' => 'NVDEC 5 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_35',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVDEC_6' => {
                'description' => 'NVDEC 6 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_41',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVDEC_7' => {
                'description' => 'NVDEC 7 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_46',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVJPG_3' => {
                'description' => 'NVJPG 3 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_23',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVJPG_4' => {
                'description' => 'NVJPG 4 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_30',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVJPG_5' => {
                'description' => 'NVJPG 5 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_36',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVJPG_6' => {
                'description' => 'NVJPG 6 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_42',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
            'ELCG_NVJPG_7' => {
                'description' => 'NVJPG 7 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_47',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },
        );
        
    } elsif ($chip eq 'gr15x') {
        # ============================================================
        # GR15x Chip Register Threshold Configuration
        # Note: Same engine set as GR10x
        # ============================================================
        %regThresholdConfig = (
            'ELCG_GR' => {
                'description' => 'GR Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_0',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_OFA_0' => {
                'description' => 'OFA 0 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_7',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_OFA_1' => {
                'description' => 'OFA 1 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_31',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            },

            'ELCG_COPY_0' => {
                'description' => 'COPY 0 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_1',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_1' => {
                'description' => 'COPY 1 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_2',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_2' => {
                'description' => 'COPY 2 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_3',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_3' => {
                'description' => 'COPY 3 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_4',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVDEC_0' => {
                'description' => 'NVDEC 0 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_5',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVJPG_0' => {
                'description' => 'NVJPG 0 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_6',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_4' => {
                'description' => 'COPY 4 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_9',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_5' => {
                'description' => 'COPY 5 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_10',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVDEC_1' => {
                'description' => 'NVDEC 1 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_11',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVJPG_1' => {
                'description' => 'NVJPG 1 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_12',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_6' => {
                'description' => 'COPY 6 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_15',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_7' => {
                'description' => 'COPY 7 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_16',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVDEC_2' => {
                'description' => 'NVDEC 2 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_17',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVJPG_2' => {
                'description' => 'NVJPG 2 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_18',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_8' => {
                'description' => 'COPY 8 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_20',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_9' => {
                'description' => 'COPY 9 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_21',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVDEC_3' => {
                'description' => 'NVDEC 3 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_22',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVJPG_3' => {
                'description' => 'NVJPG 3 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_23',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_10' => {
                'description' => 'COPY 10 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_25',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_11' => {
                'description' => 'COPY 11 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_26',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_12' => {
                'description' => 'COPY 12 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_27',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_13' => {
                'description' => 'COPY 13 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_28',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVDEC_4' => {
                'description' => 'NVDEC 4 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_29',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVJPG_4' => {
                'description' => 'NVJPG 4 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_30',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_14' => {
                'description' => 'COPY 14 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_33',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_15' => {
                'description' => 'COPY 15 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_34',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVDEC_5' => {
                'description' => 'NVDEC 5 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_35',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVJPG_5' => {
                'description' => 'NVJPG 5 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_36',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_16' => {
                'description' => 'COPY 16 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_39',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_17' => {
                'description' => 'COPY 17 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_40',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVDEC_6' => {
                'description' => 'NVDEC 6 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_41',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVJPG_6' => {
                'description' => 'NVJPG 6 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_42',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_18' => {
                'description' => 'COPY 18 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_44',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_COPY_19' => {
                'description' => 'COPY 19 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_45',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVDEC_7' => {
                'description' => 'NVDEC 7 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_46',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
            'ELCG_NVJPG_7' => {
                'description' => 'NVJPG 7 Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_47',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => { 'bit_position' => '12:8',  'description' => 'Engine Idle Filter Exponent' },
                    'ENG_IDLE_FILT_MANT' => { 'bit_position' => '15:13', 'description' => 'Engine Idle Filter Mantissa' },
                    'ENG_DELAY_BEFORE'   => { 'bit_position' => '19:16', 'description' => 'Engine Delay Before' },
                    'ENG_DELAY_AFTER'    => { 'bit_position' => '23:20', 'description' => 'Engine Delay After' }
                }
            },
        );  # End of GR15x configuration
        
    } elsif ($chip eq 'gb20x') {
        # ============================================================
        # GB20x Chip Register Threshold Configuration
        # Note: Using short name (GR) for simplicity
        # ============================================================
        %regThresholdConfig = (
            'ELCG_GR' => {
                'description' => 'GR Engine Threshold Control',
                'register'    => 'NV_PPWR_PMU_GATE_CTRL_0',
                'group'       => 'control',
                'fields'      => {
                    'ENG_IDLE_FILT_EXP'  => {
                        'bit_position'   => '12:8',
                        'description'    => 'Engine Idle Filter Exponent'
                    },
                    'ENG_IDLE_FILT_MANT' => {
                        'bit_position'   => '15:13',
                        'description'    => 'Engine Idle Filter Mantissa'
                    },
                    'ENG_DELAY_BEFORE'   => {
                        'bit_position'   => '19:16',
                        'description'    => 'Engine Delay Before'
                    },
                    'ENG_DELAY_AFTER'    => {
                        'bit_position'   => '23:20',
                        'description'    => 'Engine Delay After'
                    }
                }
            }
        );
        
    } else {
        # ============================================================
        # Default/Unknown Chip Configuration
        # ============================================================
        %regThresholdConfig = ();
    }

    return %regThresholdConfig;
}

1; # Module must return true value

