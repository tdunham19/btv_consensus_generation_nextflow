# BTV Consensus Sequence Generation - Long-Read Nextflow Pipeline 
## Created by Tillie Dunham on 06.21.24

This pipeline is written in nextflow and generates a consensus sequence for Bluetongue virus (BTV) from long-read sequencing reads generated with Oxford Nanopore technology. 

The input to this pipeline is: 
  Concatenated fastq file of all long reads for the sample in a directory titled fastq.
  BTV reference sequence - provided when you clone this pipeline
  
## How to run:
1. Clone the pipeline from GitHub
2. Move into the directory titled btv_consenus_generation_nextflow
3. Create a directory named 'fastq' and move your input fastq files into this directory.
4. To actually run the pipeline use: 
  ```{nextflow}
  nextflow run btv_consensus_generation.nf
  ```

## Output 
All output will be located in the directory /results

/results/final will contain the final consensus sequence generated.
/results/minimap2 will contain the alignments to the reference.
/results/lofreq will contain the variant called .vcf file.
