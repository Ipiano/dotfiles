#!/bin/bash

# If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

# Source each of components in alphabetical order.
# This is where most of the customizations come from.
for conf in "${HOME}/.bashrc.d/"*; do
    [ -f "$conf" ] && source "$conf"
done
