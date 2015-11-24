
all: bashetc.asc

clean:
	rm -f *.asc

%.asc: %
	gpg -o $@ --detach-sign --armor $<
