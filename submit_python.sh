#!/bin/bash
#SBATCH --nodes=1			           # Number of requested nodes
#SBATCH --ntasks=1			         # Number of requested cores
#SBATCH --time=00:01:00		       # Max wall time
#SBATCH --qos=blanca-papp	       # Specify QOS
#SBATCH --partition=blanca-papp  # Specify nodes
#SBATCH --account=blanca-papp 	 # Specify account
#SBATCH --output=python_%j.out   # Rename standard output file
#SBATCH --job-name=python  		   # Job submission name

# purge all existing modules and load the CURC anaconda environment
module purge
source /curc/sw/anaconda/default

#optional: load your own custom python environment that you pre-built:
#conda activate myenv

#run python (expects "hello_world.py" script in working directory)
python hello_world.py
