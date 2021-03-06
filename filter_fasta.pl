#!/usr/bin/env perl

# filterfastarange.pl
# perl filterfastarange.pl 301 600 contigs.fasta > contigs-gt300-lte600.fasta

use strict;
use warnings;

my $minlen = shift or die "Error: `minlen` parameter not provided\n";
my $maxlen = shift or die "Error: `maxlen` parameter not provided\n";
{
    local $/=">";
    while(<>) {
        chomp;
        next unless /\w/;
        s/>$//gs;
        my @chunk = split /\n/;
        my $header = shift @chunk;
        my $seqlen = length join "", @chunk;
        print ">$_" if($seqlen >= $minlen and $seqlen <= $maxlen);
    }
    local $/="\n";
}
