#!usr/bin/perl
use 5.010;

while(<>) {
	@line = split("\t", $_);
	system("cp phylogeny/prokka_output/@line[0]/@line[0].faa phylogeny/annotated_MAGs/");
}
