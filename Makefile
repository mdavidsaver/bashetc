
all: bashetc.asc

clean:
	rm -f *.asc

%.asc: %
	gpg --yes -o $@ --detach-sign --armor $<
