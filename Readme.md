# About the repo

This repo contains only the skeleton for running
a spark standalone cluster extracted from [this 
repo](https://github.com/mrn-aglic/pyspark-playground).

# Running the code (Spark standalone cluster)
You can run the spark standalone cluster by running:
```shell
make run
```
or with 3 workers using:
```shell
make run-scaled
```
You can submit Python jobs with the command:
```shell
make submit app=dir/relative/to/spark_apps/dir
```
e.g. if you have `ex6.py` in your spark_apps folder: 
```shell
make submit app=ex6.py
```

There are a number of commands to build the standalone cluster,
you should check the Makefile to see them all. But the
simplest one is:
```shell
make build
```

## Web UIs
The master node can be accessed on:
`localhost:9090`. 
The spark history server is accessible through:
`localhost:18080`.

# Fixing the links on the Spark master UI
Since we are running the spark cluster on docker, the
worker related links do not work on the UI.
To fix this I created a generate-docker-compose script
that generates the docker compose file (called 
docker-compose.generated.yml) with the desired number of 
workers where each worker has assigned and exposed port
number.

To bring up this cluster, you can just run:
```shell
make run-generated
```

By default, the command will launch a Spark cluster with
a master, history server and 3 worker nodes. 

# Jupyter lab
After some time, I decided to add a jupyterlab service.
For reference see this [GitHub repo](https://github.com/cluster-apps-on-docker/spark-standalone-cluster-on-docker).

Jupyterlab will run on port 8888. There is a small
example notebook on how to get started. 

# Stories published on Medium
1. Setting up a standalone Spark cluster can be found [here](https://medium.com/@MarinAgli1/setting-up-a-spark-standalone-cluster-on-docker-in-layman-terms-8cbdc9fdd14b).
2. Setting up Hadoop Yarn to run Spark applications can be found [here](https://medium.com/@MarinAgli1/setting-up-hadoop-yarn-to-run-spark-applications-6ea1158287af).
3. Using hostnames to access Hadoop resources can be found [here](https://medium.com/@MarinAgli1/using-hostnames-to-access-hadoop-resources-running-on-docker-5860cd7aeec1).
