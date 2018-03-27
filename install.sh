#!/bin/bash

cd ..
rm ~/.factorio/mods/naturio*.zip
zip -r ~/.factorio/mods/naturio.0.1.0.zip naturio -x *.git* *.idea* *.iml naturio/install.sh
cd naturio