apt update && apt install python3.9-venv -y
# Create a virtual environment named "ansible-venv" in the home folder
python3.9 -m venv /opt/ansible-venv

# Activate the virtual environment
source /opt/ansible-venv/bin/activate

# Install Ansible within the virtual environment
pip install ansible

# Deactivate the virtual environment
deactivate

export MANAGER_IP="135.181.124.121"
export WAZUH_MANAGER="135.181.124.121"

/opt/ansible-venv/bin/ansible-pull -U https://github.com/fizmata/wazuh-4-ls -d /tmp/ansible-pull -i localhost, local.yaml

