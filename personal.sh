# Homebrew
# ---------------
if [[ ! -e /usr/local/Caskroom/sogouinput ]]; then
  brew cask install sogouinput
  sogou_base="/usr/local/Caskroom/sogouinput"
  sogou_version="$sogou_base/"`ls "$sogou_base"`
  sogou_app="$sogou_version/"`ls $sogou_version | grep .app | tail -n 1`
  open "$sogou_app"
fi
# Zip tool
brew cask install the-unarchiver

# Install applications
# ---------------

# Install Charles
if [[ -e /Applications/Charles.app ]]; then
    echo "You have installed Charles"
else
    if [[ ! -e $HOME/Downloads/Charles.app.zip ]]; then
        curl "http://p2w4johvr.bkt.clouddn.com/Charles.app.zip" -o ~/Downloads/Charles.app.zip
    fi

    unzip -q $HOME/Downloads/Charles.app.zip -d /Applications
    rm $HOME/Downloads/Charles.app.zip
fi


printf "If you have some personal installation steps, you can add them in ~/.macbootstrap/personal.sh\n"
