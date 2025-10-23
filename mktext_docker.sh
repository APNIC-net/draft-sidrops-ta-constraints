#!/bin/bash
DRAFT="draft-nro-sidrops-ta-consensus-00"

docker run --rm \
    -v "$PWD":/rfc \
    -v $HOME/.cache/xml2rfc:/var/cache/xml2rfc \
    -w /rfc \
    paulej/rfctools \
    mmark $DRAFT.md > $DRAFT.xml


docker run --rm \
    -v "$PWD":/rfc \
    -v $HOME/.cache/xml2rfc:/var/cache/xml2rfc \
    -w /rfc \
    paulej/rfctools \
    xml2rfc --text --html --pdf $DRAFT.xml
