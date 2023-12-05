# projdata/doc/proj/
> This file is a placeholder that ensures that the containing folder is included in a source code repositories, and available to a project at runtime.

Project manuals are stored in **projdata/doc/proj/**.

Images for how-to documents are stored in **projdata/asset/image/doc/proj/**

## Making projdata/doc/proj/ available at runtime
### Visual Studio
To ensure that the **projdata/doc/proj/** folder exists at runtime, set the properties for the `projdata/doc/proj/about-this-folder.md` file as such:
```
Build Action: None
Copy to Output Directory: Copy always
```

> Built using [projdata b200708](https://github.com/aprettycoolprogram/dotfiles-templates-and-gists-etc/tree/master/template/projdata)