#!/bin/bash

export DOT_HOME=${HOME}/dotfiles

mkdir -p ${DOT_HOME}/old
mv ${HOME}/.bashrc ${DOT_HOME}/old/bashrc_bak
mv ${HOME}/.vim ${DOT_HOME}/old/vim_old
mv ${HOME}/.vimrc ${DOT_HOME}/old/vimrd_old
mv ${HOME}/.gitconfig ${DOT_HOME}/old/gitconfig_old

ln -s ${DOT_HOME}/bash/bashrc ${HOME}/.bashrc
ln -s ${DOT_HOME}/vim/vimrc ${HOME}/.vimrc
ln -s ${DOT_HOME}/vim ${HOME}/.vim
ln -s ${DOT_HOME}/git/gitconfig ${HOME}/.gitconfig
