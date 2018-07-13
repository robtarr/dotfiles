#!/usr/bin/env node

const semver = require('semver');
const colors = require('colors');
const shelljs = require('shelljs');

if (process.argv[2]) {
  const currentNodeVersion = semver.major(process.version).toString();
  const targetNodeVersion = process.argv[2];

  if (currentNodeVersion != targetNodeVersion) {
    console.info('Switching Node');
    shelljs.exec(
      `brew unlink node@${currentNodeVersion} && brew link node@${targetNodeVersion} --force --overwrite &>/dev/null`
    );
  }
}

shelljs.echo('\nCurrent Node version:'.green);
shelljs.exec('node -v');
