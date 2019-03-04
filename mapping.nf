#!/usr/bin/env nextflow
println params

referenceMap = defineReferenceMap()

def checkParamReturnFile(item) {
  params."${item}" = params.genomes[params.genome]."${item}"
  return file(params."${item}")
}


def defineReferenceMap() {
  if (!(params.genome in params.genomes)) exit 1, "Genome ${params.genome} not found in configuration"
  return [
      // FASTA genome reference
      'genomeFile'       : checkParamReturnFile("genomeFile"),
    ]
}
