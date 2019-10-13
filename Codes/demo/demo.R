
input.file = "deletions.acmg.genes.txt"
output.file = "genes.affected.by.del.with.af.tsv"
input.table = read.table(input.file, header = F, sep = "\t", stringsAsFactors = F)
res = data.frame(gene=character(0), gd_af=numeric(0))
for(i in c(1:nrow(input.table))) {
    arr = unlist(strsplit(input.table[i,1], split=","))
    res = rbind.data.frame(res,
                           cbind.data.frame(arr, input.table[i,2]))
}
names(res) = c("gene", "gd_af")
res = res[order(res$'gene'), ]

out = data.frame(gene=character(0), gd_af=numeric(0))
for (gene in unique(res$'gene')) {
    af = mean( res[match(gene, res$'gene'), 2] )
    out = rbind.data.frame(out,
                           cbind.data.frame(gene, af))
}
write.table(out, file = output.file,
            sep = "\t", row.names = F, quote = F)
