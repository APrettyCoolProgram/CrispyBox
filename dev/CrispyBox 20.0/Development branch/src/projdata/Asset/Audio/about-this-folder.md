# projdata/asset/audio/
| Folder            | Contents                                                                    |
|------------------:|:----------------------------------------------------------------------------|
| `audio/`          | Audio files that are copied locally to **projdata/asset/audio/** at runtime |
| `audio/embedded/` | Audio files that are built as a project resource.                           |


## Runtime availability
### Visual Studio

Any files that you want available locally at runtime need the following properties set:
```
Build Action: None
Copy to Output Directory: Copy always
```


To ensure that the **projdata/asset/audio/** folder exists at runtime, set the properties for the `projdata/asset/audio/about-this-folder.md` file as such:


## Making assets in projdata/asset/audio/embedded/ are built as project resources
### Visual Studio
To ensure that the **projdata/asset/audio/** folder exists at runtime, set the properties for the `projdata/asset/audio/about-this-folder.md` file as such:
```
Build Action: None
Copy to Output Directory: Copy always
```

> This file is a placeholder that ensures that the containing folder is included in a source code repositories, and available to a project at runtime.<br>
> <br>
> Built using [projdata b200708](https://github.com/aprettycoolprogram/dotfiles-templates-and-gists-etc/tree/master/template/projdata)







### ProjData/Asset/Audio/
> This file is a placeholder to ensure that ***ProjData/Asset/Audio/*** is included in the GitHub repository, and is also
created (if it doesn't exist already) at runtime.

#### Purpose
All project audio files belong here.

#### Structure
| Folder                           | Contents                                                   |
|---------------------------------:|:-----------------------------------------------------------|
| `ProjData/Asset/Audio/`          | Files to be copied to `ProjData/Asset/Audio/*` at runtime. |
| `ProjData/Asset/Audio/Embedded/` | Files built as a project resource.                         |

##

To copy files to `ProjData/Asset/Audio/` at runtime, set the file properties as such:
```
Build Action: None
Copy to Output Directory: Copy always
```

To copy build files in `ProjData/Asset/Audio/Embedded/` as project resources, set the file properties as such:
```
Build Action: Resource
```


