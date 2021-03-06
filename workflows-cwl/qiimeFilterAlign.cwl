#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool

hints:
  - class: DockerRequirement
    dockerPull: quay.io/h3abionet_org/h3a16s-qiime

inputs:
  otuFasta:
    type: File
    inputBinding:
      prefix: "-i"
baseCommand: [ filter_alignment.py, "-o", filtered_alignment ]

outputs:
  otuFilteredAlignmentFasta:
    type: File
    outputBinding:
      glob: filtered_alignment/otus_renamed_aligned_pfiltered.fasta


#filter_alignment.py -i rep_set_align/61_otus_aligned.fasta -o filtered_alignment
