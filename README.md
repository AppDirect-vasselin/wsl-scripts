# wsl-scripts

**Prerequisites**
- Create your private key and copy it on the server
- Use `/www` as the root of the git projects.
  - Example: `/www/itcloud-web-platform`

**Setup**
- Copy config.sh.example and change values to your own
- `chmod +x wsl-scripts/rsync_dev/rsync_dev.sh`
- You might want to script an alias in your `~/.bash_aliases` to easily sync
  - `alias rsync-dev="~/wsl-scripts/rsync_dev/rsync_dev.sh"`