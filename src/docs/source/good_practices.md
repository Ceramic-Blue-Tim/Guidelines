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
%       > Not much more to say, it's juste an example
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

### Indent

### Comments

VHDL is known to be a verbose language, meaning that it requires a lot of detailed syntax. Therefore, wisely and efficiently commenting is hihgly recommanded both for you own mental health and for code sharing.

#### Header

As for the other language, the file header states intellectual property and gives useful details on the file versioning. Here is a quick example

```vhdl
-- ===============================================================================
--  Authors     : Romain BEAUBOIS
--  Create Date : 01 Jan 2021
--  Update Date : 23 Aug 2021
--
--  Description : Top module of SNN-SHH-MMN
--
--  Revision:
--      > Revision 0.01 - File created
--      > Revision 0.02 - Add fixed point representation
--
--  Additional Comments :
--      > For loops of matrix larger than N=10 induces negative WNS (WIP)
-- ===============================================================================
```

#### Ports

It is sometime useful to organise properly your the input and outputs of a module.
However, it may sometimes hamper column selection and incremental selections as your
lines are getting sparsed. Here is a quick example

```vhdl
port(
    -- Clock/reset --
    clk     : in  std_logic;
    reset   : in  std_logic;

    -- SPI --
    DAC_sclk    : out std_logic;
    DAC_cs      : out std_logic;
    DAC_mosi    : out std_logic;

    -- PSU -> FPGA via AXI LITE
        -- RAM control
        PSU_en_write    : in std_logic;
        PSU_addrw       : in std_logic_vector(ADDRSIZE-1 downto 0);

        -- Conductance
        PSU_GK      : in std_logic_vector(INT+DEC downto 0)
);
```

#### Signal declaration

About the same principles apply to signal declaration. Try to organise your signals by grouping according to their role. Here is another example

```vhdl
    -- Clock --
    signal clk              : std_logic; -- Main clock

    -- DSP pipelines
    signal A    : signed(7+DEC downto 0)    := (others => '0'); -- DSP multiplier inputs
    signal B    : signed(7+DEC downto 0)    := (others => '0'); -- DSP multiplier inputs

    -- Time --
    signal tick             : std_logic := '0';                 -- Computation enable
    signal tick_counter     : std_logic_vector(11 downto 0);    -- Counts clock cycle to generate ticks
```

### Think generic

Another important parameter is the genericity of your design. VHDL is interprated by the software roughly as a huge list of components and connections. Therefore, using generic parameters instead of fixed parameters will facilitate the scalibity of your design and simplify development.

#### Constants

The use of constants in VHDL is really imporant, it helps generic generation and really clarify your code. Moreover, they do not relate to any material generation (simply GND or VCC connection on pins). Let's take the example of a FPGA implementation to get the signal from 4 parallel ADC coded on 12 bits, a wise description could start with the following definitions.

```vhdl
    constant NB_ADC     : integer range 0 to 4      := 4;       -- Number of ADC to read
    constant NB_BIT_ADC : integer range 0 to 12     := 12;      -- Number of bits for ADC signal encoding
    type data_ADC_s is array (0 to NB_ADC-1) of std_logic_vector(NB_BIT_ADC-1 downto 0);    -- Signal type for an array of ADC signals
    signal data_ADC     : data_ADC_s                := (others=>(others=>'0')); -- Signal for all ADC data
```

#### Make packages

#### Smart signals assignation
