# git

Install gnome-keyring for git credetials:
```bash
sudo apt install -y make gcc libsecret-1-0 libsecret-1-dev
cd /usr/share/doc/git/contrib/credential/libsecret
sudo make
```
For finish uncomment the `[credential]` .gitconfig part.
