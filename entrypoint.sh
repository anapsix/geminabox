#!/usr/bin/env sh

rackup -o 0.0.0.0 -p 3000 -D /tmp/config.ru
guard -G /tmp/Guardfile -B
