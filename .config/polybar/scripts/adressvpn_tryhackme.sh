#!/bin/bash
#
#   copyvpn_tryhackme: Copy VPN adress of the plataform TryHackMe.
#
#   Copyright (©) 2021 Daniel Hoffman <https://twitter.com/Zeta_0x00>
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

TUN=$(/usr/sbin/ifconfig tun0 2>/dev/null )

if [ "$TUN" != "" ]; then
	echo "%{F#1#EC0101bbf3e}摒%{u-} %{F#FFFFFF}$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')"
else
	echo "%{F#EC0101}摒%{u-} %{F#FFFFFF}Disconnected"
fi
