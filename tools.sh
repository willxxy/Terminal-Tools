##### MEMORY STUFF ####
# Return memory usage of current dir
du -hs


#### SSH AND SCP STUFF ####
# Remote transfer folder/file to specified address
path_to_folder=
name_of_folder=
tar_type=
scp ${name_of_folder}.tar.${tar_type} username@IP_address:${path_to_folder}

# IP Adress
curl ifconfig.me


#### COMPRESSION STUFF ####
# Compress by tar
name_of_compressed_file=
tar -czvf ${name_of_compressed_file}.tar.gz ${path_to_folder}

# Extract tar file
tar -xf ${name_of_compressed_file}.tar.${tar_type}


# partially download files through html request by specifying by†es
curl -o partial.zip -H "Range: bytes=0-1073741823" [URL]


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

# How to link jupyter kernel to virtual environment
pip install --user ipykernel
python -m ipykernel install --user --name=myenv

# Pytorch that works with A5000 and A6000 GPUs
pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu113

# see all conda environments
conda env list


#### TMUX STUFF ####
# Kill tmux session
tmux kill-session -t session_name

# Create new tmux session with a specified name
tmux new-session -s session_name


#### JAVA STUFF ####
# export java path. export defined in .bashrc
export PATH=$JAVA_HOME/bin:$PATH
