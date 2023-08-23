# Return memory usage of current dir
du -hs

# Remote transfer folder/file to specified address
path_to_folder=
name_of_folder=
tar_type=
scp ${name_of_folder}.tar.${tar_type} username@IP_address:${path_to_folder}

# Compress by tar
name_of_compressed_file=
tar -czvf ${name_of_compressed_file}.tar.gz ${path_to_folder}

# Extract tar file
tar -xf ${name_of_compressed_file}.tar.${tar_type}

# Export conda environemnt while in environment
name_of_env=
conda env export --no-builds > ${name_of_env}.yml

# IP Adress
curl ifconfig.me

# Kill tmux session
tmux kill-session -t session_name

# Create new tmux session with a specified name
tmux new-session -s session_name

# Remove conda environment
ENV_NAME=
conda remove -n ${ENV_NAME} --all

# export java path. export defined in .bashrc
export PATH=$JAVA_HOME/bin:$PATH

# partially download files through html request by specifying by†es
curl -o partial.zip -H "Range: bytes=0-1073741823" [URL]

# Create conda environment from yml
conda env create -f environment.yml

# Create conda environment with specific python 
conda create -n myenv python=3.9