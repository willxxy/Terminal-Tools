### Look at GPU usage, PID etc.
nvidia-smi

### Look at GPU usage, PID etc. in real time
nvidia-smi -l

### Print info about Cuda compiler driver
nvcc --version

### Print GPUs compute capbability
nvidia-smi --query-gpu=compute_cap --format=csv
