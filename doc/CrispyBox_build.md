# The CrispyBox_build script

The CrispyBox_build script is used to build a fully functional CrispyBox environment.

The current version of CrispyBox_build - `v23.12` - does the following

CrispyBox_bedrock:

- Creates required CrispyBox directory structure
- Removes the `sudo` password requirement for the `crispybox` user
- Modifies the MOTD
- Updates the system
- Cleans the system

## Run the CrispyBox_bedrock script

Start the CrispyBox VM, then type:

`wget https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_bedrock.sh`

`chmod +x CrispyBox_bedrock.sh`

`./CrispyBox_bedrock.sh`

***

**NEXT** > [CrispyBox_build](Create-CrispyBox-build.md)
