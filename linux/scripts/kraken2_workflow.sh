# Species level

# bsPVC Rep 1
kraken2 --db /home/Bioinformatics_programs/kraken2/database/ --threads 8 --paired --report kraken2_output/bsPVC_R1.kreport raw_illumina_data/NS.2043.002.IDT_i7_182---IDT_i5_182.bsPVC_R1_R1.fastq.gz raw_illumina_data/NS.2043.002.IDT_i7_182---IDT_i5_182.bsPVC_R1_R2.fastq.gz > kraken2_output/bsPVC_R1.kraken
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/bsPVC_R1.kreport -o kraken2_output/bsPVC_R1.species.bracken -w kraken2_output/bsPVC_R1.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output/bsPVC_R1.species.bracken | sort -g -r -k7,7 > kraken2_output/bsPVC_R1.species.bracken.sorted
# bsPVC Rep 2
kraken2 --db /home/Bioinformatics_programs/kraken2/database/ --threads 8 --paired --report kraken2_output/bsPVC_R2.kreport raw_illumina_data/NS.2043.002.IDT_i7_136---IDT_i5_136.bsPVC_R2_R1.fastq.gz raw_illumina_data/NS.2043.002.IDT_i7_136---IDT_i5_136.bsPVC_R2_R2.fastq.gz > kraken2_output/bsPVC_R2.kraken
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/bsPVC_R2.kreport -o kraken2_output/bsPVC_R2.species.bracken -w kraken2_output/bsPVC_R2.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output/bsPVC_R2.species.bracken | sort -g -r -k7,7 > kraken2_output/bsPVC_R2.species.bracken.sorted
#bsPVC Rep 3
kraken2 --db /home/Bioinformatics_programs/kraken2/database/ --threads 8 --paired --report kraken2_output/bsPVC_R3.kreport raw_illumina_data/NS.2043.002.IDT_i7_161---IDT_i5_161.bsPVC_R3_R1.fastq.gz raw_illumina_data/NS.2043.002.IDT_i7_161---IDT_i5_161.bsPVC_R3_R2.fastq.gz > kraken2_output/bsPVC_R3.kraken
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/bsPVC_R3.kreport -o kraken2_output/bsPVC_R3.species.bracken -w kraken2_output/bsPVC_R1.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output/bsPVC_R3.species.bracken | sort -g -r -k7,7 > kraken2_output/bsPVC_R3.species.bracken.sorted
# fPVC Rep 1
kraken2 --db /home/Bioinformatics_programs/kraken2/database/ --threads 8 --paired --report kraken2_output/fPVC_R1.kreport raw_illumina_data/NS.2043.002.IDT_i7_146---IDT_i5_146.fPVC_R1_R1.fastq.gz raw_illumina_data/NS.2043.002.IDT_i7_146---IDT_i5_146.fPVC_R1_R2.fastq.gz > kraken2_output/fPVC_R1.kraken
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/fPVC_R1.kreport -o kraken2_output/fPVC_R1.species.bracken -w kraken2_output/fPVC_R1.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output/fPVC_R1.species.bracken | sort -g -r -k7,7 > kraken2_output/fPVC_R1.species.bracken.sorted
# fPVC Rep 2
kraken2 --db /home/Bioinformatics_programs/kraken2/database/ --threads 8 --paired --report kraken2_output/fPVC_R2.kreport raw_illumina_data/NS.2043.002.IDT_i7_100---IDT_i5_100.fPVC_R2_R1.fastq.gz raw_illumina_data/NS.2043.002.IDT_i7_100---IDT_i5_100.fPVC_R2_R2.fastq.gz > kraken2_output/fPVC_R2.kraken
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/fPVC_R2.kreport -o kraken2_output/fPVC_R2.species.bracken -w kraken2_output/fPVC_R2.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output/fPVC_R2.species.bracken | sort -g -r -k7,7 > kraken2_output/fPVC_R2.species.bracken.sorted
# fPVC Rep 3
kraken2 --db /home/Bioinformatics_programs/kraken2/database/ --threads 8 --paired --report kraken2_output/fPVC_R3.kreport raw_illumina_data/NS.2043.002.IDT_i7_149---IDT_i5_149.fPVC_R3_R1.fastq.gz raw_illumina_data/NS.2043.002.IDT_i7_149---IDT_i5_149.fPVC_R3_R2.fastq.gz > kraken2_output/fPVC_R3.kraken
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/fPVC_R3.kreport -o kraken2_output/fPVC_R3.species.bracken -w kraken2_output/fPVC_R3.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output/fPVC_R3.species.bracken | sort -g -r -k7,7 > kraken2_output/fPVC_R3.species.bracken.sorted
# Standard Rep 1
kraken2 --db /home/Bioinformatics_programs/kraken2/database/ --threads 8 --paired --report kraken2_output/standard_R1.kreport raw_illumina_data/NS.2043.002.IDT_i7_169---IDT_i5_169.Std_R1_R1.fastq.gz raw_illumina_data/NS.2043.002.IDT_i7_169---IDT_i5_169.Std_R1_R2.fastq.gz > kraken2_output/standard_R1.kraken
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/standard_R1.kreport -o kraken2_output/standard_R1.species.bracken -w kraken2_output/standard_R1.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output/standard_R1.species.bracken | sort -g -r -k7,7 > kraken2_output/standard_R1.species.bracken.sorted
# Standard Rep 2
kraken2 --db /home/Bioinformatics_programs/kraken2/database/ --threads 8 --paired --report kraken2_output/standard_R2.kreport raw_illumina_data/NS.2043.002.IDT_i7_123---IDT_i5_123.Std_R2_R1.fastq.gz raw_illumina_data/NS.2043.002.IDT_i7_123---IDT_i5_123.Std_R2_R2.fastq.gz > kraken2_output/standard_R2.kraken
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/standard_R2.kreport -o kraken2_output/standard_R2.species.bracken -w kraken2_output/standard_R2.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output/standard_R2.species.bracken | sort -g -r -k7,7 > kraken2_output/standard_R2.species.bracken.sorted
# Standard Rep 3
kraken2 --db /home/Bioinformatics_programs/kraken2/database/ --threads 8 --paired --report kraken2_output/standard_R3.kreport raw_illumina_data/NS.2043.002.IDT_i7_172---IDT_i5_172.Std_R3_R1.fastq.gz raw_illumina_data/NS.2043.002.IDT_i7_172---IDT_i5_172.Std_R3_R2.fastq.gz > kraken2_output/standard_R3.kraken
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/standard_R3.kreport -o kraken2_output/standard_R3.species.bracken -w kraken2_output/standard_R3.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output/standard_R3.species.bracken | sort -g -r -k7,7 > kraken2_output/standard_R3.species.bracken.sorted
# Control Rep 1
kraken2 --db /home/Bioinformatics_programs/kraken2/database/ --threads 8 --paired --report kraken2_output/control_R1.kreport raw_illumina_data/NS.2043.002.IDT_i7_110---IDT_i5_110.Cont_R1_R1.fastq.gz raw_illumina_data/NS.2043.002.IDT_i7_110---IDT_i5_110.Cont_R1_R2.fastq.gz > kraken2_output/control_R1.kraken
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/control_R1.kreport -o kraken2_output/control_R1.species.bracken -w kraken2_output/control_R1.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output/control_R1.species.bracken | sort -g -r -k7,7 > kraken2_output/control_R1.species.bracken.sorted
# Control Rep 2
kraken2 --db /home/Bioinformatics_programs/kraken2/database/ --threads 8 --paired --report kraken2_output/control_R2.kreport raw_illumina_data/NS.2043.002.IDT_i7_159---IDT_i5_159.Cont_R2_R1.fastq.gz raw_illumina_data/NS.2043.002.IDT_i7_159---IDT_i5_159.Cont_R2_R2.fastq.gz > kraken2_output/control_R2.kraken
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/control_R2.kreport -o kraken2_output/control_R2.species.bracken -w kraken2_output/control_R2.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output/control_R2.species.bracken | sort -g -r -k7,7 > kraken2_output/control_R2.species.bracken.sorted
# Control Rep 3
kraken2 --db /home/Bioinformatics_programs/kraken2/database/ --threads 8 --paired --report kraken2_output/control_R3.kreport raw_illumina_data/NS.2043.002.IDT_i7_113---IDT_i5_113.Cont_R3_R1.fastq.gz raw_illumina_data/NS.2043.002.IDT_i7_113---IDT_i5_113.Cont_R3_R2.fastq.gz > kraken2_output/control_R3.kraken
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/control_R3.kreport -o kraken2_output/control_R3.species.bracken -w kraken2_output/control_R3.species.kreport2 -r 151 -l S
sed 's/ /_/g' kraken2_output/control_R3.species.bracken | sort -g -r -k7,7 > kraken2_output/control_R3.species.bracken.sorted

# Domain level
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/bsPVC_R1.kreport -o kraken2_output/bsPVC_R1.domain.bracken -w kraken2_output/bsPVC_R1.domain.kreport2 -r 151 -l D
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/bsPVC_R2.kreport -o kraken2_output/bsPVC_R2.domain.bracken -w kraken2_output/bsPVC_R2.domain.kreport2 -r 151 -l D
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/bsPVC_R3.kreport -o kraken2_output/bsPVC_R3.domain.bracken -w kraken2_output/bsPVC_R3.domain.kreport2 -r 151 -l D
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/fPVC_R1.kreport -o kraken2_output/fPVC_R1.domain.bracken -w kraken2_output/fPVC_R1.domain.kreport2 -r 151 -l D
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/fPVC_R2.kreport -o kraken2_output/fPVC_R2.domain.bracken -w kraken2_output/fPVC_R2.domain.kreport2 -r 151 -l D
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/fPVC_R3.kreport -o kraken2_output/fPVC_R3.domain.bracken -w kraken2_output/fPVC_R3.domain.kreport2 -r 151 -l D
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/standard_R1.kreport -o kraken2_output/standard_R1.domain.bracken -w kraken2_output/standard_R1.domain.kreport2 -r 151 -l D
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/standard_R2.kreport -o kraken2_output/standard_R2.domain.bracken -w kraken2_output/standard_R2.domain.kreport2 -r 151 -l D
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/standard_R3.kreport -o kraken2_output/standard_R3.domain.bracken -w kraken2_output/standard_R3.domain.kreport2 -r 151 -l D
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/control_R1.kreport -o kraken2_output/control_R1.domain.bracken -w kraken2_output/control_R1.domain.kreport2 -r 151 -l D
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/control_R2.kreport -o kraken2_output/control_R2.domain.bracken -w kraken2_output/control_R2.domain.kreport2 -r 151 -l D
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/control_R3.kreport -o kraken2_output/control_R3.domain.bracken -w kraken2_output/control_R3.domain.kreport2 -r 151 -l D
sed 's/ /_/g' kraken2_output/bsPVC_R1.domain.bracken | sort -g -r -k7,7 > kraken2_output/bsPVC_R1.domain.bracken.sorted
sed 's/ /_/g' kraken2_output/bsPVC_R2.domain.bracken | sort -g -r -k7,7 > kraken2_output/bsPVC_R2.domain.bracken.sorted
sed 's/ /_/g' kraken2_output/bsPVC_R3.domain.bracken | sort -g -r -k7,7 > kraken2_output/bsPVC_R3.domain.bracken.sorted
sed 's/ /_/g' kraken2_output/fPVC_R1.domain.bracken | sort -g -r -k7,7 > kraken2_output/fPVC_R1.domain.bracken.sorted
sed 's/ /_/g' kraken2_output/fPVC_R2.domain.bracken | sort -g -r -k7,7 > kraken2_output/fPVC_R2.domain.bracken.sorted
sed 's/ /_/g' kraken2_output/fPVC_R3.domain.bracken | sort -g -r -k7,7 > kraken2_output/fPVC_R3.domain.bracken.sorted
sed 's/ /_/g' kraken2_output/standard_R1.domain.bracken | sort -g -r -k7,7 > kraken2_output/standard_R1.domain.bracken.sorted
sed 's/ /_/g' kraken2_output/standard_R2.domain.bracken | sort -g -r -k7,7 > kraken2_output/standard_R2.domain.bracken.sorted
sed 's/ /_/g' kraken2_output/standard_R3.domain.bracken | sort -g -r -k7,7 > kraken2_output/standard_R3.domain.bracken.sorted
sed 's/ /_/g' kraken2_output/control_R1.domain.bracken | sort -g -r -k7,7 > kraken2_output/control_R1.domain.bracken.sorted
sed 's/ /_/g' kraken2_output/control_R2.domain.bracken | sort -g -r -k7,7 > kraken2_output/control_R2.domain.bracken.sorted
sed 's/ /_/g' kraken2_output/control_R3.domain.bracken | sort -g -r -k7,7 > kraken2_output/control_R3.domain.bracken.sorted

# Phylum level
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/bsPVC_R1.kreport -o kraken2_output/bsPVC_R1.phylum.bracken -w kraken2_output/bsPVC_R1.phylum.kreport2 -r 151 -l P
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/bsPVC_R2.kreport -o kraken2_output/bsPVC_R2.phylum.bracken -w kraken2_output/bsPVC_R2.phylum.kreport2 -r 151 -l P
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/bsPVC_R3.kreport -o kraken2_output/bsPVC_R3.phylum.bracken -w kraken2_output/bsPVC_R3.phylum.kreport2 -r 151 -l P
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/fPVC_R1.kreport -o kraken2_output/fPVC_R1.phylum.bracken -w kraken2_output/fPVC_R1.phylum.kreport2 -r 151 -l P
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/fPVC_R2.kreport -o kraken2_output/fPVC_R2.phylum.bracken -w kraken2_output/fPVC_R2.phylum.kreport2 -r 151 -l P
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/fPVC_R3.kreport -o kraken2_output/fPVC_R3.phylum.bracken -w kraken2_output/fPVC_R3.phylum.kreport2 -r 151 -l P
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/standard_R1.kreport -o kraken2_output/standard_R1.phylum.bracken -w kraken2_output/standard_R1.phylum.kreport2 -r 151 -l P
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/standard_R2.kreport -o kraken2_output/standard_R2.phylum.bracken -w kraken2_output/standard_R2.phylum.kreport2 -r 151 -l P
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/standard_R3.kreport -o kraken2_output/standard_R3.phylum.bracken -w kraken2_output/standard_R3.phylum.kreport2 -r 151 -l P
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/control_R1.kreport -o kraken2_output/control_R1.phylum.bracken -w kraken2_output/control_R1.phylum.kreport2 -r 151 -l P
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/control_R2.kreport -o kraken2_output/control_R2.phylum.bracken -w kraken2_output/control_R2.phylum.kreport2 -r 151 -l P
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/control_R3.kreport -o kraken2_output/control_R3.phylum.bracken -w kraken2_output/control_R3.phylum.kreport2 -r 151 -l P
sed 's/ /_/g' kraken2_output/bsPVC_R1.phylum.bracken | sort -g -r -k7,7 > kraken2_output/bsPVC_R1.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output/bsPVC_R2.phylum.bracken | sort -g -r -k7,7 > kraken2_output/bsPVC_R2.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output/bsPVC_R3.phylum.bracken | sort -g -r -k7,7 > kraken2_output/bsPVC_R3.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output/fPVC_R1.phylum.bracken | sort -g -r -k7,7 > kraken2_output/fPVC_R1.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output/fPVC_R2.phylum.bracken | sort -g -r -k7,7 > kraken2_output/fPVC_R2.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output/fPVC_R3.phylum.bracken | sort -g -r -k7,7 > kraken2_output/fPVC_R3.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output/standard_R1.phylum.bracken | sort -g -r -k7,7 > kraken2_output/standard_R1.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output/standard_R2.phylum.bracken | sort -g -r -k7,7 > kraken2_output/standard_R2.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output/standard_R3.phylum.bracken | sort -g -r -k7,7 > kraken2_output/standard_R3.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output/control_R1.phylum.bracken | sort -g -r -k7,7 > kraken2_output/control_R1.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output/control_R2.phylum.bracken | sort -g -r -k7,7 > kraken2_output/control_R2.phylum.bracken.sorted
sed 's/ /_/g' kraken2_output/control_R3.phylum.bracken | sort -g -r -k7,7 > kraken2_output/control_R3.phylum.bracken.sorted

# Genus level
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/bsPVC_R1.kreport -o kraken2_output/bsPVC_R1.genus.bracken -w kraken2_output/bsPVC_R1.genus.kreport2 -r 151 -l G
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/bsPVC_R2.kreport -o kraken2_output/bsPVC_R2.genus.bracken -w kraken2_output/bsPVC_R2.genus.kreport2 -r 151 -l G
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/bsPVC_R3.kreport -o kraken2_output/bsPVC_R3.genus.bracken -w kraken2_output/bsPVC_R3.genus.kreport2 -r 151 -l G
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/fPVC_R1.kreport -o kraken2_output/fPVC_R1.genus.bracken -w kraken2_output/fPVC_R1.genus.kreport2 -r 151 -l G
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/fPVC_R2.kreport -o kraken2_output/fPVC_R2.genus.bracken -w kraken2_output/fPVC_R2.genus.kreport2 -r 151 -l G
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/fPVC_R3.kreport -o kraken2_output/fPVC_R3.genus.bracken -w kraken2_output/fPVC_R3.genus.kreport2 -r 151 -l G
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/standard_R1.kreport -o kraken2_output/standard_R1.genus.bracken -w kraken2_output/standard_R1.genus.kreport2 -r 151 -l G
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/standard_R2.kreport -o kraken2_output/standard_R2.genus.bracken -w kraken2_output/standard_R2.genus.kreport2 -r 151 -l G
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/standard_R3.kreport -o kraken2_output/standard_R3.genus.bracken -w kraken2_output/standard_R3.genus.kreport2 -r 151 -l G
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/control_R1.kreport -o kraken2_output/control_R1.genus.bracken -w kraken2_output/control_R1.genus.kreport2 -r 151 -l G
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/control_R2.kreport -o kraken2_output/control_R2.genus.bracken -w kraken2_output/control_R2.genus.kreport2 -r 151 -l G
bracken -d /home/Bioinformatics_programs/kraken2/database/ -i kraken2_output/control_R3.kreport -o kraken2_output/control_R3.genus.bracken -w kraken2_output/control_R3.genus.kreport2 -r 151 -l G
sed 's/ /_/g' kraken2_output/bsPVC_R1.genus.bracken | sort -g -r -k7,7 > kraken2_output/bsPVC_R1.genus.bracken.sorted
sed 's/ /_/g' kraken2_output/bsPVC_R2.genus.bracken | sort -g -r -k7,7 > kraken2_output/bsPVC_R2.genus.bracken.sorted
sed 's/ /_/g' kraken2_output/bsPVC_R3.genus.bracken | sort -g -r -k7,7 > kraken2_output/bsPVC_R3.genus.bracken.sorted
sed 's/ /_/g' kraken2_output/fPVC_R1.genus.bracken | sort -g -r -k7,7 > kraken2_output/fPVC_R1.genus.bracken.sorted
sed 's/ /_/g' kraken2_output/fPVC_R2.genus.bracken | sort -g -r -k7,7 > kraken2_output/fPVC_R2.genus.bracken.sorted
sed 's/ /_/g' kraken2_output/fPVC_R3.genus.bracken | sort -g -r -k7,7 > kraken2_output/fPVC_R3.genus.bracken.sorted
sed 's/ /_/g' kraken2_output/standard_R1.genus.bracken | sort -g -r -k7,7 > kraken2_output/standard_R1.genus.bracken.sorted
sed 's/ /_/g' kraken2_output/standard_R2.genus.bracken | sort -g -r -k7,7 > kraken2_output/standard_R2.genus.bracken.sorted
sed 's/ /_/g' kraken2_output/standard_R3.genus.bracken | sort -g -r -k7,7 > kraken2_output/standard_R3.genus.bracken.sorted
sed 's/ /_/g' kraken2_output/control_R1.genus.bracken | sort -g -r -k7,7 > kraken2_output/control_R1.genus.bracken.sorted
sed 's/ /_/g' kraken2_output/control_R2.genus.bracken | sort -g -r -k7,7 > kraken2_output/control_R2.genus.bracken.sorted
sed 's/ /_/g' kraken2_output/control_R3.genus.bracken | sort -g -r -k7,7 > kraken2_output/control_R3.genus.bracken.sorted

#Combine at each level of analysis (Species, Genus, Phylum, Domain)
python2.7 /home/Bioinformatics_programs/Bracken/analysis_scripts/combine_bracken_outputs.py --files kraken2_output/*.species.bracken -o kraken2_output/combined.species.bracken
python2.7 /home/Bioinformatics_programs/Bracken/analysis_scripts/combine_bracken_outputs.py --files kraken2_output/*.domain.bracken -o kraken2_output/combined.domain.bracken
python2.7 /home/Bioinformatics_programs/Bracken/analysis_scripts/combine_bracken_outputs.py --files kraken2_output/*.phylum.bracken -o kraken2_output/combined.phylum.bracken
python2.7 /home/Bioinformatics_programs/Bracken/analysis_scripts/combine_bracken_outputs.py --files kraken2_output/*.genus.bracken -o kraken2_output/combined.genus.bracken

#Compress kraken output
pigz -p 28 kraken2_output/*.kraken
