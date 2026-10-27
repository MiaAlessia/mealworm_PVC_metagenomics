#!usr/bin/perl
use 5.010;

while(<>) {
	@line = split("\t", $_);
	system("prokka --noanno --outdir phylogeny/prokka_output/@line[0] --cpus 8 --prefix @line[0] phylogeny/unannotated_MAGs/@line[0].fasta");
}
