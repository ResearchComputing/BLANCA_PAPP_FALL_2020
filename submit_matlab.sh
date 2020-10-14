
#!/bin/bash
#SBATCH --nodes=1			           # Number of requested nodes
#SBATCH --ntasks=1			         # Number of requested cores
#SBATCH --time=00:01:00		       # Max wall time
#SBATCH --qos=blanca-papp	       # Specify QOS
#SBATCH --partition=blanca-papp  # Specify nodes
#SBATCH --account=blanca-papp 	 # Specify account
#SBATCH --output=matlab_%j.out   # Rename standard output file
#SBATCH --job-name=matlab  		   # Job submission name

# purge all existing modules and load matlab
module purge
module load matlab/R2019b

#run matlab (expects "hello_world.m" script in working directory)
matlab -nodesktop -nodisplay -r 'clear; hello_world;'
