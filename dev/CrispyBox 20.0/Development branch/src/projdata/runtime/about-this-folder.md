# projdata/runtime/
> This file is a placeholder that ensures that the containing folder is included in a source code repositories, and available to a project at runtime.

Data required at project data runtime is stored in **projdata/runtime/**.

## Making projdata/runtime/ available at runtime
### Visual Studio
To ensure that the **projdata/runtime/** folder exists at runtime, set the properties for the `projdata/runtime/about-this-folder.md` file as such:
```
Build Action: None
Copy to Output Directory: Copy always
```

> Built using [projdata b200708](https://github.com/aprettycoolprogram/dotfiles-templates-and-gists-etc/tree/master/template/projdata)