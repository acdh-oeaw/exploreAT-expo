# exploreAT-expo
Landing page that integrates all VisUSAL's prototypes for the ExploreAT project.
The _deploy.sh_ is used to create a directory structure with a landing page and the prototypes
specified available through links in such landing page.

## How to use
In the script _deploy.sh_, three directories have to be specified (or left with the default
value):
+ WEBDIR : This directory will be the root directory for the landing page.
+ TEMPDIR : This folder will be used to store temporaly the projects and compile them.
+ SCRIPTSDIR : This directory contains the scripts for the specific deploy of each of the
projects. The script should match in name with the name of the repository in Github.

The script _deploy.sh_ will download from each of the repositories specified in PROJECTS.txt
with the word _yes_ in the second culomn, and use the _temp_ directory specified to compile
the projects and thenmove the results into the correspondant folder in the _WEBDIR_.
