echo "Symlinking kak config"
mkdir -p ~/.config/kak/autoload
ln -s (pwd)/config/config.kak ~/.config/kak/autoload

echo "Installing plug.kak"
mkdir -p ~/.config/kak/plugins/
git clone https://github.com/andreyorst/plug.kak.git ~/.config/kak/plugins/plug.kak

