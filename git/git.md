#### version control system:
Software which allows us to store code along with history is called as Version Control Systems.
#### git cheatsheet
1. git init - initialize an existing directory as a Git repository(initializes a new repository).
2. git add [file] - adds the changes from working tree to staging area.
3. status - shows the status of working tree and changes
4. commit - this command commits the changes from staging area to local repository.
5. log - shows the commits done in local repo.
* Create a folder in c drive and then create a sub folder in it..Then go to terminal `git init` this command initializes the git repo and change the directory to that folder.go to that folder from terminal by command `start.`now there create files over there.then git add . (or) "filename".git status to see the changes done in the working tree.then git `add .`to add changes to staging area.then git commit -m "added changes" to commit message to local repo.
* `git log` this commit shows all the commits done. Head always points to the latest commit. we can go back to the previous ones by `git checkout` command.
* `new-item` this command is useed to create new files. eg: .\subfoldername\filename.
* git add
* git add . adding all the changes relative to current directory
* git add -A add all the changes
* git add -u add only modified files
* git restore --staged filename to unstage
* working tree has modified files(git restore command is used) and untracked files(git clean -fd used to delete all the untracked files)
