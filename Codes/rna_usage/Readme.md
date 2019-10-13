### GTEx RNASeq Normalization:
Within library:
 CPM (counts per million) normalization
 log2 transformation
Across libraries:
 TMM (trimmed-mean M-values) normalization

### Plotting the correlation btw:
Parse GTEx RNASeq normalized data by tissue types
Within each tissue type:
 Calculate for standard deviation of gene expression 

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
