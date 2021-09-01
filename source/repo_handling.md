# Repository handling

## Introduction to Git

[Git](https://git-scm.com) is a free and open source distributed version control system designed to handle projects sources with speed and efficiency. The first step is to get through the basic theory of git. While a good mastery of git requires several hours of study and practices, basic use of the elementary notions **commit**, **push**, **pull** and **branches** can be mastered in a reasonable amount of time. Plenty of tutorials are availables on that matter.

## Repository hosting

As for the tutorials, numerous hosting platforms for git repository are availables GitLab, BitBucket or GitHub. The latter being the one currently used for many reasons amongs the convenient organization features.

I advise you to get a clear Name/Username for your GitHub profile to make it simple for organization management.

```Bash
If your Bruce Wayne a good setting would be
Name : Bruce Wayne
Username : bwayne
Bio : Intern at Gotham University
```

## Environment

Depending on your skills and experience you could use a full command approach with bash or rely on a graphic interface such as GitHub Desktop or Sourcetree. Sourcetree being the one currently used for its user-friendly approach and its incorporated bash.

## Organize folder

Here is an example of organization for a git repository that is quite convenient to easily deal with FPGA targeting project that usually implies several languages. As long as it has been thought through and well-organised any organization is fine.

```Bash
Repository
├───c
├───data
├───doc
├───fpga
│   ├───c
│   ├───hdl
│   ├───tb
│   ├───vivado_project
│   ├───vitis_project
│   ├───waves
│   └───xdc
├───matlab
│   └───functions
└───py
```

## Create branches

Even if you are mostly working alone on repository, the use of branches is still recommended. A simple branch structure is a master branch where you stage all working changes so as it is stable and functionnal and a development branch where your stage your current work. You can either create a branch for each change you make or feature you make, then merge and delete when it's good to go. In that case you might name your branch with a recurring pattern like wip001-add-parameter-sweep. Another option is to keep a single development branch all along the project and merge at points where it is functionnal and stable.

## Push daily

Staging your changes online once a day at the end of the day is a good practice to have. It will first prevent data losses that may occur (whims of windows, earthquake, theft, bicycle accident, ... _it might seems quite paranoid but it does happen_). Your collaborators from different time zones as well as supervisors will be able to follow up your progress regularly facilitating meetings and advicing. Moreover, you have access to your up to date sources almost everywhere.

## Few more rules

* /!\ : Don't stage large files, GitHub repositories have a 100 Mo limit (unless you use git lfs)
* /!\ : Always pull before pushing anything
* /!\ : Use only relative path or environment variables

## Links

[**GitHub**](https://github.com/)

[**Sourcetrre**](https://www.sourcetreeapp.com/)