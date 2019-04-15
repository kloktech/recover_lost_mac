#!/bin/bash

PACKAGE_IDENTIFIER=com.kloktech.pkg.hello

if [ -z "${DEV_ID+x}" ]; then
  echo "Set DEV_ID variables in order to continue"
  exit 1
fi

#--root empty \
# Build and sign the package
pkgbuild --identifier ${PACKAGE_IDENTIFIER} \
--nopayload \
--scripts scripts \
tmp.pkg

# Build distribution plist needed for building the distribution archive
productbuild --synthesize --package tmp.pkg distribution.plist

# Build distribution archive
productbuild --distribution distribution.plist --sign "${DEV_ID}" hello.pkg

rm -f tmp.pkg distribution.plist
