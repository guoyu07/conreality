*****************
Consensus Reality
*****************

*"Don't panic, it's just a game."*

https://conreality.org

.. image:: https://api.travis-ci.org/conreality/conreality.svg?branch=master
   :target: https://travis-ci.org/conreality/conreality
   :alt: Travis CI build status

.. image:: https://coveralls.io/repos/conreality/conreality/badge.svg?branch=master&service=github
   :target: https://coveralls.io/github/conreality/conreality?branch=master
   :alt: Coveralls.io code coverage

Prerequisites
=============

To build the development version from a Git checkout, you will need a POSIX
system and the following tooling:

* OCaml compiler (>= 4.02.1)
  with `Findlib <http://projects.camlcity.org/projects/findlib.html>`__
* C/C++ compiler (GCC >= 4.8 or Clang >= 3.4)
* GNU Make

Dependencies
============

C/C++ Libraries
---------------

* `Lua <http://www.lua.org/download.html>`__ (= 5.1.x)

* `OpenCV <http://opencv.org/>`__ (>= 2.4)

On a Debian or Ubuntu Linux system, install the needed native runtime
libraries and header files as follows::

   $ sudo apt-get install liblua5.1-0-dev libopencv-dev

OCaml Tooling
-------------

::

   $ opam install cppo menhir

* `Cppo <https://opam.ocaml.org/packages/cppo/cppo.1.3.1/>`__ (>= 1.3.1)

* `Menhir <https://opam.ocaml.org/packages/menhir/menhir.20151112/>`__ (>= 20151112)

OCaml Packages
--------------

::

   $ opam install cmdliner irc-client lwt ocaml-lua

   $ opam install alcotest utop   # for development only (--enable-develop)
   $ opam install core_bench      # for benchmarking only

* `Alcotest <https://opam.ocaml.org/packages/alcotest/alcotest.0.4.5/>`__ (>= 0.4.5)
  (not automatically installed. ``opam install alcotest`` to run the tests with ``make check``)

* `Cmdliner <https://opam.ocaml.org/packages/cmdliner/cmdliner.0.9.8/>`__ (>= 0.9.8)

* `Core_bench <https://github.com/janestreet/core_bench>`__ (>= 112.35.00)
  (not automatically installed. ``opam install core_bench`` to run the benchmarks with ``make bench``)

* `IRC-Client <https://opam.ocaml.org/packages/irc-client/irc-client.0.3.0/>`__ (>= 0.3.0)

* `Lwt <https://opam.ocaml.org/packages/lwt/lwt.2.5.0/>`__ (>= 2.5.0)

* `OCaml-Lua <https://opam.ocaml.org/packages/ocaml-lua/ocaml-lua.1.2/>`__ (>= 1.2)

Installation
============

Prerequisites for Ubuntu 14.04 LTS (Trusty Tahr) and 15.10 (Wily Werewolf)::

   $ sudo apt-add-repository ppa:avsm/ppa
   $ sudo apt-get update
   $ sudo apt-get install ocaml-nox opam m4

Prerequisites for Raspberry Pi running Raspbian or Debian Jessie::

   $ sudo apt-get install ocaml-nox m4
   $ git clone https://github.com/ocaml/opam.git
   $ cd opam
   $ git checkout 1.2
   $ ./configure
   $ make lib-ext
   $ make
   $ sudo make install
   $ cd ..

General initialization of a local OCaml development environment::

   $ opam init
   $ eval `opam config env`
   $ opam switch 4.02.3
   $ eval `opam config env`

General local installation procedure::

   $ git clone --recursive https://github.com/conreality/conreality.git
   $ cd conreality

   $ ./autogen.sh      # only needed for Git checkouts, not for tarballs
   $ ./configure
   $ make
   $ make check
   $ sudo make install

If you want to run the test suite, you need to install Alcotest::

   $ opam install alcotest

To run the tests::

   $ make clean && make check  # adding "V=1" here will produce lots of output

To run the benchmarks, you need to install the Jane Street Core_bench package::

   $ opam install core_bench

To run the benchmarks::

   $ make clean && make bench
