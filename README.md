# Multifiltration Numerical Experiments

Uses modified parts of the [https://github.com/rivetTDA/rivet-python](pyrivet library).
Specifically the files:
   `hera.py`
   `barcode.py`
   `matching_distance.py`
   `rivet.py`
Since this is an anonymous git account, we have chosen not to create a fork of this library, but instead include the edited python files directly into this project.
We include their license, in the file `LICENSE_PYRIVET`.

## Prerequisites

To run this code the following python libraries are required:
  - numpy
  - networkx
  - scipy 
Additionally the RIVET and Hera programs must be built.
RIVET requires BOOST to be installed.
You will also need `make` and `cmake`. 

There is an install shell script included in this document, which will download and compile the binaries for both of these programs.

On some machines there is a potential issue with building RIVET.
If the install script fails the RIVET install, then likely the error is in the building of the Docopt dependency.
To correct this edit the file `./dependencies/rivet/build/docopt/src/docopt_project/docopt_value.h` and add to the list of 
includes at the top the line `#include <stdexcept>`.
Then travel back to the build folder and run `make` in the terminal.

## Running

The included python notebook downloads the graph data, runs RIVET and computes the accuracy of classification on zero-th and first multiparameter persistent homology on the clique complex graphs.
