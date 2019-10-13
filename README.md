# Automated Structural Variation Annotation Pipeline (ASAP)

An automated pipeline to annotate structural variation.  Annotation may include allele frequency, colocated gene, functional features and domains, regulatory elements, and transcription levels.

![ASVAP_pipeline](https://github.com/NCBI-Codeathons/ASAP/blob/master/Images/ASVAP.png)

## Installation instructions:

``` git clone this

tar -xvf....

bash ../bashymcbasherface 

```

## System Requirements:

## Excecution Example:

## Data Sources and Data Description:
53 non-diseased tissue sites across nearly 1000 individuals:
 GTEx RNASeq data: https://gtexportal.org/home/datasets
 GTEx RNASeq metadata sheet: manually curated from https://www.ebi.ac.uk/arrayexpress/files/E-MTAB-5214/E-MTAB-5214.sdrf.txt

### RefSeq Features:
mRNA features are extracted from NCBI latest RefSeq Annotation on GRCh38 using instructions provided here.
[https://www.ncbi.nlm.nih.gov/refseq/functionalelements/](https://www.ncbi.nlm.nih.gov/refseq/functionalelements/)

### GTEx RNASeq Data Normalization: 
Within library:
 CPM (copy per million) normalization
 log2 transformation
Across libraries:
 TMM (trimmed-mean of M-values) normalization 

### Custom data import:

## Docker:

## WDL:


