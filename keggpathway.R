
#Author:Urvy Mudgal
#Rscript to Connect to KEGG website and retrieve data for a pathway (e.g., bile biosynthesis pathway)

#install required packages
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
install.packages("biocLite")
library(pathview)

#Defining the method to find and its name 

keggFind("pathway", "bile biosynthesis")
 

#I am using GeneID 6927 which is HNF1 homeobox, Homo sapiens
#The protein encoded by this gene is a transcription factor 
#required for the expression of several liver-specific genes. 

pv.out <- pathview(gene.data= 6927, pathway.id = "04110",species = "hsa", out.suffix = "gse16873")
#gives an output file with various results, including an image of the pathway.


#To find more attributes of the function
?pathview


