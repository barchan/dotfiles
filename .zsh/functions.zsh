# Create a new directory and enter it.
md() {
	mkdir -p "$1" && cd "$1"
}

# Generate a random password.
genpass() {
	openssl rand -base64 32 | tr -d '=/+' | cut -c 1-16 | tr -d '\n' | pbcopy
}

# Pack file or directory in tar.gz.
pack() {
	tar --exclude=.DS_Store -zcvf "$1".tar.gz "$1"
}

# Get size of image using Sips.
imgsize() {
	sips --getProperty pixelWidth --getProperty pixelHeight "$1"
}

# Running DLNA server via MiniDLNA.
dlna_start() {
	minidlnad -R \
		-f ~/.config/minidlna/minidlna.conf \
		-P ~/.config/minidlna/minidlna.pid
}

dlna_stop() {
	pkill minidlnad
}

# Shortcut for fast Gulp plugin installation.
gi() {
	npm install --save-dev gulp-"$1"
}

# Prepare WordPress to theme or plugin development.
wpgo() {
	curl -# https://wordpress.org/latest.tar.gz | tar --strip-components=1 -xzf -
	rm -rf wp-content/plugins/{akismet,hello.php} wp-content/themes/twenty*
}