#!/QOpenSys/usr/bin/qsh
#----------------------------------------------------------------
# Script name: getrepo.sh
# Author: Richard Schoen
# Purpose: Get MOBIQSH repo and build the MOBIQSH library.
# **WARNING** - Make sure to back up existing MOBIQSH library instances 
#               before running build.sh
#               Existing MOBIQSH library will be cleared by build.sh.
#----------------------------------------------------------------
INSTALLTEMP="/tmp"
INSTALLMOBIQSH="/tmp/MobiQsh"
REPONAME="https://github.com/richardschoen/MobiQsh.git"

# Create temp download IFS location
mkdir ${INSTALLTEMP}
cd /${INSTALLTEMP}
# Clone the repo via git to temporary download location
git -c http.sslVerify=false clone --recurse-submodules ${REPONAME}

# Change to IFS temp download directory for repo and call build.sh to create library
cd ${INSTALLMOBIQSH}
bash build.sh
# After installation you can manually delete the IFS directory /tmp/QshOni
