#!/bin/bash
# move the existing (vulnerable versions) out of the way
cp /bin/bash /bin/bash.prev
cp /bin/sh /bin/sh.prev
# copy over the recompiled versions
cp BASH-COMPILE/bash-92/build/Release/bash /bin/
cp BASH-COMPILE/bash-92/build/Release/sh /bin/
# disable the previous versions
chmod a-x /bin/bash.prev /bin/sh.prev
