This directory contains a really simple demo of the tiny pipeline built here.

`sniffles.15kb.raw.vcf` is the SV VCF to be annotated (it was generated with a 15KB read length PacBio CCS reads called with Sniffles, no filtering was performed).

`sniffles.15kb.raw.annotated.tsv` is the TSV produced by the tiny annotation pipeline (AnnotSV).

`sniffles.15kb.raw.annotated.postprocessed.vcf` was produced by the post-processing WDL for extracting some essential annotations from `sniffles.15kb.raw.annotated.tsv` (currently the ranking produced by AnnotSV, ACMG genes affected if available, and gnomAD allele frequency).

To demo further use, there's also `demo.sh` that takes `sniffles.15kb.raw.annotated.postprocessed.vcf` and produced `genes.affected.by.del.with.af.tsv`.