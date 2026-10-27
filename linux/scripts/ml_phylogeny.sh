mkdir phylogeny
mkdir phylogeny/markers
mkdir phylogeny/aligned_markers
gtdbtk identify --genome_dir binning/final_MAGs/ --out_dir phylogeny/markers/ --extension fasta --cpus 16 --write_single_copy_genes
gtdbtk align --identify_dir phylogeny/markers/ --out_dir phylogeny/aligned_markers/ --skip_gtdb_refs --rnd_seed 97 --cpus 16
cp phylogeny/aligned_markers/align/gtdbtk.bac120.user_msa.fasta.gz .
gunzip gtdbtk.bac120.user_msa.fasta.gz
iqtree2 -s gtdbtk.bac120.user_msa.fasta -m MF -T 16 --prefix model
best_model=$(grep 'Best-fit' model.log | cut -f3 -d' ') # LG+F+R8
iqtree2 -s gtdbtk.bac120.user_msa.fasta -m $best_model --alrt 1000 -J 1000 --jack-prop 0.4 -T 16 --prefix Phylogeny