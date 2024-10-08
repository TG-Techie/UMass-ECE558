##################################################################### 
# Please source this file. Don't just excute it. 
#
# A correct way: source cadsetup
# A wrong way  : tcsh cadsetup
# 

#////////////////////////////////////////////////////////////////////
# General 
#////////////////////////////////////////////////////////////////////
setenv TERM $term
alias prepend 'if (-d \!:2) if ("$\!:1" \!~ *"\!:2"*) setenv \!:1 "\!:2":${\!:1}'
alias extend  'if (-d \!:2) if ("$\!:1" \!~ *"\!:2"*) setenv \!:1 ${\!:1}:\!:2'


#////////////////////////////////////////////////////////////////////
# Synopsys setup
#////////////////////////////////////////////////////////////////////
setenv SNPSLMD_LICENSE_FILE 27020@vlsicad.ecs.umass.edu

# Design Compiler Setup
set path = (/opt/synopsys/design_compiler/syn/T-2022.03-SP4/bin $path)

# Hspice setup 
set path=(/opt/synopsys/hspice/hspice/T-2022.06-3/hspice/bin $path)

# Cosmoscope setup
set path =(/opt/synopsys/cscope/cscope64/P-2019.06/ai_bin $path)


#////////////////////////////////////////////////////////////////////
# Mentor setup
#////////////////////////////////////////////////////////////////////

# Mentor license
setenv MGLS_LICENSE_FILE 27000@rfnano-srvr.ecs.umass.edu

# ModelSim
set path =(/opt/mentor/modelsim/modelsim_dlx/linuxpe $path)

# Calibre
setenv CALIBRE_HOME /opt/mentor/calibre/aok_cal_2022.3_26.14
setenv MGC_HOME /opt/mentor/calibre/aok_cal_2022.3_26.14
set path =(/opt/mentor/calibre/aok_cal_2022.3_26.14/bin $path)


#////////////////////////////////////////////////////////////////////
# Cadence setup
#////////////////////////////////////////////////////////////////////

setenv PDK_DIR /opt/cadence/freePDK45/FreePDK45
setenv CDS_Netlisting_Mode Analog
setenv SPECTRE_DEFAULTS -E

# Cadence base directory
setenv CDS_INST_DIR /opt/cadence/ic618
set path = (/opt/cadence/ic618/bin $path)
set path = ($CDS_INST_DIR/tools/bin $path)
set path = ($CDS_INST_DIR/tools/dfII/bin $path)
set path = ($CDS_INST_DIR/tools/dracula/bin $path)
set path = ($CDS_INST_DIR/tools/gcf/bin $path)
set path = ($CDS_INST_DIR/tools/jre/bin $path)
set path = ($CDS_INST_DIR/tools/leapfrog/bin $path)
set path = ($CDS_INST_DIR/tools/modelwriter/bin $path)
set path = ($CDS_INST_DIR/tools/pearl/bin $path)
set path = ($CDS_INST_DIR/tools/perl/bin $path)
set path = ($CDS_INST_DIR/tools/plot/bin $path)
set path = ($CDS_INST_DIR/tools/tlfUtil/bin $path)
setenv SYSTEM_CDS_LIB_DIR $CDS_INST_DIR/tools/dfII/samples
setenv LD_LIBRARY_PATH $CDS_INST_DIR/tools/lib
setenv CDK_DIR /opt/cadence/ncsu_cdk/ncsu-cdk-1.6.0.beta
set path = (/opt/cadence/pvs/bin $path)
set path = (/opt/cadence/qrc/bin $path)
set path = (/opt/cadence/spectre/bin $path)
set path = (/opt/cadence/assura/bin $path)
set path = (/opt/cadence/pegasus/bin $path)

# Cadence license
setenv CDS_LIC_FILE 5280@vlsicad.ecs.umass.edu
setenv LM_LICENSE_FILE 5280@vlsicad.ecs.umass.edu

setenv QRC_HOME /opt/cadence/qrc
setenv ASSURAHOME /opt/cadence/assura

setenv OA_HOME /opt/cadence/ic618/oa_v22.60.007

# to fix libgl error message
setenv LIBGL_ALWAYS_INDIRECT y

setenv OA_UNSUPPORTED_PLAT linux_rhel60
set path=(/opt/cadence/innovus20/bin $path)

# disable Cadence warning that OS is not supported
setenv W3264_NO_HOST_CHECK 1