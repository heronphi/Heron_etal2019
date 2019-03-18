#!/bin/bash
#SBATCH --nodes=10
#SBATCH --ntasks=400             # number of MPI processes
#SBATCH -J ModelML
#SBATCH --time=1-00:00          # time (DD-HH:MM)
#SBATCH --account=rrg-russ
cd $SLURM_SUBMIT_DIR
module --force purge
module load CCEnv
module load nixpkgs/16.09
module load gcc/5.4.0
module load openmpi/2.1.1
module load trilinos/12.10.1
module load gsl/2.3
module load p4est/1.1

mpirun ./aspect Heron_etal_geology.prm               # mpirun or mpiexec also work
