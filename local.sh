#!/bin/bash
set -e -o pipefail
trap '[ "$?" -eq 0 ] || echo "Error Line:<$LINENO> Error Function:<${FUNCNAME}>"' EXIT

cd `dirname $0`
CURRENT=`pwd`

function test
{
   go test -bench=. $(go list ./... | grep -v vendor) -benchmem
   go test -v $(go list ./... | grep -v vendor) --count 1 -race -coverprofile=$CURRENT/coverage.txt -covermode=atomic
}

function codecov
{
   /bin/bash <(curl -s https://codecov.io/bash)
}

CMD=$1
shift
$CMD $*