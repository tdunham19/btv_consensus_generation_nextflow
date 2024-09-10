# BTV Consensus Sequence Generation - Long-Read Nextflow Pipeline 
## Created by Tillie Dunham on 06.21.24

This pipeline is written in nextflow and generates a consensus sequence for Bluetongue virus (BTV) from long-read sequencing reads generated with Oxford Nanopore technology. 

The input to this pipeline is: 
  Concatenated fastq file of all long reads for the sample in a directory titled fastq.
  BTV reference sequence - provided when you clone this pipeline

  To run the pipeline

  Clone off GitHub
  
  ```{nextflow}
  nextflow run btv_consensus_generation.nf
  ```
