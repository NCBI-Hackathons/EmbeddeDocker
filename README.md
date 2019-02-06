# SimpleVariantCaller
Simply embedding multiple docker containers in a Jupyter Notebook to create a standalone variant calliing pipeline.
# Installation

# Usage
[how will a user run this - sample code]

# Example


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
