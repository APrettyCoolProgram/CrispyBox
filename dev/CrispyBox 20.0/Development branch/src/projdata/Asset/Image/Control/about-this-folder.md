### ProjData/Asset/Image/Control/
> This file is a placeholder to ensure that ***ProjData/Asset/Image/Control/*** is included in the GitHub repository, and is also
created (if it doesn't exist already) at runtime.

#### Purpose
All image files for use on UI controls belong here.

#### Structure
| Folder                                      | Contents                                                             |
|--------------------------------------------:|:---------------------------------------------------------------------|
| `ProjData/Asset/Image/Control/`          | Files to be copied to `ProjData/Asset/Image/Control/` at runtime. |
| `ProjData/Asset/Image/Control/Embedded/` | Files built as a project resource.                                   |

To copy files to `ProjData/Asset/Image/Control/` at runtime, set the file properties as such:
```
Build Action: None
Copy to Output Directory: Copy always
```

To copy build files in `ProjData/Asset/Image/Control/Embedded/` as project resources, set the file properties as such:
```
Build Action: Resource
```