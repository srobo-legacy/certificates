.PHONY: all clean

all: certificate.png certificate.pdf

certificate.png: certificate.svg
	inkscape -e $@ $?

certificate.pdf: certificate.svg
	inkscape -A $@ $?

clean:
	rm -f certificate.{pdf,png}
