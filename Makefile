# Build rootfs for phpmetrics

build:
	@docker run --rm \
		-v $(CURDIR)/runner:/runner \
		-v $(CURDIR)/build:/build \
		imega/base-builder \
		--packages=" \
			php7@community \
			php7-common@community \
			php7-phar@community \
			php7-mbstring@community \
			php7-json@community \
			php7-dom@community \
			php7-ctype@community \
			" \
		-d="curl"

test:
	@docker build -t imega/composer:test .
	@docker run --rm -v $(CURDIR):/data imega/composer:test install --ignore-platform-reqs

.PHONY: build
