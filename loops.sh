
### EXAMPLE OF LOOPING IN BASH SCRIPT
#!/bin/bash

for perturb_method in $(seq 0 15); do
    for temp in $(seq 1 5); do
        python detect_watermark.py --modality=image --wm_method=rivaGan --perturb_method=$perturb_method --temp=$temp
        python detect_watermark.py --modality=image --wm_method=dwtDctSvd --perturb_method=$perturb_method --temp=$temp
    done
done
