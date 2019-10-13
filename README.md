# Automated Structural Variation Annotation Pipeline (ASAP)

An automated pipeline to annotate structural variation.  Annotation may include allele frequency, colocated gene, functional features and domains, regulatory elements, and transcription levels.

## Figure showing what it does (the pipeline to solve everything!)

![ASVAP_pipeline](https://github.com/NCBI-Codeathons/ASAP/blob/master/Images/ASVAP.png)

## Installation instructions:

``` git clone this

tar -xvf....

bash ../bashymcbasherface 

```

## System Requirements:

## Excecution Example:

## Data sources:

### RefSeq Features
mRNA features are extracted from NCBI latest RefSeq Annotation on GRCh38 using instructions provided here.
[https://www.ncbi.nlm.nih.gov/refseq/functionalelements/](https://www.ncbi.nlm.nih.gov/refseq/functionalelements/)

### RNA-seq 
ENCODE: total RNA-seq of K562 and GM12878
Both transcript quantification files and gene quantification files:
K562: GSE78557; GSE78559; GSE88351
GM12878: GSE78550; GSE78552
Converting the FPKM values of read abundances to raw counts
Merge samples into a big raw count matrix 
Calculate for DEGs between K562 and GM12878 (using DESeq2)

#### DESeq2 citation:
 Love, M.I., Huber, W., Anders, S. Moderated estimation of fold change and dispersion for
  RNA-seq data with DESeq2 Genome Biology 15(12):550 (2014) (PMID:[25516281](https://www.ncbi.nlm.nih.gov/pubmed/25516281))

### Custom data import:

## Docker:

## WDL:


