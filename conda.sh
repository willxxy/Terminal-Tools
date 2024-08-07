#### CONDA STUFF ####
# Export conda environemnt while in environment
name_of_env=
conda env export --no-builds > ${name_of_env}.yml

# Remove conda environment
ENV_NAME=
conda remove -n ${ENV_NAME} --all

# Create conda environment from yml
conda env create -f environment.yml

# Create conda environment with specific python 
conda create -n myenv python=3.9

# see all conda environments
conda env list

# initiate virtual environment
conda activate envname

# deactivate virtual environment
conda deactivate

# clone an environment
conda create --name myclone --clone myenv

# cleaning
conda clean --all

### always use pip with conda to install packages
