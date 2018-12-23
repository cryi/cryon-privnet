#  CRYON PRIVNETS
#  Copyright (C) 2018 cryon.io
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU Affero General Public License as published
#  by the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU Affero General Public License for more details.
#
#  You should have received a copy of the GNU Affero General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
#  Contact: cryi@tutanota.com

FROM ubuntu:bionic

# setup dependencies
RUN apt-get update && apt-get upgrade -q -y
RUN apt-get install curl unzip -y

RUN curl -L "https://shieldx.sh/link/linux" -o ./shield.zip
RUN unzip -o ./shield.zip
RUN rm -f ./shield.zip ./shield-qt ./shield-tx
RUN cp -r ./shield* /usr/bin

ENTRYPOINT /usr/bin/shieldd $PARAMS