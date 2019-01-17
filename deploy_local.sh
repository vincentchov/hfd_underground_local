#!/bin/bash

project_dir=$HOME/workspace/hfd_underground_local
sudo rsync -auz ${project_dir}/hartfordunderground/* /opt/lampp/htdocs/hartfordunderground
sudo chmod -R 775 /opt/lampp/htdocs/hartfordunderground
sudo chown -R www-data:www-data /opt/lampp/htdocs/hartfordunderground
