#!/bin/bash
set -e

bash $METEORD_DIR/base/scripts/lib/install_meteor.sh
bash $METEORD_DIR/base/scripts/lib/build_app.sh
