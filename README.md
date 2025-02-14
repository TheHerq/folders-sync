# Sync folders script
> [!NOTE]  
> This script is designed to make it easier to sync between folders on macOS.  

> [!CAUTION] 
> This version is still poorly tested, so do not use it for folders with important data.  

First, change the paths of the folders you want to sync.  

`source_posts` is a variable storing the path to the folder with the source files.  
In my case I'm using a folder in [Obsidian](https://obsidian.md/) vault that's locate on my iCloud drive.  
```
source_posts=~/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/YOUR-VAULT/YOUR-POSTS-FOLDER
```
If your source folder is somewhere else on the disk then you must provide the full path to it.  
For example:  
```
source_posts=~/YOUR-FOLDER/YOUR-POSTS-FOLDER
```


`target_posts` is a variable storing the path to the folder with the target files.
```
target_posts=~/YOUR-LOCAL-REPO/YOUR-POSTS
```

I use the 'POSTS-FOLDER' formula because I use this script to sync my [Obsidian](https://obsidian.md/) notes with my blog repository.  

The same applies to `source_media` and `target_media`  

The script works by checking the contents of the 'target' folder and comparing it with the 'source' folder, if the 'source' folder contains files that are not in the 'target' folder it copies them to it.  

