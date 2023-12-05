# projdata/doc/
> This file is a placeholder that ensures that the containing folder is included in a source code repositories, and available to a project at runtime.

Project documentation is stored in **projdata/doc/**.

Examples of project documentation:
* Project manuals
* Project documents (ex: changelogs, roadmaps, etc)

## Structure
| Folder                | Contents                 |
|----------------------:|:-------------------------|
| `projdata/doc/howto/` | Project how-to documents |
| `projdata/doc/man/`   | Project manual(s)        |
| `projdata/doc/proj/`  | Project documentation    |

## Making projdata/doc/ available at runtime
### Visual Studio
To ensure that the **projdata/doc/** folder exists at runtime, set the properties for the `projdata/doc/about-this-folder.md` file as such:
```
Build Action: None
Copy to Output Directory: Copy always
```

> Built using [projdata b200708](https://github.com/aprettycoolprogram/dotfiles-templates-and-gists-etc/tree/master/template/projdata)