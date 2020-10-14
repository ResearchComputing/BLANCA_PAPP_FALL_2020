#!/bin/bash
#SBATCH --nodes=1			# Number of requested nodes
#SBATCH --ntasks=1			# Number of requested cores
#SBATCH --time=00:01:00		# Max wall time
#SBATCH --qos=blanca-papp	# Specify QOS; may be just “blanca-appm” for some
#SBATCH --partition=blanca-papp 		# Specify APPM nodes
#SBATCH --account=blanca-papp 		# Specify account
#SBATCH --output=hostname_%j.out		# Rename standard output file
#SBATCH --job-name=hostname		# Job submission name

# purge all existing modules
module purge

hostname
echo ""
nvidia-smi
