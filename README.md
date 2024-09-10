# BTV Consensus Sequence Generation - Long-Read Nextflow Pipeline 
## Created by Tillie Dunham on 06.21.24

This pipeline is written in nextflow and generates a consensus sequence for Bluetongue virus (BTV) from long-read sequencing reads generated with Oxford Nanopore technology. 

The input to this pipeline is: 
  Concatenated fastq file of all long reads for the sample.
  BTV reference sequence.

  To run the pipeline
  nextflow run btv_consensus_generation.nf
