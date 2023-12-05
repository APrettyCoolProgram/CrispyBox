### ProjData/Asset/Font/
> This file is a placeholder to ensure that ***ProjData/Asset/Font/*** is included in the GitHub repository, and is also
created (if it doesn't exist already) at runtime.

#### Purpose
All project fonts belong here.

#### Structure
| Folder                             | Contents                                                    |
|-----------------------------------:|:------------------------------------------------------------|
| `ProjData/Asset/Font/`          | Files to be copied to `ProjData/Asset/Font/` at runtime. |
| `ProjData/Asset/Font/Embedded/` | Files built as a project resource.                          |

To copy files to `ProjData/Asset/Font/` at runtime, set the file properties as such:
```
Build Action: None
Copy to Output Directory: Copy always
```

To copy build files in `ProjData/Asset/Font/Embedded/` as project resources, set the file properties as such:
```
Build Action: Resource
```