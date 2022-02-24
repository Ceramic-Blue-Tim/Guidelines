# Guidelines, good practices and tips

## Github Pages

Here is the link to the Github Pages for : [Guidelines](https://ceramic-blue-tim.github.io/Guidelines/)

## Contributing

* Clone repository

``` Bash
$ git clone https://github.com/Ceramic-Blue-Tim/Guidelines.git
```

* Install all python packages used by Sphinx (stated in conf.py)

``` Bash
$ pip install sphinxcontrib.matlab
$ pip install sphinx.ext.autodoc
$ pip install sphinx.ext.napoleon
$ pip install sphinx.ext.coverage
$ pip install sphinxcontrib.matlab
$ pip install sphinx.ext.intersphinx
$ pip install sphinx.ext.todo
$ pip install sphinx.ext.mathjax
$ pip install sphinx.ext.viewcode
$ pip install myst_parser
$ pip install sphinx.ext.autosummary
$ pip install sphinx.ext.extlinks
$ pip install sphinxcontrib.
```

* Build local project

``` Bash
$ make html
```

* Build dist project to stage
``` Bash
$ make github
```