all:
	flatpak-builder --force-clean --repo=repo drracket org.racket-lang.DrRacket.json

install:
	flatpak --user remote-add --no-gpg-verify --if-not-exists drracket-repo repo
	flatpak --user install drracket-repo org.racket_lang.DrRacket
