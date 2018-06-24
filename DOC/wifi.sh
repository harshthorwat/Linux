git clone https://github.com/lwfinger/rtlwifi_new.git
cd rtlwifi_new
make
sudo make install
sudo modprobe -rv rtl8723be
sudo modprobe -v rtl8723be ant_sel=2
service NetworkManager restart
echo "options rtl8723be ant_sel=2" | sudo tee /etc/modprobe.d/50-rtl8723be.conf
