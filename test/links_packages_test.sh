. assert.sh

mkdir ".test"
touch ".test/file"

assert_raises "../bin/gpm-link add github.com/test/package .test"
assert "test -d .godeps/src/github.com/test/package"
assert "test -d .godeps/src/github.com/test/package/file"

assert "../bin/bpm-link del github.com/test/package"
assert_raises "test -d .godeps/src/github.com/test/package" 1

rm -rf .test .godeps

assert_end examples
