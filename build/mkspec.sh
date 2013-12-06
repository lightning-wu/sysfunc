#
# Copyright 2010 - Francois Laupretre <francois@tekwire.net>
#
#=============================================================================
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License (LGPL) as
# published by the Free Software Foundation, either version 3 of the License,
# or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#=============================================================================

SOFTWARE_NAME=sysfunc

CMD=`basename $0`
cd `dirname $0`/..
BASE_DIR=`/bin/pwd`
SOFTWARE_VERSION="$1"
INSTALL_DIR="$2"
TARGET=$BASE_DIR/$SOFTWARE_NAME.spec

export BASE_DIR SOFTWARE_VERSION INSTALL_DIR

sed -e "s,%SOFTWARE_VERSION%,$SOFTWARE_VERSION,g" \
	-e "s,%INSTALL_DIR%,$INSTALL_DIR,g" \
	<$BASE_DIR/build/$SOFTWARE_NAME.spec.in >$TARGET

###############################################################################
