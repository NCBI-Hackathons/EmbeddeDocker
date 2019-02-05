# Simple_Jupyter_Dockers
Simply embedding multiple docker containers in a Jupyter Notebook
## Motivation
The motivation for this project is to provide users with an easy way to execute bioinformatic pipelines. Bioinformatic pipelines generally involve many components written in different languages. Setting up development environments and integrating the inputs and outputs from the different SW components can be time consuming and difficult to reproduce across laboratories. Simple_Jupyter_Dockers will enable researchers to share workflows which will not require specialized expertise to set up development environments. The outputs from the Simple_Jupyter_Dockers will also allow for reproducible research through self contained documentation in the .pynb file.

As a proof of principle we will demonstrate the feasibility of creating an end to end (FASTQ to VCF file) pipeline for variant calling and 
Hi-C for Chromatin Interaction (FASTQ-tbd) using nbdocker, jupyter notebooks, and Kubernetes.

# Containers per pipeline
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
