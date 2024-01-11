#### INSTALL STUFF ####
# Install scikit
pip3 install -U scikit-learn


# How to link jupyter kernel to virtual environment
pip install --user ipykernel
python -m ipykernel install --user --name=myenv

# Pytorch that works with A5000 and A6000 GPUs
pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu113


# Install scipy
python -m pip install scipy
