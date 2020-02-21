
echo "Setting npm permissions"
sudo chown -R $USER:$(id -gn $USER) $HOME/.config

echo "Installing the latest npm globally"
npm install npm@latest -g

echo "Downloading npm clis"
npm install -g svgo
npm install -g eslint




