#!/bin/sh

IFACE=$(ifconfig | grep tun2 | awk '{print $1}' | tr -d ':')

if [ "$IFACE = tun2"];
then
	echo "%[F#1bbf3e] %{F#e2ee6a}${ifconfig tun2 | grep "inet " | awk '{print $2}'}"
else
	echo ":%{F#1bbf3e}%{u-}%{F -}:"
fi
