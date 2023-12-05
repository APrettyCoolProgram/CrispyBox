### ProjData/Asset/Video/
> This file is a placeholder to ensure that ***ProjData/Asset/Video/*** is included in the GitHub repository, and is also
created (if it doesn't exist already) at runtime.

#### Purpose
All project videos belong here.

#### Structure
| Folder                              | Contents                                                     |
|------------------------------------:|:-------------------------------------------------------------|
| `ProjData/Asset/Video/`          | Files to be copied to `ProjData/Asset/Video/` at runtime. |
| `ProjData/Asset/Video/Embedded/` | Files built as a project resource.                           |

To copy files to `ProjData/Asset/Video/` at runtime, set the file properties as such:
```
Build Action: None
Copy to Output Directory: Copy always
```

To copy build files in `ProjData/Asset/Video/Embedded/` as project resources, set the file properties as such:
```
Build Action: Resource
```