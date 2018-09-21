FROM debian:stretch-slim

USER root
RUN apt-get update
RUN apt-get install -y zlibc zlib1g clang unzip wget libgmp10 vim-nox emacs-nox make

RUN wget --quiet http://yices.csl.sri.com/releases/2.6.0/yices-2.6.0-x86_64-pc-linux-gnu-static-gmp.tar.gz
RUN wget --quiet https://github.com/Z3Prover/z3/releases/download/z3-4.7.1/z3-4.7.1-x64-debian-8.10.zip
RUN wget --quiet https://saw.galois.com/builds/nightly/saw-0.2-2018-08-26-Ubuntu14.04-64.tar.gz
RUN tar -xzf yices-*.tar.gz
RUN tar -xzf saw-*.tar.gz
RUN unzip z3-*.zip
RUN cp yices-*/bin/yices* /usr/local/bin/
RUN cp z3-*/bin/z3 /usr/local/bin/
RUN cp saw-*/bin/cryptol /usr/local/bin/
RUN cp saw-*/bin/saw /usr/local/bin/
RUN rm -rf yices-* saw-* z3-*

RUN useradd -U -m saw

USER saw
WORKDIR /home/saw
ENV LANG C.UTF-8

COPY --chown=saw:saw examples examples
COPY --chown=saw:saw salsa20 salsa20

ENTRYPOINT ["/bin/bash"]
