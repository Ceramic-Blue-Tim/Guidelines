# Good practices

## Documentation

### Simple publish Github Pages from documentation repository

Since Github only allow to serve static html from either /root or /docs of a given branch and
Sphinx outputs html under /build/html it is convenient to script documentation generation to
obtain a structure publishable by github pages.

One of the many solution is to organize the repository as below :

Git repo
- docs
    - *.html
- src
  - docs
    - build
    - source
    - make.bat
    - Makefile

## Matlab

WIP

## Python

WIP

## VHDL

WIP