pkg = $(shell grep -i ^package DESCRIPTION | cut -d : -d \  -f 2)
dir = '../$(pkg)'

munge:
	R CMD BATCH raw_data/munge.R

document:
	R -e "devtools::document($(dir))"

install: document
	R CMD INSTALL --no-multiarch --with-keep.source $(dir)

cleanrebuild:
	R CMD INSTALL --preclean --no-multiarch --with-keep.source $(dir)
