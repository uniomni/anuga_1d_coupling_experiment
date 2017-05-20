# Installation instructions
# Assumptions:
# - GitHub account exists


# Create workspace
mkdir ~/sandpit

# Install git
sudo apt-get install git

# Setup GitHub SSH keeys
ssh-keygen -t rsa -b 4096 -C "<email address>"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub


# Install ANUGA as per docs

# Install SWIMM as per Stephen's instructions

git clone https://github.com/stoiver/Stormwater-Management-Model
cd Stormwater-Management-Model

# Switch Branch
git checkout toolkitapi

# Make shared library
cd build/Linux/
make libswmm5.so
make swmm5
sudo make install
