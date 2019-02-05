# DNambi's Notes - Simple_Jupyter_Dockers

### Overview

* Goal: Simply embedding multiple docker containers in a Jupyter Notebook
* Idea is to have working prototype by Wednesday at 5pm.
* [Daily Schedule](https://docs.google.com/document/d/1eAzEUwbjcgB-4Di4b4hT_w2c9kr9g3_W10VdVF6aiTE/edit)
* [Manuscript](https://docs.google.com/document/d/1GI9TXTy8mh4kdTKMrYkxzbPwn05Yn4atgC6CVyby7vE/edit?usp=sharing)


**Monday - February 4 Schedule**

```

12:30 - 1:00 -- folks head out to get lunch
All teams return to HQ
1:00 - 1:30: Working lunch -- teams present flowchart of project plan
1:30 - 6:00: Pipeline building <script building>
7:30 - 8:30: Implement any remaining code/start pipelines (remote is an option) <script building>
```


### People + Expertise

* Teammates: Hung (UW Tacoma. Professor?, lhhunghimself@gmail.com), Sinj (sp?) - CS Master's student UW Tacoma (some language barrier), Vera (prod mgr at Nanostring), Dev, Aakash (UW grad student) - genomics work

* Aakash - dry lab computational. expertise is biochem. Good at Python, Jupyter, docker occasionally, quite a bit of cloud expertise, some JS experience
* Sinj - Master's CS student. Not much Docker or Jupyter experience. Used Python a lot. Some JS experience, not super proficient
* Dev - data science and engineering. Good with AWS, Docker, Kubernetes, Bash, Python. No JS experience. 
* Vera - jill of all trades. C++, R, Python. A little Docker experience, but not extensive. Written docker containers
* Hung - PhD is biochem. C, C++, Python, Perl, Bash experience. Written pipelines.



# Infrastructure

**Key**

'dockerjupyter' user in public key

*Instructions to SSH:*

1. Download the id_rsa.txt file to a working directory
2. Open a terminal and navigate to the directory
3. Run these commands:

```
chmod 400 id_rsa.txt
ssh -i id_rsa.txt -v ubuntu@54.185.156.17
# Use 'ncbi-hackathon' as the key phrase
```

**Set up the Machine**

https://docs.docker.com/install/linux/docker-ce/ubuntu/
All machines have 16 cores. 

```
sudo -i
apt-get update

apt install build-essential

apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get -y install docker-ce docker-ce-cli containerd.io

systemctl start docker
```


### Goals

**Ease of Use**

* Easy input and output parameters
* Use Dockerfiles? Where are they?
* How to define requirements? Containers to run? 

**AIM**

* Goal, stretch goal, fallback goal
* Have a flowchart of what you're trying to build.

* Writer: person responsible for coordinating all the documentation for GitHub readme.
* 10% of teams finish a manuscript
* There's a template manuscript for each team. You just need to barf out 1K words
* Most manuscripts go to f1000 research, hybrid preprint. 2+ positive reviews and you get published in PubMed


**Original**

Have a dockerized GATK pipeline available in a Jupyter notebook. Perhaps https://gencore.bio.nyu.edu/variant-calling-pipeline/


GATK or GATK-Spark? 


**Stretch**

HiC - chromatine? confirmation capture. Aligners. 
https://github.com/nservant/HiC-Pro

**Fallback**

Have the dockerized GATK pipeline available in Jupyter notebook but without the final analysis bit integrated in.

### AWS / Scaling

* Kubernetes and AWS for Spark? 


**Spark on Kubernetes Resources**

* https://spark.apache.org/docs/2.3.0/running-on-kubernetes.html
* https://github.com/kubernetes/examples/tree/master/staging/spark
* https://medium.com/@toddrosner/spark-on-kubernetes-b18f16ac95ad
* https://itnext.io/running-spark-job-on-kubernetes-minikube-958cadaddd55



### Running GATK on Spark

* https://gatkforums.broadinstitute.org/gatk/discussion/11245/spark
* https://software.broadinstitute.org/gatk/documentation/article?id=11245
* https://gatkforums.broadinstitute.org/gatk/discussion/11355/which-version-of-spark-works-well-with-the-current-gatk-4-0
* https://gatkforums.broadinstitute.org/gatk/discussion/8643/whats-the-reseaon-for-using-gatk4-bqsr-in-your-publicpairedsinglesamplewf
* https://gatkforums.broadinstitute.org/gatk/discussion/11244/how-to-run-spark-enabled-gatk-tools-on-a-spark-cluster <- has a potentially useful youtube video
* https://gatkforums.broadinstitute.org/gatk/discussion/10060/how-to-run-flagstatspark-on-a-cloud-spark-cluster#latest
* https://software.broadinstitute.org/gatk/documentation/article?id=11093









### Kubernetes and Jupyter

**Resources**

* [Kubeflow](https://github.com/kubeflow/kubeflow)
* [JupyterHub Kubeflow](https://github.com/kubeflow/kubeflow/tree/master/components/jupyterhub)
* [How to deploy Jupyter notebooks as components of a Kubeflow ML pipeline (Part 2)](https://towardsdatascience.com/how-to-deploy-jupyter-notebooks-as-components-of-a-kubeflow-ml-pipeline-part-2-b1df77f4e5b3)
* [Kubeflow – Jupyter Notebook on Kubernetes](https://www.lotharschulz.info/2018/05/06/kubeflow-jupyter-notebook-on-kubernetes/)
* [h20.ai](https://www.h2o.ai/blog/h2o-kubeflow-kubernetes-how-to/),


# NBDocker

* Currently running at https://biodepot.tacoma.uw.edu/hub/login



## Installing NBDocker

*Based on instructions from https://github.com/BioDepot/nbdocker*

* Make sure Docker is running

From a command line:
```
docker pull biodepot/nbdocker

docker run -it -p 8888:8888 -v /var/run/docker.sock:/var/run/docker.sock -v /Users/dnambi/Documents/nchackathon:/home/dnambi/work --privileged --group-add root biodepot/nbdocker
```

* What on earth is the permissions model to let this thing run?!










# Resources


### Relevant and Useful

* [nbdocker - embedding docker containers into jupyter notebooks](https://www.youtube.com/watch?v=H_s7_A8qb_0)
   * [GitHub - BioDepot/nbdocker](https://github.com/BioDepot/nbdocker)
   * [bioArxiv preprint](https://www.biorxiv.org/content/biorxiv/early/2018/05/02/309567.full.pdf)
   * [eScience article](https://escience.washington.edu/nbdocker-jupyter-docker-simplifying-reproducible-research/)
* [Docker Spawner](https://github.com/jupyterhub/dockerspawner)
* [Easy Build](https://fredhutch.github.io/easybuild-life-sciences/)
* [snakemake](https://snakemake.readthedocs.io/en/stable/)
* [My Binder - turn GitHub repos into Docker containers](https://mybinder.org/)

* [JupyterHub Spawners](https://github.com/jupyterhub/jupyterhub/wiki/Spawners)
   * [DockerSpawner](https://github.com/jupyterhub/dockerspawner)
   * [FargateSpawner](https://github.com/uktrade/fargatespawner)
   * [Kubespawner](https://github.com/jupyterhub/kubespawner) and its [ReadTheDocs](https://jupyterhub-kubespawner.readthedocs.io/en/latest/)
* [Zero to JupyterHub on Kubernetes](https://zero-to-jupyterhub.readthedocs.io/en/latest/)


* https://schd.ws/hosted_files/gccbosc2018/32/GATK4%20Workshop%20handout%20-%20GCCBOSC%202018.pdf












#### Running Spark on K8S

* https://spark.apache.org/docs/2.3.1/running-on-kubernetes.html
* https://testdriven.io/blog/deploying-spark-on-kubernetes/





















### Docker Containers for Jupyter

**Docker Stacks**


* [docker-stacks Documentation](https://media.readthedocs.org/pdf/jupyter-docker-stacks/latest/jupyter-docker-stacks.pdf)
* [Ready-to-run Docker images containing Jupyter applications](https://github.com/jupyter/docker-stacks)
* [Selecting an Image](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html)


**Other**

* [jupyter/datascience-notebook](https://hub.docker.com/r/jupyter/datascience-notebook/)
* [Docker for Data Science: Running a Dockerized Jupyter Server](https://www.dataquest.io/blog/docker-data-science/)
* [Jupyter Data Science Stack + Docker in under 15 minutes](https://towardsdatascience.com/jupyter-data-science-stack-docker-in-under-15-minutes-19d8f822bd45)
* [Running local Jupyter (and JupyterLab) env with Docker](https://medium.com/fundbox-engineering/overview-d3759e83969c)
* [jupyterhub/jupyterhub-deploy-docker](https://github.com/jupyterhub/jupyterhub-deploy-docker)
* [Access Jupyter notebook running on Docker container](https://stackoverflow.com/questions/38830610/access-jupyter-notebook-running-on-docker-container)
* [Using docker-compose for Python and Jupyter](https://dev.to/rosejcday/using-docker-compose-for-python-and-jupyter-4nbd)
* [CREATING JUPYTER DOCKER-CONTAINERS WITH NIX](http://datakurre.pandala.org/2015/11/creating-jupyter-docker-containers-with.html)
