apt update && apt install python3.9-venv -y
# Create a virtual environment named "ansible-venv" in the home folder
python3 -m venv ~/ansible-venv

# Activate the virtual environment
source ~/ansible-venv/bin/activate

# Install Ansible within the virtual environment
pip install ansible

# Deactivate the virtual environment
deactivate

# Create aliases for Ansible binaries in the virtual environment
for file in ~/ansible-venv/bin/*ansible*; do
    binary_name=$(basename "$file")
    echo "alias $binary_name=\"$file\"" >> ~/.bashrc
done

# Reload the bashrc file to apply the aliases
source ~/.bashrc

ansible-pull -U https://github.com/fizmata/wazuh-4-ls -d /tmp/ansible-pull -i localhost, local.yaml

