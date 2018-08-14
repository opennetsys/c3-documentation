all:
	@echo "no default"

.PHONY: install
install:
	@bundle install

.PHONY: serve
serve:
	@middleman serve

.PHONY: build
build:
	@middleman build

.PHONY: ipfs/add
ipfs/add:
	@ipfs add -r build/

.PHONY: ipfs/key
ipfs/key:
	@ipfs key gen c3docs --type=rsa --size=2048

#DNS TXT: dnslink=/ipns/QmaE6E1GCRqnMiFm3MJ4rf5WZzgp93qZdT6fMU4nAQtA85
.PHONY: ipfs/publish
ipfs/publish:
	@ipfs name publish --key=c3docs /ipfs/QmUbSopPZU5DGMLqjhCN9cxRCqVV4hQYKuTWh3D7fE46G9

.PHONY: ipfs/resolve
ipfs/resolve:
	@ipfs name resolve QmaE6E1GCRqnMiFm3MJ4rf5WZzgp93qZdT6fMU4nAQtA85

.PHONY: normalize
normalize:
	# replaces text "javascript--nodejs" with "nodejs"
	@find "./" -name "*.md" -print0 | xargs -0 perl -pi -e "s/javascript--nodejs/nodejs/g" && echo 'done'
	# :%s/http:\/\/localhost:8000\/\/v1\//https:\/\/api\.c3labs\.io\/v1/
