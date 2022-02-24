# Development tools

## Documentation

### Sphinx + extensions

Sphinx was initially developped to document Python sources but can also applied to several other sources thanks to extensions.
Mainly based on the used of [reStructuredText](https://www.sphinx-doc.org/en/master/usage/restructuredtext/index.html) (or Markdown with extensions) it allows the generation of html documentation easily. Using the autodoc function, documentation is generated from the docstrings in sources. Since it is Python based, package managing for installation as well as extensions are simple and port well.

If you have pip installed you can get through the installation of sphinx and extensions using the following commands.

```Bash
pip install Sphinx
pip install sphinxcontrib-matlabdomain
pip install sphinx-rtd-theme
pip install myst-parser
pip install mathjax
pip install sphinx-autodoc-variants
pip install sphinxcontrib-bibtex
```

On linux generated bin are located in user local so as you may want to create a symbolic link to your /bin.
```Bash
sudo ln -s /home/username/.local/bin/sphinx-autogen /bin/sphinx-autogen
sudo ln -s /home/username/.local/bin/sphinx-quickstart /bin/sphinx-quickstart
sudo ln -s /home/username/.local/bin/sphinx-apidoc /bin/sphinx-apidoc
sudo ln -s /home/username/.local/bin/sphinx-build /bin/sphinx-build
```

### Doxygen

As presented on their [website](https://www.doxygen.nl/index.html), Doxygen is the de facto standard tool for generating documentation from annotated C++ sources, but it also supports other popular programming languages such as C, Objective-C, C#, PHP, Java, Python, IDL (Corba, Microsoft, and UNO/OpenOffice flavors), Fortran, VHDL and to some extent D.

The main drawback users found to Doxygen is its esthetic that is a little bit old fashioned. This introduces the next alternative.  

### Doxygen + Breathe + Sphinx

Breathe allows to get documentation generated from Doxygen with the html render of Sphinx. It does require a little bit more of configuration.

### TerosHDL Documenter

This solution is only for VHDL/Verilog documentation and allows to generate various documentation of your design though block diagram, state machin viewer and [waveform description](https://wavedrom.com/tutorial.html).

### Links

[**Sphinx**](https://www.sphinx-doc.org/en/master/) + [**Read the docs theme**](https://pypi.org/project/sphinx-rtd-theme/) - [**Autodoc Matlab**](https://pypi.org/project/sphinxcontrib-matlabdomain/) - [**Markdown sourcing**](https://myst-parser.readthedocs.io/en/latest/sphinx/intro.html) - [**Math equations**](https://pypi.org/project/mathjax/)

[**Doxygen**](https://www.doxygen.nl/index.html)

[**Breathe**](https://pypi.org/project/breathe/)

[**Breathe documentation**](https://breathe.readthedocs.io/en/latest/index.html)

[**TerosHDL documenter**](https://terostechnology.github.io/terosHDLdoc/features/documenter.html)

## Matlab

### VSCode + plugins : alternative to Matlab Editor

The built-in editor of Matlab although it is customable in terms of syntax coloring and shortcuts lacks a decent autocompletion. An alternative is to edit the scirpts in VSCode paired with a Matlab plugin that will allow efficient auto-completion and link to functions.

#### Useful commands

* `Ctrl` + `MouseClickLeft` : on a function it will open the script that defines the function

### Links

[**VSCode**](https://code.visualstudio.com/) + [**Matlab plugin**](https://marketplace.visualstudio.com/items?itemName=Gimly81.matlab)

## Python

### VSCode + plugins + pip

This environment is based on the use of pip for the management of Python package and VSCode paired with some plugin to act as an IDE. This version is lighter than using Anaconda (Anaconda is about 9 Go) since you only install what you need without any extra package and faster at startup. The package manager pip can be installed from the Python installer.

#### Useful commands

* `Ctrl` + `Shift` + `P` > Execute current Python script in Terminal : Launch your Python script
* `Ctrl` + `Shift` + `P` > Select Python interpreter : Select what version of Python to use
* `Ctrl` + `Shift` + `P` > Python : List all the actions related to Python

#### How to use pip

If you installed from Python installer and if your environment variables are correctly set, you may call pip installer from windows shell using the following command.

`Win` + `R` > cmd : to open windows shell

```Bash
pip install Sphinx --user
```

Otherwise you might need to call it as below.

```Bash
python -m pip install Sphinx --user
```

### Anaconda

The alternative is the use of anaconda that a very complete platform that will allow to handle easily python virtual environments and comes with a numerous softwares. However, you are more likely to spend most of your time using the IDE named Spider so as you are a very small percentage of the Anaconda's features. This is why unless you are in need of a particular setup, you may want to opt for the VSCode+plugins+pip solution.

### Links

[**VSCode**](https://code.visualstudio.com/) + [**Python**](https://www.python.org/) - [**Python Linter VSCode**](https://marketplace.visualstudio.com/items?itemName=ms-python.python) - [**Python Extension VSCode**](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance)

[**Pip documentation**](https://pip.pypa.io/en/stable/cli/pip_install/)

[**Anaconda**](https://www.anaconda.com/)

## VHDL

### VSCode + TerosHDL : alternative to Vivado editor

Most of the target we use are from Xilinx, therefore enforcing the use of Vivado design suite.
While it is a very complete IDE with many built-in features, its editor remains quite limited. A common workaround is to edit sources with an external editor letting Vivado updates its version once sources are saved in external editor.

**VSCode** paired with **TerosHDL** is a very convenient setup that allows several time saving macros and syntax completions.

#### VSCode Useful default shortcuts (Windows)
>  * `Ctrl` + `Shift` + `Alt` + `Up/Down` : multi column selection
>  * `Ctrl` + `Shift` + `Left/Right` : word to word selection
>  * `Alt` + `Shift` : duplicate current selection or line
>  * `Alt` + `Up/Down` : move line up or down
>  * `Ctrl` + `X` : cut but could be use to delete line
>  * `Home` : Start of line
>  * `End`  : End of line
>  * `Ctrl` + `Home` : Start of file
>  * `Ctrl` + `End`  : End of file

> **TerosHDL Useful Macros**
>  * `libieee` : generate libraries (standard, ...)
>  * `entarch` : generate entity and architecture tempalte
>  * `process` : generate process (async, sync, comb, ...)
>  * `slv` : std logic vector declaration or cast
>  * `compinst` : port map instance
>  * **Generate VHDL Testbench** : generate testbench from source in clipboard
  
### Other alternatives

* **Notepad** : as a very light and simple editor, is also an alternative to Vivado editor. It allows add-ons and plugins and is included on most computers installation scripts.
* **Atom** + **TerosHDL** : it is a solution very close to the first one. Atom slightly differs with VSCode on plugin management but I find VSCode more user friendly.
* **Neovim** : if you spent a decent amount of time using vim that might a good alternative if paired with appropriates plugins.
* **Your favorite editor** : any editor your familiar with is a good choice as long as it has hdl support available.

### Improve the environment

* A siginificant improvement might be the introduction of fly-on syntax check powered by Sigasi for example (used in Vivado, educational license available). Numerous open source hdl syntax check tools among which ghdl are also available.
* Another useful tool is the incremental selection that turns out to be very convenient for instanciation and pipeline signals numbering.

### Links

[**VSCode**](https://code.visualstudio.com/) + [**TerosHDL**](https://marketplace.visualstudio.com/items?itemName=teros-technology.teroshdl) - [**Incremental selection**](https://marketplace.visualstudio.com/items?itemName=albymor.increment-selection)

[**Vivado ML Standard 2021.2**](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2021-2.html) (currently transitioning)

[**Vivado Design Suite & Vitis 2020.2**](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html)