# Good practices

## Documentation

### Simple publish Github Pages from documentation repository

Since Github only allow to serve static html from either /root or /docs of a given branch and
Sphinx outputs html under /build/html it is convenient to script documentation generation to
obtain a structure publishable by github pages.

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
Then the Makefile is modified to generate Sphinx documentation and copy its output in docs folder.

* **src/docs** is your local Sphinx folder with sources and build

* **docs** is html static content for github pages

```Makefile
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

Better solutions use a different branch with static html content only that is set with Github Actions or Git Hooks. For the time being this solution is more easier to set up and works well for our needs.

## Matlab

WIP

## Python

WIP

## VHDL

WIP