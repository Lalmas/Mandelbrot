Mandelbrot
==========

This program permit to create a mandelbrot fractale, a sequential and parallel program  at MPI(C). In a sequential program, one process do all jobs for create image. In a parallel program, a work being devise beetwen n process, and each proces create a part of image. To end, a root process assemble all part for form a final image.

### Compil and execute a programs

#### A sequetial program (In C)
    make mandel-seq
    ./mandel-seq
This execution create an image mandel.ppm

#### A parallel program (MPI -- C)
    make mandel-par
    mpirun -np process_number -machinefile machine_file_name  ./mandel-par

* process_number: A number a parallel process that you want to make a job. Choose 10 process to maximal, when i tested i was an error from MPI that suppose detect buffer overflow.
* machine_file: A list of potential host which can participe to program execution. An example of this file type is mF.
Each process create an image mandel-n.ppm for look how a work being divised.

![Image](Lalmas.github.com/Mandelbrot/img/mandel.ppm)


