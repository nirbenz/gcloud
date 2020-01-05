#!/usr/bin/env bash

echo Fixing scikit-learn version
# change to 1.2.1
conda install -c anaconda scipy=1.2.1

# begin original stuff
echo Running CS231n setup ...
jupyter notebook --generate-config
cp -f ./jupyter_notebook_config.py ~/.jupyter/
echo Please set a password for your Jupyter notebook
python -m notebook.auth password
sudo chmod -R 777 /opt
echo Installing Tensorflow 2.0 ...
pip install tensorflow-gpu==2.0.0-alpha0
echo Setup finished.
