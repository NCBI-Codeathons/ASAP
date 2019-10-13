#!/bin/bash

set -eu 

input_vcf="sniffles.15kb.raw.annotated.postprocessed.vcf"

grep -F 'SVTYPE=DEL' ${input_vcf} > tmp.deletions.txt
grep -Eo 'ACMG_GENE=([A-Za-z0-9_,]|-)+;GD_AF=(-)?([0-9A-Za-z]|\.)+' tmp.deletions.txt | \
  gsed -E 's/;/\t/g' | \
  gsed 's/ACMG_GENE=//' | \
  gsed 's/GD_AF=//' \
  > deletions.acmg.genes.txt

Rscript demo.R
