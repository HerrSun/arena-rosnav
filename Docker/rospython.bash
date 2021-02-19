sleep 10
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
roscd arena_local_planner_drl
sleep 1
python scripts/training/train_agent.py --agent ${AGENT_NAME} --config ${CONFIG_FILE}

    # source "/root/.python_env/rosnav/bin/activate"
    # cd /root/catkin_ws/src/arena-rosnav/arena_navigation/arena_local_planner/learning_based/arena_local_planner_drl/scripts/training
    # python train_agent.py --agent ${AGENT_NAME} --config ${CONFIG_FILE}