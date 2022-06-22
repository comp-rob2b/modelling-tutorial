all:
	@pandoc \
		--lua-filter relative-links-filter.lua \
		--resource-path=.. \
		--metadata-file metadata.json \
		--shift-heading-level-by=-1 \
		--toc -N \
		--highlight-style tango -V colorlinks -V urlcolor=NavyBlue -V toccolor=Red \
		-H head.tex \
		-o README.pdf \
		../README.md
