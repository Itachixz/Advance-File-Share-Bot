if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Tunefilesharing/Tune-File-Sharing /Tune-File-Sharingelse
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Advance-File-Share-Bot
fi
cd /Tune-File-Sharing
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
