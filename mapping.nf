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
      'dbsnp'            : checkParamReturnFile("dbsnp"),
      'dbsnpIndex'       : checkParamReturnFile("dbsnpIndex"),
      // genome reference dictionary
      'genomeDict'       : checkParamReturnFile("genomeDict"),
      // FASTA genome reference
      'genomeFile'       : checkParamReturnFile("genomeFile"),
      // genome .fai file
      'genomeIndex'      : checkParamReturnFile("genomeIndex"),
      // BWA index files
      'bwaIndex'         : checkParamReturnFile("bwaIndex"),
      // VCFs with known indels (such as 1000 Genomes, Mill’s gold standard)
      'knownIndels'      : checkParamReturnFile("knownIndels"),
      'knownIndelsIndex' : checkParamReturnFile("knownIndelsIndex"),
    ]
}
