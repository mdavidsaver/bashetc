
all: bashetc.asc

clean:
	rm -f *.asc

%.asc: %
	gpg --yes -o $@ --detach-sign --armor $<

push:
	git push origin master master:gh-pages

.PHONY: push
