const semverRegex = require('semver-regex');
const semver = require('semver');
const colors = require('colors');

const currentNodeVersion = semver.major(process.version).toString();
const targetNodeVersion = process.argv[2];

if (currentNodeVersion != targetNodeVersion) {
  const shelljs = require('shelljs');

  shelljs.exec(
    `brew unlink node@${currentNodeVersion} && brew link node@${targetNodeVersion} --force`
  );
  shelljs.echo('\nCurrent Node version:'.green);
  shelljs.exec('node -v');
}
