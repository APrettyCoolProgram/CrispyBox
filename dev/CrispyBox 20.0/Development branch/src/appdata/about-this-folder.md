### AppData/*
> This file is a placeholder to ensure that the ***AppData/**** folders are included in the GitHub repository, and are also
created (if they don't exist already) at runtime.

#### Purpose
All project data belongs here.

A project resource is dynamic data that an application uses.

Examples of project data:
* Databases
* Temporary and cache data
* Configuration files

Static data that a project needs to function should not be stored in `AppData/`, and should instead be stored in `ProjData/`

#### Structure
Each of the following locations may have its own folder structure.

| Folder              | Contents                                     |
|--------------------:|:---------------------------------------------|
| `AppData/Cache/`    | Cached data (persistant)                     |
| `AppData/Config/`   | Project configurations                       |
| `AppData/Database/` | Databases                                    |
| `AppData/Runtime/`  | Data needed at runtime                       |
| `AppData/Tmp/`      | Temporary data (removed at application exit) |