# Development tools

## Documentation

### Links

[**Sphinx**](https://www.sphinx-doc.org/en/master/)

[**Sphinx Read the docs theme**](https://pypi.org/project/sphinx-rtd-theme/)

[**Sphinx autodoc Matlab**](https://pypi.org/project/sphinxcontrib-matlabdomain/)

## Matlab

WIP

## Python

WIP

## VHDL

### VSCode + TerosHDL : alternative to Vivado editor

Most of the target we use are from Xilinx, therefore enforcing the use of Vivado design suite.
While it is a very complete IDE with many built-in features, its editor remains quite limited. A common workaround is to edit sources with an external editor letting Vivado updates its version once sources are saved in external editor.

**VSCode** paired with **TerosHDL** is a very convenient setup that allows several time saving macros and syntax completions.

> **VSCode Useful default shortcuts (Windows)**
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

* **Notepad** : as a very light and simple editor, it also an alternative to Vivado editor. It also allows add-ons and plugins and is included on most computers installation scripts.
* **Atom** + **TerosHDL** : it is a solution very close to the first one. Atom slightly differs with VSCode on plugin management but I find VSCode more user friendly.
* **Neovim** : if you spent a decent amount of time using vim that might a good alternative if paired with appropriates plugins.
* **Your favorite editor** : any editor your familiar with is a good choice as long as it has hdl support available.

### Improve the environment

* A siginificant improvement might be the introduction of fly-on syntax check powered by Sigasi for example (used in Vivado, educational license available). Numerous open source hdl syntax check tools among which ghdl are also available.
* Another useful tool is the incremental selection that turns out to be very convenient for instanciation and pipeline signals numbering.

### Links

[**VSCode**](https://code.visualstudio.com/)

[**TerosHDL**](https://marketplace.visualstudio.com/items?itemName=teros-technology.teroshdl)

[**Incremental selection**](https://marketplace.visualstudio.com/items?itemName=albymor.increment-selection)
