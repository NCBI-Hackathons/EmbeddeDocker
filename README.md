# SimpleVariantCaller Notebook
Simply embedding multiple docker containers in a Jupyter Notebook to create a standalone variant calliing pipeline.
# Dependencies
You will need to download: <br>
1. Python 3.6
2. Docker
3. Jupyter notebook via pip
# Embedded Containers
1. nbdocker
2. GATK4
3. BWA
# Notebook Tools for visualization
1. IGV extension for Jupyter Notebooks

# Notebook Example
<img src="https://github.com/NCBI-Hackathons/Simple_Jupyter_Dockers/blob/master/notebook.png" title="drawing" width="500"/> 
<img src="https://github.com/NCBI-Hackathons/Simple_Jupyter_Dockers/blob/master/Fig2.PNG" title="drawing" width="500"/>

# Usage
[how will a user run this - sample code]

# Variant Calling Notebook Workflow 
<img src="https://github.com/NCBI-Hackathons/Simple_Jupyter_Dockers/blob/master/Fig1.PNG" title="drawing" width="500"/>

<<<<<<< HEAD
## Step 1: Sample Data
We used HG0479 from the high coverage Han Chinese cohort in the 1000 genomes project and utilize the first 1 million reads from sequencing run ERR1044750. 

## Step 2: BWA + Samtools
BWA is a short read aligner which we use to align reads and produce SAM files. These are then converted into BAM files by samtools. We utilize a light weight docker container running alpine linux and the minimum software dependencies to run these two programs. The stand alone BWA container weighs in at 6.22MB and the samtools addition brings it up to 56.4MB. We also explore spawning parallel containers, and are able to reduce run times by splitting the reads and running them in parallel. We show that running 4 threads and one container, we have a real time of 538.536 sec, and running 4 threads on each on two containers with half the reads each, we have run times of 306.468 sec and 319.482 sec. 

## Step 3: GATK
We use the popular variant caller GATK to ingest BAM files and produce VCF variant files. In addition to running GATK in a vanilla container, we are able to run the Broad's Spark GATK container. 

# Example Notebook Visualization
<img src="https://github.com/NCBI-Hackathons/Simple_Jupyter_Dockers/blob/master/Fig2.PNG" title="drawing" width="500"/>


# Example


=======
>>>>>>> be984c6664370b3007a2debbe1a6059f7678813a
# Future Directions
We will continue to expand the containers that we support to add variety to the alignment, variant calling and visualizations. Please submit requests through the issues tab. Include support for Chromatin interaction (Hi-C) workflows. 

## Resources
nbdocker <br>
https://hub.docker.com/r/biodepot/nbdocker/ <br>
variant calling <br>
https://github.com/gencorefacility/variant-calling-pipeline <br>
Chromatin Interaction (Hi-C) <br>
https://github.com/nservant/HiC-Pro <br>
IGV visualization <br>
https://github.com/igvteam/igv.js-jupyter

