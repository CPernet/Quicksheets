# Simple script to generate the basic file structure of a research project (in brain imaging)
# to run type ./make_project.sh project_name
# - project_name folder
# |- README.txt (basic description of the project)
# |- requirement.txt (list of all the packages needed to run the code)
# |- BIDS derivatives folder (where the data will be stored)
#  |- participants.tsv (list of all the participants and raw data origin)
#  |- dataset_description.json (description of the dataset referencing ethics and funding)
# |- Code folder (where all code will be stored)
# |- Figures folder (where all figures will be stored)
# |- Dissemination folder (where all outputs, poster, presentation, article will be stored)

# !/bin/bash
echo "creating the $1 project"
mkdir $1
cd $1
mkdir Code
mkdir Figures
mkdir Dissemination
mkdir BIDS_derivatives
cd BIDS_derivatives
touch participants.tsv
echo '{ "Project Name": "An informative project name", "Project Description": "Brief project description", "Project Responsible": "Person Name", "Primary Contact": "person@nru.dk", "Project Collaborators": ["Person Name1", "Person Name2", "Person Name3"], "Date Created": "YYYY-MM-DD", "DatasetType": "derivative", "DatasetLinks": ["path1","path2"], "Funding": "grant(s) and number(s)", "EthicsApprovals": "approval(s)"}' > dataset_description.json
cd ..
touch README.txt
touch requirement.txt
echo "project $1 created"
