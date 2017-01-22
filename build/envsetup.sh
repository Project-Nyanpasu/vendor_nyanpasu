#
# Copyright (C) 2022 The Project Nyanpasu
#
# SPDX-License-Identifier: Apache-2.0
#

function __print_nyanpasu_functions_help() {
cat <<EOF
Additional Nyanpasu functions:
- mka:             Builds using SCHED_BATCH on all processors.
EOF
}

function mka() {
    m -j "$@"
}
