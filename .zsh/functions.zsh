# Create a New Directory and Enter it
md() {
  mkdir -p "$1" && cd "$1"
}

# Show a Tree Structure of the Current Directory
tree() {
  find . -print | sed -e "s;[^/]*/;|____;g;s;____|;   |;g"
}

# Download File via Curl
get() {
  curl -# -O "$1"
}

# Recursively Remove All .DS_Store Files
rmds() {
  find . -name '.DS_Store' -type f -delete
}

# Pack File or Directory in tar.gz
pack() {
  tar --exclude=.DS_Store -zcvf "$1".tar.gz "$1"
}

# Get Size of Image Using Sips
imgsize() {
  sips --getProperty pixelWidth --getProperty pixelHeight "$1"
}

# Running DLNA server via MiniDLNA
dlna_start() {
  minidlnad -R \
    -f ~/.config/minidlna/minidlna.conf \
    -P ~/.config/minidlna/minidlna.pid
}

dlna_stop() {
  pkill minidlnad
}

# Shortcut for Fast Gulp Plugin Installation
gi() {
  npm install --save-dev gulp-"$1"
}

# Prepare WordPress to Theme or Plugin Development
wpgo() {
  curl -# -O https://wordpress.org/latest.tar.gz
  tar xzf latest.tar.gz
  mv wordpress/* .
  rm -rf \
    wordpress \
    latest.tar.gz \
    license.txt \
    readme.html \
    wp-content/plugins/{akismet,hello.php} \
    wp-content/themes/twenty*
}