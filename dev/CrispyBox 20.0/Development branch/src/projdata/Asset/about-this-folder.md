# projdata/asset/
> This file is a placeholder that ensures that the containing folder is included in a source code repositories, and available to a project at runtime.

Project assets is stored in **projdata/asset/**.

Examples of project assets are:
* An image for a button control
* A sound effect when a button is pushed
* A non-standard font

## Structure
| Folder                  | Contents        |
|------------------------:|:----------------|
| `projdata/asset/audio/` | Project audio   |
| `projdata/asset/font/`  | Project fonts   |
| `projdata/asset/image/` | Project images  |
| `projdata/asset/video/` | Project video   |

## Making projdata/asset/ available at runtime
### Visual Studio
To ensure that the **projdata/asset/** folder exists at runtime, set the properties for the `projdata/asset/about-this-folder.md` file as such:
```
Build Action: None
Copy to Output Directory: Copy always
```

> Built using [projdata b200708](https://github.com/aprettycoolprogram/dotfiles-templates-and-gists-etc/tree/master/template/projdata)