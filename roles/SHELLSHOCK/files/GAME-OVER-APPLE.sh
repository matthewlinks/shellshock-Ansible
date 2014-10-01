#!/bin/bash
env '__BASH_FUNC<ls>()'="() { echo GAME OVER; }" /bin/bash -c ls
