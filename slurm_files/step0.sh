#!/bin/env bash
#
#SBATCH -p all                # partition (queue)
#SBATCH -c 1                      # number of cores
#SBATCH -t 2                 	 # time (minutes)
#SBATCH -o logs/step0_%j.out        # STDOUT
#SBATCH -e logs/step0_%j.err        # STDERR

module load anacondapy/5.3.1
module load elastix/4.8
. activate lightsheet

echo "Starting step 0"

xvfb-run -d python main.py step0 ${output_directory} #update dictionary and pickle

# HOW TO USE:
# sbatch --array=0-20 sub_arrayjob.sh 

