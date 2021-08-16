# Good practices

## Documentation

### Simple publish Github Pages from documentation repository

Since Github only allows to serve static html from either /root or /docs of a given branch and
Sphinx outputs html under /build/html it is convenient to script documentation generation to
obtain a structure easily publishable using github pages.

One of the many solution is to organize the repository as below :

```bash
Git repo
├───docs
│   └───*.html
└───src
    └───docs
        ├───build
        ├───source
        ├───Makefile
        └───make.bat
```

* **src/docs** is your local Sphinx folder with sources and build

* **docs** is html static content for github pages

Then the Makefile is modified to generate Sphinx documentation and copy its output in docs folder.

```Makefile
# Folder for html output
DOCS          = ../../docs

# Add new make file directive : make github
github:
    # Clean build folder
	rm -rf "$(BUILDDIR)"
    # Generate Sphinx documentation
	make html
    # Remove previous html static content to allow copy
	rm -rf "$(DOCS)"
    # Copy build in github pages source folder being /docs
	mv "$(BUILDDIR)/html" "$(DOCS)"
    # Create .nojekyll file to setup github pages correctly
	echo $ >> "$(DOCS)/.nojekyll"
```

Therefore, you can stick to `make html` to locally check changes in src/ then you may use `make github` and stage/push your changes.

_Better solutions use a different branch staging only static html content that is set with Github Actions or git hooks. For the time being this solution is easier to set up and suits our needs._

## Matlab

WIP

## Python

WIP

## VHDL

WIP