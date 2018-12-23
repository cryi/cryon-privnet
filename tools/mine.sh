#!/bin/sh

# CRYON PRIVNETS
# Copyright (C) 2018 cryon.io
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
# 
# Contact: cryi@tutanota.com

BASEDIR=$(dirname "$0")
COUNT=1
if [ ! -z "$1" ]; then 
    COUNT=$1 
fi
container=$(docker-compose -f $BASEDIR/../docker-compose.yml ps -q pool)
docker exec $container /usr/bin/shield-cli -rpcport=20000 -rpcuser=user -rpcpassword=pass -datadir=/data/ generate $COUNT -1