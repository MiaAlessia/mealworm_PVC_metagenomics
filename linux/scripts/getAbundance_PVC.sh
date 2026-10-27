# Make multifasta file from mealworm PVC MAGs
cat binning/final_MAGs/mealworm/Mealworm_MAG_00*.fasta > binning/final_MAGs/mealworm/mealworm_MAGs.fasta

# Map Illumina data against multifasta of MAGs to find sequencing depth
mkdir MAG_abundance/
mkdir MAG_abundance/bowtie2_index/ #Create directory for bowtie index
bowtie2-build --threads 8 binning/final_MAGs/mealworm/mealworm_MAGs.fasta MAG_abundance/bowtie2_index/PVC_MAGs #Build bowtie index
mkdir MAG_abundance/alignment/ # create directory to hold mapping files
# Run bowtie2 on each pair of cleaned Illumina reads
bowtie2 -p 8 -x MAG_abundance/bowtie2_index/PVC_MAGs -1 read_preprocessing/cleaned_reads/bsPVC_R1_R1.cleaned.fastq.gz -2 read_preprocessing/cleaned_reads/bsPVC_R1_R2.cleaned.fastq.gz 2> MAG_abundance/alignment/bsPVC_R1.txt | samtools view -Sb -@ 8 -o MAG_abundance/alignment/bsPVC_R1.bam
bowtie2 -p 8 -x MAG_abundance/bowtie2_index/PVC_MAGs -1 read_preprocessing/cleaned_reads/bsPVC_R2_R1.cleaned.fastq.gz -2 read_preprocessing/cleaned_reads/bsPVC_R2_R2.cleaned.fastq.gz 2> MAG_abundance/alignment/bsPVC_R2.txt | samtools view -Sb -@ 8 -o MAG_abundance/alignment/bsPVC_R2.bam
bowtie2 -p 8 -x MAG_abundance/bowtie2_index/PVC_MAGs -1 read_preprocessing/cleaned_reads/bsPVC_R3_R1.cleaned.fastq.gz -2 read_preprocessing/cleaned_reads/bsPVC_R3_R2.cleaned.fastq.gz 2> MAG_abundance/alignment/bsPVC_R3.txt | samtools view -Sb -@ 8 -o MAG_abundance/alignment/bsPVC_R3.bam
bowtie2 -p 8 -x MAG_abundance/bowtie2_index/PVC_MAGs -1 read_preprocessing/cleaned_reads/fPVC_R1_R1.cleaned.fastq.gz -2 read_preprocessing/cleaned_reads/fPVC_R1_R2.cleaned.fastq.gz 2> MAG_abundance/alignment/fPVC_R1.txt | samtools view -Sb -@ 8 -o MAG_abundance/alignment/fPVC_R1.bam
bowtie2 -p 8 -x MAG_abundance/bowtie2_index/PVC_MAGs -1 read_preprocessing/cleaned_reads/fPVC_R2_R1.cleaned.fastq.gz -2 read_preprocessing/cleaned_reads/fPVC_R2_R2.cleaned.fastq.gz 2> MAG_abundance/alignment/fPVC_R2.txt | samtools view -Sb -@ 8 -o MAG_abundance/alignment/fPVC_R2.bam
bowtie2 -p 8 -x MAG_abundance/bowtie2_index/PVC_MAGs -1 read_preprocessing/cleaned_reads/fPVC_R3_R1.cleaned.fastq.gz -2 read_preprocessing/cleaned_reads/fPVC_R3_R2.cleaned.fastq.gz 2> MAG_abundance/alignment/fPVC_R3.txt | samtools view -Sb -@ 8 -o MAG_abundance/alignment/fPVC_R3.bam
bowtie2 -p 8 -x MAG_abundance/bowtie2_index/PVC_MAGs -1 read_preprocessing/cleaned_reads/standard_R1_R1.cleaned.fastq.gz -2 read_preprocessing/cleaned_reads/standard_R1_R2.cleaned.fastq.gz 2> MAG_abundance/alignment/standard_R1.txt | samtools view -Sb -@ 8 -o MAG_abundance/alignment/standard_R1.bam
bowtie2 -p 8 -x MAG_abundance/bowtie2_index/PVC_MAGs -1 read_preprocessing/cleaned_reads/standard_R2_R1.cleaned.fastq.gz -2 read_preprocessing/cleaned_reads/standard_R2_R2.cleaned.fastq.gz 2> MAG_abundance/alignment/standard_R2.txt | samtools view -Sb -@ 8 -o MAG_abundance/alignment/standard_R2.bam
bowtie2 -p 8 -x MAG_abundance/bowtie2_index/PVC_MAGs -1 read_preprocessing/cleaned_reads/standard_R3_R1.cleaned.fastq.gz -2 read_preprocessing/cleaned_reads/standard_R3_R2.cleaned.fastq.gz 2> MAG_abundance/alignment/standard_R3.txt | samtools view -Sb -@ 8 -o MAG_abundance/alignment/standard_R3.bam
bowtie2 -p 8 -x MAG_abundance/bowtie2_index/PVC_MAGs -1 read_preprocessing/cleaned_reads/control_R1_R1.cleaned.fastq.gz -2 read_preprocessing/cleaned_reads/control_R1_R2.cleaned.fastq.gz 2> MAG_abundance/alignment/control_R1.txt | samtools view -Sb -@ 8 -o MAG_abundance/alignment/control_R1.bam
bowtie2 -p 8 -x MAG_abundance/bowtie2_index/PVC_MAGs -1 read_preprocessing/cleaned_reads/control_R2_R1.cleaned.fastq.gz -2 read_preprocessing/cleaned_reads/control_R2_R2.cleaned.fastq.gz 2> MAG_abundance/alignment/control_R2.txt | samtools view -Sb -@ 8 -o MAG_abundance/alignment/control_R2.bam
bowtie2 -p 8 -x MAG_abundance/bowtie2_index/PVC_MAGs -1 read_preprocessing/cleaned_reads/control_R3_R1.cleaned.fastq.gz -2 read_preprocessing/cleaned_reads/control_R3_R2.cleaned.fastq.gz 2> MAG_abundance/alignment/control_R3.txt | samtools view -Sb -@ 8 -o MAG_abundance/alignment/control_R3.bam
