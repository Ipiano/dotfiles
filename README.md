# Ubuntu Bootstrap

Dotfiles for setting up a new Ubuntu-based distro

Inspired by https://github.com/Notgnoshi/dotfiles

# Usage

Run `setup.sh`. That's it. If you only want to set up one portion, pass that
item as the first argument (e.g. setup.sh bash)

# Layout

## setup.d
Sub-scripts executed by the top-level `setup`

## boostrap
Functions and environment variables that need to be set for the duration of the setup

## Everything Else
Ancillary files used by the scripts in setup.d; typically they just get copied
into the system.
