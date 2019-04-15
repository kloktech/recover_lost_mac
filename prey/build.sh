#!/bin/bash

PACKAGE_IDENTIFIER=com.kloktech.pkg.prey

if [ -z "${PREY_API_KEY+x}" -o -z "${DEV_ID+x}" ]; then
  echo "Set PREY_API_KEY and DEV_ID variables in order to continue"
  exit 1
fi

# Replace Prey ID with environmental ID in postinstall script
sed -e "s/PREY_API_KEY/${PREY_API_KEY}/g" scripts/postinstall.template > scripts/postinstall

chmod a+x scripts/postinstall

# Build component package that installs prey with given API key
pkgbuild --identifier ${PACKAGE_IDENTIFIER} \
--nopayload \
--scripts scripts \
prey.pkg

# Build distribution plist needed for building the distribution archive
productbuild --synthesize --package prey.pkg distribution.plist

# Build distribution archive
productbuild --distribution distribution.plist --sign "${DEV_ID}" kt-monitor.pkg

rm -f prey.pkg distribution.plist
