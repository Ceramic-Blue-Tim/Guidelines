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

You may also add the local build to the .gitignore.

```py
# Ignore local build for sphinx doc
docs/build/
```

_Better solutions use a different branch staging only static html content that is set with Github Actions or git hooks. For the time being this solution is easier to set up and suits our needs._

## Matlab

### Header

Adding a header at the beginning of all yours files. It will help you keeping track on your sources and defusing potential cases of plagiarism.
A header usually includes the name of the authors, the creation and update date and versioning as well as comments.
```Matlab
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Authors     : Romain BEAUBOIS
%   Create Date : 06 Aug 2021
%   Update Date : 09 Aug 2021
%
%   Description : A simple header to illustrate
%
%   Revision :
%       > Revision 0.01 - File created
%
%   Additional Comments :
%       > Not much more to sayn it's juste an example
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
```

### Comments

Comments also are essential. There are plenty of way to handle it since Matlab is widely use by people from non-programming background. Here are some rules I usually apply for my scripts.

#### Functions

Insert comments below functions is a standard, the | and ** are syntax used by Sphinx for documentation layout.

```Matlab
function u = ohmLaw(r, i)
% | **Compute ohm's law**
% |
% | **u** : Voltage (V)
% | **r** : Resistance (ohm)
% | **i** : Current (A)
%
% | Compute simple ohm's law from fixed parameters in SI unit
```

#### Sections

Sections (comments blocks that start with %%) are usually followed by a consistent name.
They can be divided in blocks separated by simple line comment with a simple tab.

```Matlab
%% Define Parameters ##########################################################################
    % Time
        ...

    % Geometry
        ...
```

### Inline comments

Inline comments are mostly used for variables declaration or assignation so as they describe what si the variable for, what operation is performed or what is the unit.
```Matlab
    dt              = 2^-5;     % ms - Time step
    sim_time        = 30e3;     % ms - Simulation time

    neur_diam       = 15;       % µm - Average diameter of a neuron
    dist_orgs       = 120;      % µm - Distance between centers of organoids
```

## Python

WIP

## VHDL

WIP