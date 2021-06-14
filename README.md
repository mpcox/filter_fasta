# filter_fasta

This Perl program filters fasta sequences by a size range.


ACKNOWLEDGEMENTS

This code was taken from [this site](https://bioinformaticsonline.com/snippets/view/37656/perl-script-to-extract-a-sequence-from-multifasta-with-range). It is reposted here to allow for automated git cloning.


INSTALLATION

*filter_fasta* has no dependencies other than Perl itself.


USAGE

Program usage is as follows:

```
filter_fasta lower_bound upper_bound FASTA_input_file > FASTA_output_file
```
```
Required flags:
lower_bound INT   lower bound of size to return (base pairs)
upper_bound INT   upper bound of size to return (base pairs)
FASTA_input_file  input FASTA file
```


EXAMPLE

```
filter_fasta 301 600 contigs.fasta > contigs_gt300_lte600.fasta
```
