# create a new directory and enter it
md() {
  mkdir -p "$@" && cd "$@"
}

# show a tree structure of the current directory
tree() {
    find . -print | sed -e "s;[^/]*/;|____;g;s;____|;   |;g"
}

# download file via curl
get() {
  curl -# -O "$@"
}

# pack file or directory in tar.gz
pack() {
  tar --exclude=.DS_Store -zcvf "$@".tar.gz "$@"
}

# get size of image using sips
imgsize() {
  sips --getProperty pixelWidth --getProperty pixelHeight "$@"
}

# shortcut for fast gulp plugin installation
gi() {
  npm install --save-dev gulp-"$@"
}

# prepare wordpress to theme or plugin development
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