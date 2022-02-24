# Miscellaneous

## Article figures

An interesting approach for article's figures is the use of vectorial graphics. Using vectorial figures guarantees high quality independently from the resolution since the figure is coded through mathemical calculation instead of pixel array. When compression is needed you may adapt your vectorial figure to the appropriate size and then perform compression to insure high quality. Otherwise, you may just convert your vectorial figure to pdf file.

Useful softwares:

* [**Inkscape**](https://inkscape.org/fr/) (vectorial graphic design) : free, light and simple but limited features.
* [**Illustrator**](https://www.adobe.com/fr/products/illustrator/free-trial-download.html) (vectorial graphic design) : user-friendly, plenty of features, powerful but expensive even with student pricing.
* [**Visio**](https://www.microsoft.com/fr-fr/microsoft-365/visio/flowchart-software) (diagram design with vectorial output) : diagram oriented, user-friendly but not free.
* [**Draw.io**](https://app.diagrams.net/) (diagram design with vectorial output) : diagram oriented, user-friendly, free, web and desktop clients availables.
* [**KLatexFormula**](https://klatexformula.sourceforge.io/) (latex math formula to vector files) : free but needs latex compiler

## Password managing

If you feel skeptical about the usefulness and convenience of a password manager, then you may document yourself on the matter. Password manager sure is something you want to get into. The one I recommend is KeePass.

[**Information on the software**](https://keepass.fr/)

[**Download page**](https://keepass.info/download.html)

Since it is cross-platform and works on a light database file, you could think of a cloud hosted database used to refresh and update all local databases on your device. I recommend [Nextcloud](https://nextcloud.com/) as a self-hosted cloud but other alternatives sure exist.

## Interfaces using Qt

A fast and convenient way to create GUI is the use of Qt Designer along with Python. Qt Designer provides a graphical interface to developp the GUI that can later be translated to Python. Qt is originally native C++ so for application that require higher performances or very specific interactions, it is better to use Qt Creator (C++ coding of Qt library). The designed ui (*.ui) describing widgets and layout can be interpreted by both Python and C++.

```Bash
pip install PyQt5
pip install qt5-tools
```

For Anaconda users, Qt Designer is usually install by default and you can launch it from Anaconda Prompt.

```Bash
designer
```

A good tutorial to get started : [**Qt Designer tutorial**](https://realpython.com/qt-designer-python/)

A good set of icons under Creative Commons license : [**Fugue icons by Yusuke Kamiyamane**](https://p.yusukekamiyamane.com/icons/search/fugue/)