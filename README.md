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

## Pipeline Steps
1. Minimap2 align - aligns input fastq to BTV reference
2. Samtools view/sort/index
3. Identify best segments from sam - custom script written by Mark Stenglein to identify the 10 best references
4. Minimap2 align - aligns input fastq to best 10 BTV references
5. Samtools view/sort/index/faidx
6. Bcftools mpileup - calls variants
7. Create mask file - custom script written by Mark Stenglein to create mask file for consensus generation
8. Bcftools view/index/call
9. Bcftools consensus - generates consensus sequence
10. Remove trailing fasta Ns - custom script written by Mark Stenglein to remove tailing N's from consensus sequence
11. Sed - rename final consensus sequence file

## Output 
All output will be located in the directory /results

/results/final will contain the final consensus sequence generated.
/results/minimap2 will contain the alignments to the reference.
