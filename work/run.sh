#!/bin/bash
# FFV-C execution script

# Number of MPI processes (adjust as needed)
NP=1

# Input file
INPUT=outflow_obstacle.tp

# Create output directory
mkdir -p sph

# Run FFV-C
if [ $NP -eq 1 ]; then
    ../bin/ffvc $INPUT 2>&1 | tee ffvc.log
else
    mpirun -np $NP ../bin/ffvc-mpi $INPUT 2>&1 | tee ffvc.log
fi

echo "Simulation completed. Check ffvc.log for details."
