## Perform preliminary taxonomic classification of reads
mkdir kraken2_output/ # create directory to hold kraken and bracken output
sh scripts/kraken2_workflow.sh # run kraken2 and bracken at domain, phylum, and genus levels

## Perform taxonomic classification of reads limited to bacteria
mkdir kraken2_bacteria_output/ # create directory to hold kraken and bracken output
sh scripts/kraken2_workflow_bacteria.sh # run kraken2 and bracken at multiple levels

## Preprocess Illumina reads
mkdir read_preprocessing/ # create directory to hold all read preprocessing data
mkdir read_preprocessing/bbduk_output/ # create directory to hold bbduk cleaned reads
sh scripts/bbduk_run.sh # perform initial QC filtering of illumina reads
mkdir read_preprocessing/trimmomatic_output/ # create directory to hold trimmed reads
sh scripts/trimmomatic.sh # trim the reads with trimmomatic
mkdir read_preprocessing/insect_genomes/ # create directory to hold insect genome bowtie2 databases
cp ../insect_genomes/final_genomes/mealworm_masked.fasta read_preprocessing/insect_genomes/mealworm.fasta # get mealworm genome
sed -i 's/a/A/g' read_preprocessing/insect_genomes/mealworm.fasta # unmask, just in case
sed -i 's/t/T/g' read_preprocessing/insect_genomes/mealworm.fasta # unmask, just in case
sed -i 's/g/G/g' read_preprocessing/insect_genomes/mealworm.fasta # unmask, just in case
sed -i 's/c/C/g' read_preprocessing/insect_genomes/mealworm.fasta # unmask, just in case
bowtie2-build --threads 8 read_preprocessing/insect_genomes/mealworm.fasta read_preprocessing/insect_genomes/mealworm # build bowtie2 database
mkdir read_preprocessing/insect_alignment/ # create directory to hold insect mapping files
sh scripts/bowtie2.sh # map all reads to the corresponding insect genome
sh scripts/extract_unmapped_reads.sh # extract cleaned reads lacking reads that map to the insect genome assemblies
pigz -p 28 -r read_preprocessing/cleaned_reads/ # compress all cleaned read files

## Prepare metagenome assemblies
mkdir metagenome_assemblies_100/ # create directory to hold all assembly data
sh scripts/spades.sh # run metaSPAdes to create metagenome assemblies
mkdir metagenome_assemblies_100/stats/ # create directory for assembly stats
sh scripts/stats.sh # get assembly statistics
mkdir metagenome_assemblies_100/reduced_assemblies/ # create directory for metagenome assemblies (contigs < 2.5 kb)
sh scripts/reduced_assemblies.sh # Extract metagenome assemblies (contigs < 2.5 kb)

## Bin contigs into MAGs
mkdir binning/ # create directory to hold all binning data
sh scripts/run_binning.sh # bin the samples with MetaBat2, MaxBin2, CONCOCT, and DAS_Tool
sh scripts/dereplicate.sh # dereplicate the MAGs with dRep, and rename
## Annotation with DRAM and classificaiton with GTDB-tk done using KBase: (https://www.kbase.us/)

## Calculate relative MAG abundances
sh scripts/getAbundance_PVC.sh
perl scripts/getAbundance_mealworm_2.pl

## Construct maximum-likelihood phylogeny of the MAGs
sh scripts/ml_phylogeny.sh

## Identify putative orthologs to PVC-dechlorinating enzymes from literature
mkdir secretome/ # make directory to hold the secretome files
mkdir secretome/secreted_proteins/ # make directory for holding the total secretome
mkdir secretome/secreted_proteins/metagenome_proteomes/ # Make folder to hold the DRAM annotations as protein fasta files
# Manually upload the DRAM outputs from Kbase to the above folder
cat secretome/secreted_proteins/metagenome_proteomes/*.faa > secretome/secreted_proteins/total_metagenome_proteins.fasta # Combine all the proteome files
mkdir secretome/secreted_proteins/cdhit_output/ # Folder to hold CD-HIT output
mkdir secretome/secreted_proteins/signalp_output/ # Folder to hold signalP output
cd-hit -T 28 -aL 0.99 -c 0.99 -M 50000 -d 0 -i secretome/secreted_proteins/total_metagenome_proteins.fasta -o secretome/secreted_proteins/cdhit_output/total_nonredundant_proteins_full # Get a non-redundant protein set
mv secretome/secreted_proteins/cdhit_output/total_nonredundant_proteins_full secretome/secreted_proteins/cdhit_output/total_nonredundant_proteins_full.fasta # Rename file
mkdir secretome/secreted_proteins/signalp_output/
source /datadisk1/Bioinformatics_programs/signalp6_fast/sp6env/bin/activate # Activate virtual environment for signalP
signalp6 --fastafile secretome/secreted_proteins/cdhit_output/total_nonredundant_proteins_full.fasta --output_dir secretome/secreted_proteins/signalp_output --format none --organism other --mode fast --write_procs 8 --bsize 40 # Predict the secreted proteins
deactivate # Deactivate virtual environment for signalP
cp secretome/secreted_proteins/signalp_output/processed_entries.fasta secretome/full_secretome.fasta # Make a copy of the predicted secreted protein fasta file
mkdir secretome/oxidative_proteins/ # make directory for holding the predicted oxidative proteins
mkdir secretome/oxidative_proteins/input_data/ # Make directory to hold the input data
# Manually add the seed alignments for the following protein families to the above folder: PF12710, PF00702, PF08282 (HAD-like hydrolases), PF00070, PF07992 (pyridine nucleotide-disulphide oxidoreductases), PF12697 (a/b hydrolase family), and PF00561 (a/b hydrolase fold)
# Manually add a protein multifasta file to the above folder that contains the amino acid sequences of proteins previously implicated in PVC dechlorination
sh scripts/hmmsearch_and_parse_proteins.sh # Identify putative orthologs with hmmsearch and extract hits

## Created SSNs using https://efi.igb.illinois.edu/efi-est/c
