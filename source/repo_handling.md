# Repository handling

## Introduction to Git

[Git](https://git-scm.com) is a free and open source distributed version control system designed to handle projects sources with speed and efficiency. The first step is to get through the basic theory of git. While a good mastery of git requires several hours of study and practices, basic use of the elementary notions **commit**, **push**, **pull** and **branches** can be mastered in a reasonable amount of time. Plenty of tutorials are availables on that matter.

## Repository hosting

As for the tutorials, numerous hosting platforms for git repository are availables GitLab, BitBucket or GitHub. The latter being the one currently used for many reasons amongs its convenient organization features.

I advise you to get a clear Name/Username for your GitHub profile to make it simple for organization management.

```Bash
If your Bruce Wayne a good profile would be
Name : Bruce Wayne
Username : bwayne
Bio : Intern at Gotham University
```

## Environment

Depending on your skills and experience you could use a full command approach with bash or rely on a graphic interface such as GitHub Desktop or Sourcetree. Sourcetree being the one currently used for its user-friendly approach and its incorporated bash.

## Organize folder

Here is the organization I typically use for a git repositories that targets FPGA implementation and usually implies several languages. Any organisation is fine as long as it has been thought through, well-documented and well-organised.

```Bash
Git-Repo
├── README.md
├── c
├── data
├── docs
├── fpga
│   ├── pl
│   │   ├── hdl
│   │   ├── py
│   │   ├── tb
│   │   ├── vitis_project
│   │   ├── vivado_project
│   │   │   ├── cmod
│   │   │   └── genesys2
│   │   ├── waves
│   │   └── xdc
│   └── zynq
│       ├── cpp
│       ├── hdl
│       ├── py
│       ├── tb
│       ├── vitis_project
│       ├── vivado_project
│       │   ├── zcu102
│       │   └── zybo
│       ├── waves
│       └── xdc
├── LICENSE
└── matlab
    └── functions
```

## Create branches

Even if you are mostly working alone on repository, the use of branches is still recommended. A simple branch structure is a master branch and a development branch. The master branch stages all working changes so as it is stable and functionnal. The development branch stages your current progress on the project. You can either create a branch for each change you make or feature you make, then merge and delete when it's good to go. In that case you might name your branch with a recurring pattern like wip001-add-parameter-sweep. Another option is to keep a single development branch all along the project and merge at points where it is functionnal and stable. I usually go with a branch called dev followed by my initials.

## Push daily

Staging your changes online once a day at the end of the day is a good practice to have. It will first prevent data losses that may occur (whims of windows, earthquake, theft, bicycle accident, ... _it might seems quite paranoid but it does happen_). Your collaborators from different time zones as well as supervisors will be able to follow up your progress regularly facilitating meetings and advicing. Moreover, you have access to your up to date sources almost everywhere.

## License your repository

Github allows you to easily associate your repository with a license on creation. License states the intellectual property and provides a clear undestanding of how the user can arrange your work.

## Few more rules

* /!\ : Don't stage large files, GitHub repositories have a 100 Mo limit (unless you use git lfs)
* /!\ : Always pull before pushing anything
* /!\ : Use only relative path or environment variables

## Links

[**GitHub**](https://github.com/)

[**Sourcetree**](https://www.sourcetreeapp.com/)