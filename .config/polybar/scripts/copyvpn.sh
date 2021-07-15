#!/bin/bash
#
#   copyvpn: Copy VPN adress.
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
	echo -n $(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}') | xclip -sel clipboard
else
	echo -n "Disconnected" | xclip -sel clipboard
fi
