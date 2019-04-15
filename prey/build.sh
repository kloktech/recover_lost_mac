#!/bin/bash

if [ -z "${PREY_API_KEY+x}" -o -z "${DEV_ID+x}" ]; then
  echo "Set PREY_API_KEY and DEV_ID variables in order to continue"
  exit 1
fi

# Replace Prey ID with environmental ID
sed -e "s/PREY_API_KEY/${PREY_API_KEY}/g" scripts/postinstall.template > scripts/postinstall

chmod a+x scripts/postinstall

# Build and sign the package
pkgbuild --identifier com.kloktech.pkg.prey \
--root empty \
--scripts scripts \
--sign "${DEV_ID}" prey.pkg
