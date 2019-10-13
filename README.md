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
## Flow of the RNASeq Analysis:

## Data sources and Data Description:
53 non-diseased tissue sites across nearly 1000 individuals:
 GTEx RNASeq Data: Downloaded RNA-Seq gene read counts GCT file from https://gtexportal.org/home/datasets
 
 GTEx Meta Data: manually curated from https://www.ebi.ac.uk/arrayexpress/files/E-MTAB-5214/E-MTAB-5214.sdrf.txt
from NA12878 Germline Whole Genome v2 Chromium Genome v2 Dataset by Long Ranger 2.2.1:
 Downloaded WGS v2 dels VCF file from from https://support.10xgenomics.com/genome-exome/datasets/2.2.1/NA12878_WGS_v2
### RefSeq Features
mRNA features are extracted from NCBI latest RefSeq Annotation on GRCh38 using instructions provided here.
[https://www.ncbi.nlm.nih.gov/refseq/functionalelements/](https://www.ncbi.nlm.nih.gov/refseq/functionalelements/)

### GTEx RNASeq Normalization:
Within library:
 CPM (counts per million) normalization
 log2 transformation
Across libraries:
 TMM (trimmed-mean M-values) normalization
### 
### Plotting the correlation btw:
Parse GTEx RNASeq normalized data by tissue types
Within each tissue type:
 Calculate for standard deviation of gene expression 
 
![gtex](https://github.com/NCBI-Codeathons/ASAP/blob/master/Images/RNAseq_team4.jpg)
 
Custom data import:

## Docker:

## WDL:


