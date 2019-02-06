# SimpleVariantCaller
Simply embedding multiple docker containers in a Jupyter Notebook to create a standalone variant calliing pipeline.
# Installation
You will need to download: <br>
1. Python 3.6
2. Docker
3. Jupyter notebook via pip
# Embedded Features
1. nbdocker
2. GATK4
3. BWA
4. IGV extension for Jupyter Notebooks

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
