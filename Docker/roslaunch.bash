# In the ~/.bashrc
export WORKON_HOME=/root/.python_env
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /opt/ros/melodic/setup.bash
source /usr/local/bin/virtualenvwrapper.sh
source /root/catkin_ws/devel/setup.bash
export PYTHONPATH=//geometry2_ws/devel/lib/python3/dist-packages:${PYTHONPATH}
export PYTHONPATH=/root/catkin_ws/src/arena-rosnav/:${PYTHONPATH}

source "/root/.python_env/rosnav/bin/activate"
sleep 1
roslaunch arena_bringup start_training.launch num_envs:=${NUM_SIM_ENVS} map_folder_name:=${MAP_FOLDER}
