# Clean up previous distributions
rm -rf dist
rm -rf build

# Variables
NGC="node node_modules/.bin/ngc"
ROLLUP="node node_modules/.bin/rollup"

# Run Angular Compiler
$NGC -p src/tsconfig-build.json
# Rollup caetvic-buttoner.js
$ROLLUP build/caetvic-buttoner.js -o dist/caetvic-buttoner.js -f es

# Repeat the process for es5 version
$NGC -p src/tsconfig-es5.json
$ROLLUP build/caetvic-buttoner.js -o dist/caetvic-buttoner.es5.js -f es

# Copy non-js files from build
rsync -a --exclude=*.js build/ dist

# Copy library package.json and README.md
cp src/package.json dist/package.json
cp README.md dist/README.md