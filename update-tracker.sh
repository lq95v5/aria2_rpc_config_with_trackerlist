#!/bin/bash
# set your home dir
homedir=/home/bart

# Define the URL of trackerlist then download
trackerslist=https://ngosang.github.io/trackerslist/trackers_all_ip.txt
wget ${trackerslist}  -O /tmp/trackers_best.txt

# Delete the bt-tracker in the original aria2 configuration file
sed '/bt-tracker/d' -i ${homedir}/.aria2/aria2.conf

# Apply new bt-tracker
sed -e '/^$/d' /tmp/trackers_best.txt | tr '\n' ',' | sed -e 's/.$//' -e 's/^/bt-tracker=/g' >> ${homedir}/.aria2/aria2.conf

# Install cron jobs
sudo sed -n '1,13p' $0 > /etc/cron.weekly/update-tracker.sh
