#!/bin/zsh
date +%s
#zsh run_process.sh&
python crawler.py&
OMP_NUM_THREADS=1 python feature_extraction.py&
OMP_NUM_THREADS=1  python process_image.py&
OMP_NUM_THREADS=1 python table_manipulation.py&
date +%s