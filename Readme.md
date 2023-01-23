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
TODO


# Stories published on Medium
1. Setting up a standalone Spark cluster can be found [here](https://medium.com/@MarinAgli1/setting-up-a-spark-standalone-cluster-on-docker-in-layman-terms-8cbdc9fdd14b).
2. Setting up Hadoop Yarn to run Spark applications can be found [here](https://medium.com/@MarinAgli1/setting-up-hadoop-yarn-to-run-spark-applications-6ea1158287af).
3. Using hostnames to access Hadoop resources can be found [here](https://medium.com/@MarinAgli1/using-hostnames-to-access-hadoop-resources-running-on-docker-5860cd7aeec1).
