#!/usr/bin/env bash
# This file is provided by the wikibase/wdqs docker image.

cd /wdqs

# TODO env vars for entity namespaces, scheme and other settings
/wait-for-it.sh $WIKIBASE_HOST:80 -t 300 -- \
/wait-for-it.sh $WDQS_HOST:$WDQS_PORT -t 300 -- \
./runUpdate.sh -h http://$WDQS_HOST:$WDQS_PORT -- --wikibaseHost $WIKIBASE_HOST --wikibaseScheme $WIKIBASE_SCHEME --entityNamespaces $WDQS_ENTITY_NAMESPACES