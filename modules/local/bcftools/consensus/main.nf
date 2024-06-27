process BCFTOOLS_CONSENSUS {
    tag "$meta.id"
    
    conda "${moduleDir}/environment.yml"
    container "${ workflow.containerEngine == 'singularity' && !task.ext.singularity_pull_docker_container ?
        'https://depot.galaxyproject.org/singularity/bcftools:1.20--h8b25389_0':
        'biocontainers/bcftools:1.20--h8b25389_0' }"

    input:
    tuple val(meta), path(mask)
    tuple val(meta2), path(best10refseq)
    tuple val(meta3), path(cons)

    output:
    tuple val(meta), path('*.fa'), emit: fa

    script:
    """
    bcftools consensus -m ${mask} -f ${best10refseq} ${cons} -o ${meta.id}_consensus_seqs.fa

    cat <<-END_VERSIONS > versions.yml
    "${task.process}":
        bcftools: \$(bcftools --version 2>&1 | head -n1 | sed 's/^.*bcftools //; s/ .*\$//')
    END_VERSIONS
    """
}