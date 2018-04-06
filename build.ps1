# Variables
$NGC="node_modules/.bin/ngc.cmd"
$ROLLUP="node_modules/.bin/rollup.cmd"

# Run Angular Compiler
& "$NGC" -p src/tsconfig-build.json

# Rollup caetvic-buttoner.js
& "$ROLLUP" build/caetvic-buttoner.js -o dist/caetvic-buttoner.js

# Run Angular Compiler to ES5
& "$NGC" -p src/tsconfig-es5.json

# Rollup caetvic-buttoner.js
& "$ROLLUP" build/caetvic-buttoner.js -o dist/caetvic-buttoner.es5.js

# Copy non-js files from build
Copy-Item -Exclude *.js -Recurse -Path build/* -Destination dist

# Copy library package.json
Copy-Item -Path src/package.json -Destination dist/package.json
Copy-Item -Path README.md -Destination dist/README.md