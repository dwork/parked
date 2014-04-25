#!/bin/bash
rm -rf modules themes libraries
drush make $1 --working-copy --no-core --contrib-destination=. parked.make
git checkout modules
#git checkout themes
