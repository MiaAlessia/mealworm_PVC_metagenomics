# Make new directories and copy all bins to them (these first 3 steps are commented out because i ran them manually)
mkdir binning/dRep_input/
mkdir binning/dRep_output/
cp -r binning/DAS_Tool_output/*/*DASTool_bins binning/dRep_input/

# Rename the mealworm files
rename 's/concoct/bsPVC_R1_concoct/' binning/dRep_input/bsPVC_R1_DASTool_bins/*
rename 's/metabat/bsPVC_R1_metabat/' binning/dRep_input/bsPVC_R1_DASTool_bins/*
rename 's/maxbin/bsPVC_R1_maxbin/' binning/dRep_input/bsPVC_R1_DASTool_bins/*
rename 's/concoct/bsPVC_R2_concoct/' binning/dRep_input/bsPVC_R2_DASTool_bins/*
rename 's/metabat/bsPVC_R2_metabat/' binning/dRep_input/bsPVC_R2_DASTool_bins/*
rename 's/maxbin/bsPVC_R2_maxbin/' binning/dRep_input/bsPVC_R2_DASTool_bins/*
rename 's/concoct/bsPVC_R3_concoct/' binning/dRep_input/bsPVC_R3_DASTool_bins/*
rename 's/metabat/bsPVC_R3_metabat/' binning/dRep_input/bsPVC_R3_DASTool_bins/*
rename 's/maxbin/bsPVC_R3_maxbin/' binning/dRep_input/bsPVC_R3_DASTool_bins/*
rename 's/concoct/fPVC_R1_concoct/' binning/dRep_input/fPVC_R1_DASTool_bins/*
rename 's/metabat/fPVC_R1_metabat/' binning/dRep_input/fPVC_R1_DASTool_bins/*
rename 's/maxbin/fPVC_R1_maxbin/' binning/dRep_input/fPVC_R1_DASTool_bins/*
rename 's/concoct/fPVC_R2_concoct/' binning/dRep_input/fPVC_R2_DASTool_bins/*
rename 's/metabat/fPVC_R2_metabat/' binning/dRep_input/fPVC_R2_DASTool_bins/*
rename 's/maxbin/fPVC_R2_maxbin/' binning/dRep_input/fPVC_R2_DASTool_bins/*
rename 's/concoct/fPVC_R3_concoct/' binning/dRep_input/fPVC_R3_DASTool_bins/*
rename 's/metabat/fPVC_R3_metabat/' binning/dRep_input/fPVC_R3_DASTool_bins/*
rename 's/maxbin/fPVC_R3_maxbin/' binning/dRep_input/fPVC_R3_DASTool_bins/*
rename 's/concoct/standard_R1_concoct/' binning/dRep_input/standard_R1_DASTool_bins/*
rename 's/metabat/standard_R1_metabat/' binning/dRep_input/standard_R1_DASTool_bins/*
rename 's/maxbin/standard_R1_maxbin/' binning/dRep_input/standard_R1_DASTool_bins/*
rename 's/concoct/standard_R2_concoct/' binning/dRep_input/standard_R2_DASTool_bins/*
rename 's/metabat/standard_R2_metabat/' binning/dRep_input/standard_R2_DASTool_bins/*
rename 's/maxbin/standard_R2_maxbin/' binning/dRep_input/standard_R2_DASTool_bins/*
rename 's/concoct/standard_R3_concoct/' binning/dRep_input/standard_R3_DASTool_bins/*
rename 's/metabat/standard_R3_metabat/' binning/dRep_input/standard_R3_DASTool_bins/*
rename 's/maxbin/standard_R3_maxbin/' binning/dRep_input/standard_R3_DASTool_bins/*
rename 's/concoct/control_R1_concoct/' binning/dRep_input/control_R1_DASTool_bins/*
rename 's/metabat/control_R1_metabat/' binning/dRep_input/control_R1_DASTool_bins/*
rename 's/maxbin/control_R1_maxbin/' binning/dRep_input/control_R1_DASTool_bins/*
rename 's/concoct/control_R2_concoct/' binning/dRep_input/control_R2_DASTool_bins/*
rename 's/metabat/control_R2_metabat/' binning/dRep_input/control_R2_DASTool_bins/*
rename 's/maxbin/control_R2_maxbin/' binning/dRep_input/control_R2_DASTool_bins/*
rename 's/concoct/control_R3_concoct/' binning/dRep_input/control_R3_DASTool_bins/*
rename 's/metabat/control_R3_metabat/' binning/dRep_input/control_R3_DASTool_bins/*
rename 's/maxbin/control_R3_maxbin/' binning/dRep_input/control_R3_DASTool_bins/*

# Run dRep
dRep dereplicate binning/dRep_output/ -g binning/dRep_input/*/*.fa -p 16 -comp 70 -con 10 -sa 0.99 --S_algorithm ANImf -d #New dRep function, as of Nov. 10, 2023.

# Rename MAGs
mkdir binning/final_MAGs/
mkdir binning/final_MAGs/mealworm/
perl scripts/rename_MAGs.pl Mealworm_MAG binning/dRep_output/mealworm/dereplicated_genomes/ binning/final_MAGs/mealworm/
