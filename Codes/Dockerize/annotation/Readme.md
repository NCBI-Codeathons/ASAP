### General structure 

This is an instruction about how to build a docker using the docker files included in this sub-directory.

To make future development easier, we took a pseudo-multistage build approach. That is, during stage one, we pull the main program, [AnnotSV](https://lbgi.fr/AnnotSV/) from its remote source, as we expect this step to change relatively infrequently and the program itself is large.

In stage two, based on the previously-built base image, we pull in its dependencies (notably bedtools). And build the docker.

### Note on licenses and Tcl dependency

AnnotSV comes with a GPL-3 license, see [here](https://lbgi.fr/AnnotSV/downloads), though we are not sure what licenses are for the data sources bundled with the AnnotSV distribution.

It is important to note that although we use the Tcl [implementation](https://www.activestate.com/products/activetcl/downloads/) recommended by the authors of AnnotSV, we don't make any statement about preferences on Tcl implementations.

### To build a usable docker

First, one **need** to download the Tcl interpreter built for Linux platform like the version linked above (note, one need to register for an account to download the community version).

We assume the downloaded tar.gz file to be co-living with this Readme.md. We also assumed the file to be named **"Tcl.tar.gz"**, and the version is **8.6**.

Once the Tcl interpreter source code is placed in the right place, one can simply run the `build.annotsv.docker.sh` included here.
The script handles the two-stage build mentioned above, but will not publish the built docker onto any repo. To do that, one can simply push the successfully built local image to her/his account on any repo-hosting service platform.

### To use the docker

If one likes to use the docker locally, simply run the docker via 

```
docker run annotatesv:2.2 /usr/local/bin/AnnotSV/AnnotSV.tcl --help
```
If one likes to use the docker built and published to some repo, simply call the program in your workflow definition language (e.g. WDL) via `/usr/local/bin/AnnotSV/AnnotSV.tcl`.

For detailed explanation on how to use AnnotSV, please refer to its manual.

### To update to an later version of AnnotSV and/or optimize

If you are looking at this section seriously, then we'd assume you know more about building dockers. Please poke into `build.annotsv.docker.sh`, as well as the two Dockerfiles. Feel free to play around. We did not spend much time optimizing the docker. Its current size is approximately 15 GB.

### Credit and citation

We would like to cite the publication that introduced AnnotSV to the world:

_AnnotSV: An integrated tool for Structural Variations annotation._ Geoffroy V, Herenger Y, Kress A, Stoetzel C, Piton A, Dollfus H, Muller J.
Bioinformatics. 2018 Apr 14. [doi: 10.1093/bioinformatics/bty304](https://academic.oup.com/bioinformatics/article/34/20/3572/4970516#122443255)

We would also like to cite bedtools, one of the major dependencies of AnnotSV:

_Bedtools: a flexible suite of utilities for comparing genomic features_, Quinlan AR,  Hall IM., Bioinformatics , 2010, vol. 26 (pg. 841-842).