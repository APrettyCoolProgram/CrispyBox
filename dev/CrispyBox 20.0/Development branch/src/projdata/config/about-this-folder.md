### ProjData/Asset/Audio/
> This file is a placeholder to ensure that ***ProjData/Asset/Audio/*** is included in the GitHub repository, and is also
created (if it doesn't exist already) at runtime.

#### Purpose
All project audio files belong here.

#### Structure
| Folder                              | Contents                                                     |
|------------------------------------:|:-------------------------------------------------------------|
| `ProjData/Asset/Audio/`          | Files to be copied to `ProjData/Asset/Audio` at runtime. |
| `ProjData/Asset/Audio/Embedded/` | Files built as a project resource.                           |

To copy files to `ProjData/Asset/Audio/` at runtime, set the file properties as such:
```
Build Action: None
Copy to Output Directory: Copy always
```

To copy build files in `ProjData/Asset/Audio/Embedded/` as project resources, set the file properties as such:
```
Build Action: Resource
```