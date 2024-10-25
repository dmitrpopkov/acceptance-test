#!/bin/bash

source /deckhouse/shell_lib.sh

function __main__() {
  enabled::disable_module_if_cluster_is_not_bootstraped
  enabled::disable_module_in_kubernetes_versions_less_than 1.23.0
  echo "true" > $MODULE_ENABLED_RESULT
}

enabled::run $@