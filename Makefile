
all: bashetc.asc

clean:
	rm -f *.asc

%.asc: %
	gpg --armor --yes -o $@ --detach-sign $<

push:
	git push origin master master:gh-pages

.PHONY: push
