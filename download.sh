#!/bin/bash

readonly DOWNLOADSPATH=~/Downloads
readonly APPLICATIONPATH=/Applications


if [ ! -e "${APPLICATIONPATH}/Flux.app" ]; then
  curl -o ${DOWNLOADSPATH}/Flux.zip https://justgetflux.com/mac/Flux.zip
  cd ${DOWNLOADSPATH}
  unzip Flux.zip &
  wait $!
  open Flux.app
fi
