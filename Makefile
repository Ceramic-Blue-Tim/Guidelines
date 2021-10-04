# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build
DOCS          = ./docs

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Add new make file directive : make github
github:
    # Clean build folder
	rm -rf "$(BUILDDIR)"
    # Generate Sphinx documentation
	make html
    # Copy build in github pages source folder being /docs
	cp -r "$(BUILDDIR)/html/." "$(DOCS)"
    # Create .nojekyll file to setup github pages correctly
	echo $ >> "$(DOCS)/.nojekyll"

%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
