#!/bin/bash

theme_name=understrap-child

# Source files
local_project_dir=$HOME/workspace/hfd_underground_local/hartfordunderground
source_dir=$local_project_dir/wp-content/themes/$theme_name

# Destination
destination_project_dir=hartfordunderground:/var/chroot/home/content/31/12228231/html/
destination=$destination_project_dir/wp-content/themes

# Files/Folders to leave our when syncing to the server
excluded_paths=node_modules

# Sync to the server
rsync -auvz $source_dir $destination --exclude=$excluded_paths
