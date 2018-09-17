This repository contains slides and examples for the 2018 IEEE SecDev
tutorial entitled "Continuous Verification of Critical Software". We
hope participants will use it to follow along with the tutorial, but
also that it might be a self-contained collection of material for
people unable to attend the tutorial.

The slides used to give the tutorial are available
[here](slides/saw-tutorial.pdf)

The examples and exercises from the slides can be found in the
[examples](examples) directory, the [salsa20](salsa20) directory, and
the [Travis configuration](.travis.yml) for this repository.

To run the examples, you'll need several things: the Clang compiler,
the Software Analysis Workbench (SAW), the Yices SMT solver, and the
Z3 SMT solver. To install those tools individually:

  * LLVM + Clang: http://releases.llvm.org/download.html#6.0.1

  * SAW: https://saw.galois.com/builds/nightly (tested with 2018-08-26)

  * Yices: http://yices.csl.sri.com/ (tested with v2.6.0)

  * Z3: https://github.com/Z3Prover/z3/releases/tag/z3-4.7.1

Alternatively, we've prepared a Docker image containing all of the
above (as well as Emacs and Vim to allow you to try out various
changes to the examples). You can get this image by running:

    docker pull atomb/secdev18-saw
    docker run --rm -it atomb/secdev18-saw

The `--rm` flag above tells Docker to remove the temporary
intermediate image it would normally create to store any changes you
make during your session. To keep those changes, leave out the flag
and then give the temporary image a useful name.
