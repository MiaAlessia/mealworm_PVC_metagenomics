samtools view -@ 8 -f 12 -F 256 read_preprocessing/insect_alignment/bsPVC_R1.bam | cut -f1,1 > read_preprocessing/insect_alignment/bsPVC_R1.unaligned.txt
sort -u --parallel=8 read_preprocessing/insect_alignment/bsPVC_R1.unaligned.txt > read_preprocessing/insect_alignment/bsPVC_R1.unaligned.sorted.txt
pullseq -i read_preprocessing/trimmomatic_output/bsPVC_R1_R1.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/bsPVC_R1.unaligned.sorted.txt > read_preprocessing/cleaned_reads/bsPVC_R1_R1.cleaned.fastq
pullseq -i read_preprocessing/trimmomatic_output/bsPVC_R1_R2.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/bsPVC_R1.unaligned.sorted.txt > read_preprocessing/cleaned_reads/bsPVC_R1_R2.cleaned.fastq
samtools view -@ 8 -f 12 -F 256 read_preprocessing/insect_alignment/bsPVC_R2.bam | cut -f1,1 > read_preprocessing/insect_alignment/bsPVC_R2.unaligned.txt
sort -u --parallel=8 read_preprocessing/insect_alignment/bsPVC_R2.unaligned.txt > read_preprocessing/insect_alignment/bsPVC_R2.unaligned.sorted.txt
pullseq -i read_preprocessing/trimmomatic_output/bsPVC_R2_R1.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/bsPVC_R2.unaligned.sorted.txt > read_preprocessing/cleaned_reads/bsPVC_R2_R1.cleaned.fastq
pullseq -i read_preprocessing/trimmomatic_output/bsPVC_R2_R2.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/bsPVC_R2.unaligned.sorted.txt > read_preprocessing/cleaned_reads/bsPVC_R2_R2.cleaned.fastq
samtools view -@ 8 -f 12 -F 256 read_preprocessing/insect_alignment/bsPVC_R3.bam | cut -f1,1 > read_preprocessing/insect_alignment/bsPVC_R3.unaligned.txt
sort -u --parallel=8 read_preprocessing/insect_alignment/bsPVC_R3.unaligned.txt > read_preprocessing/insect_alignment/bsPVC_R3.unaligned.sorted.txt
pullseq -i read_preprocessing/trimmomatic_output/bsPVC_R3_R1.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/bsPVC_R3.unaligned.sorted.txt > read_preprocessing/cleaned_reads/bsPVC_R3_R1.cleaned.fastq
pullseq -i read_preprocessing/trimmomatic_output/bsPVC_R3_R2.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/bsPVC_R3.unaligned.sorted.txt > read_preprocessing/cleaned_reads/bsPVC_R3_R2.cleaned.fastq
samtools view -@ 8 -f 12 -F 256 read_preprocessing/insect_alignment/fPVC_R1.bam | cut -f1,1 > read_preprocessing/insect_alignment/fPVC_R1.unaligned.txt
sort -u --parallel=8 read_preprocessing/insect_alignment/fPVC_R1.unaligned.txt > read_preprocessing/insect_alignment/fPVC_R1.unaligned.sorted.txt
pullseq -i read_preprocessing/trimmomatic_output/fPVC_R1_R1.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/fPVC_R1.unaligned.sorted.txt > read_preprocessing/cleaned_reads/fPVC_R1_R1.cleaned.fastq
pullseq -i read_preprocessing/trimmomatic_output/fPVC_R1_R2.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/fPVC_R1.unaligned.sorted.txt > read_preprocessing/cleaned_reads/fPVC_R1_R2.cleaned.fastq
samtools view -@ 8 -f 12 -F 256 read_preprocessing/insect_alignment/fPVC_R2.bam | cut -f1,1 > read_preprocessing/insect_alignment/fPVC_R2.unaligned.txt
sort -u --parallel=8 read_preprocessing/insect_alignment/fPVC_R2.unaligned.txt > read_preprocessing/insect_alignment/fPVC_R2.unaligned.sorted.txt
pullseq -i read_preprocessing/trimmomatic_output/fPVC_R2_R1.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/fPVC_R2.unaligned.sorted.txt > read_preprocessing/cleaned_reads/fPVC_R2_R1.cleaned.fastq
pullseq -i read_preprocessing/trimmomatic_output/fPVC_R2_R2.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/fPVC_R2.unaligned.sorted.txt > read_preprocessing/cleaned_reads/fPVC_R2_R2.cleaned.fastq
samtools view -@ 8 -f 12 -F 256 read_preprocessing/insect_alignment/fPVC_R3.bam | cut -f1,1 > read_preprocessing/insect_alignment/fPVC_R3.unaligned.txt
sort -u --parallel=8 read_preprocessing/insect_alignment/fPVC_R3.unaligned.txt > read_preprocessing/insect_alignment/fPVC_R3.unaligned.sorted.txt
pullseq -i read_preprocessing/trimmomatic_output/fPVC_R3_R1.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/fPVC_R3.unaligned.sorted.txt > read_preprocessing/cleaned_reads/fPVC_R3_R1.cleaned.fastq
pullseq -i read_preprocessing/trimmomatic_output/fPVC_R3_R2.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/fPVC_R3.unaligned.sorted.txt > read_preprocessing/cleaned_reads/fPVC_R3_R2.cleaned.fastq
samtools view -@ 8 -f 12 -F 256 read_preprocessing/insect_alignment/standard_R1.bam | cut -f1,1 > read_preprocessing/insect_alignment/standard_R1.unaligned.txt
sort -u --parallel=8 read_preprocessing/insect_alignment/standard_R1.unaligned.txt > read_preprocessing/insect_alignment/standard_R1.unaligned.sorted.txt
pullseq -i read_preprocessing/trimmomatic_output/standard_R1_R1.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/standard_R1.unaligned.sorted.txt > read_preprocessing/cleaned_reads/standard_R1_R1.cleaned.fastq
pullseq -i read_preprocessing/trimmomatic_output/standard_R1_R2.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/standard_R1.unaligned.sorted.txt > read_preprocessing/cleaned_reads/standard_R1_R2.cleaned.fastq
samtools view -@ 8 -f 12 -F 256 read_preprocessing/insect_alignment/standard_R2.bam | cut -f1,1 > read_preprocessing/insect_alignment/standard_R2.unaligned.txt
sort -u --parallel=8 read_preprocessing/insect_alignment/standard_R2.unaligned.txt > read_preprocessing/insect_alignment/standard_R2.unaligned.sorted.txt
pullseq -i read_preprocessing/trimmomatic_output/standard_R2_R1.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/standard_R2.unaligned.sorted.txt > read_preprocessing/cleaned_reads/standard_R2_R1.cleaned.fastq
pullseq -i read_preprocessing/trimmomatic_output/standard_R2_R2.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/standard_R2.unaligned.sorted.txt > read_preprocessing/cleaned_reads/standard_R2_R2.cleaned.fastq
samtools view -@ 8 -f 12 -F 256 read_preprocessing/insect_alignment/standard_R3.bam | cut -f1,1 > read_preprocessing/insect_alignment/standard_R3.unaligned.txt
sort -u --parallel=8 read_preprocessing/insect_alignment/standard_R3.unaligned.txt > read_preprocessing/insect_alignment/standard_R3.unaligned.sorted.txt
pullseq -i read_preprocessing/trimmomatic_output/standard_R3_R1.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/standard_R3.unaligned.sorted.txt > read_preprocessing/cleaned_reads/standard_R3_R1.cleaned.fastq
pullseq -i read_preprocessing/trimmomatic_output/standard_R3_R2.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/standard_R3.unaligned.sorted.txt > read_preprocessing/cleaned_reads/standard_R3_R2.cleaned.fastq
samtools view -@ 8 -f 12 -F 256 read_preprocessing/insect_alignment/control_R1.bam | cut -f1,1 > read_preprocessing/insect_alignment/control_R1.unaligned.txt
sort -u --parallel=8 read_preprocessing/insect_alignment/control_R1.unaligned.txt > read_preprocessing/insect_alignment/control_R1.unaligned.sorted.txt
pullseq -i read_preprocessing/trimmomatic_output/control_R1_R1.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/control_R1.unaligned.sorted.txt > read_preprocessing/cleaned_reads/control_R1_R1.cleaned.fastq
pullseq -i read_preprocessing/trimmomatic_output/control_R1_R2.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/control_R1.unaligned.sorted.txt > read_preprocessing/cleaned_reads/control_R1_R2.cleaned.fastq
samtools view -@ 8 -f 12 -F 256 read_preprocessing/insect_alignment/control_R2.bam | cut -f1,1 > read_preprocessing/insect_alignment/control_R2.unaligned.txt
sort -u --parallel=8 read_preprocessing/insect_alignment/control_R2.unaligned.txt > read_preprocessing/insect_alignment/control_R2.unaligned.sorted.txt
pullseq -i read_preprocessing/trimmomatic_output/control_R2_R1.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/control_R2.unaligned.sorted.txt > read_preprocessing/cleaned_reads/control_R2_R1.cleaned.fastq
pullseq -i read_preprocessing/trimmomatic_output/control_R2_R2.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/control_R2.unaligned.sorted.txt > read_preprocessing/cleaned_reads/control_R2_R2.cleaned.fastq
samtools view -@ 8 -f 12 -F 256 read_preprocessing/insect_alignment/control_R3.bam | cut -f1,1 > read_preprocessing/insect_alignment/control_R3.unaligned.txt
sort -u --parallel=8 read_preprocessing/insect_alignment/control_R3.unaligned.txt > read_preprocessing/insect_alignment/control_R3.unaligned.sorted.txt
pullseq -i read_preprocessing/trimmomatic_output/control_R3_R1.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/control_R3.unaligned.sorted.txt > read_preprocessing/cleaned_reads/control_R3_R1.cleaned.fastq
pullseq -i read_preprocessing/trimmomatic_output/control_R3_R2.bbduk.trimmed.fastq.gz -n read_preprocessing/insect_alignment/control_R3.unaligned.sorted.txt > read_preprocessing/cleaned_reads/control_R3_R2.cleaned.fastq
