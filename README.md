# SimpleVariantCaller
Simply embedding multiple docker containers in a Jupyter Notebook
## Motivation
Jupyter notebook is used to create a standalone and adaptable interface for launcing a variant calling pipeline that uses Docker, AWS and Spark were used to create a standalone FASTQ to VCF and visualizations for variant calling to make a generic, easy to deploy and distributed workflow.

# Containers per pipeline:
| #        | Variant Calling           | Hi-C  |
| ------------- |:-------------:| -----:|
| 1      | BWA-MEM | BOW-TIE |
| 2      | GATK      |   SAMTOOLS |
| 3      | GATK4     |     |

<i> GATK4 will be implemented using Spark on Kubernetes </i>

## Resources
nbdocker <br>
https://hub.docker.com/r/biodepot/nbdocker/ <br>
variant calling <br>
https://github.com/gencorefacility/variant-calling-pipeline <br>
Chromatin Interaction (Hi-C) <br>
https://github.com/nservant/HiC-Pro
