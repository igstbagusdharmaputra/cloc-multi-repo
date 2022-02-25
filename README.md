# Count lines of code

Counts lines of code Multi Repo Git.


## Prerequisite

- [cloc](https://github.com/AlDanial/cloc) is available on the path 

## Usage

### 1. Create Image Docker Cloc
docker build -t imagename:tagname .

### 2. Run Container 
docker run --rm  -it --net=host -v ${pwd}:/data imagename:tagname /bin/bash

### 3. Create list of repos
Store list of repositories in a file. See [list/repolist.txt](list/repolist.txt) for an list.

### 4. Configure base Git URL 
Open `clone_or_pull.sh` and configure `GIT_URL` with correct git base url example https://github.com/igstbagusdharmaputra.

### 5. Clone Git repositories
Run `clone_repos.sh < list/repolist.txt`

### 6. Generate cloc reports
Run `cloc_repos.sh < list/repolist.txt`

### 7. Get All reports
Run `getallreports.sh`

Results file (sumofrepos.lang) and one by project (sumofrepos.file).
