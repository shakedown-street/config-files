const { exec } = require("child_process");
const filewatcher = require('filewatcher');

const args = process.argv.slice(2);

const directoryMap = [
  {
    repo: './home/.config/i3/',
    system: '~/.config/i3/'
  },
  {
    repo: './home/.config/openbox/',
    system: '~/.config/openbox/'
  },
  {
    repo: './home/.config/tint2/',
    system: '~/.config/tint2/'
  },
  {
    repo: './home/.themes/',
    system: '~/.themes/'
  },
  {
    repo: './Backgrounds/',
    system: '~/Pictures/Backgrounds/'
  },
];

const fileMap = [
  {
    repo: './home/.Xresources', 
    system: '~/.Xresources',
  },
  {
    repo: './home/.vimrc', 
    system: '~/.vimrc',
  },
];

console.log(args);

function execCommand(command) {
  exec(command, (error, stdout, stderr) => {
    if (error) {
      console.log(`${command}: ${error.message}`);
      return;
    }
    if (stderr) {
      console.log(`${command}: ${stderr}`);
      return;
    }
    console.log(`${command}: ${stdout}`);
  });
}

function push() {
  directoryMap.forEach((directory) => {
    execCommand(`cp -R ${directory.repo}* ${directory.system}`);
  });
  fileMap.forEach((file) => {
    execCommand(`cp ${file.repo} ${file.system}`);
  });
  execCommand('xrdb ~/.Xresources');
}

function pull() {
  directoryMap.forEach((directory) => {
    execCommand(`cp -R ${directory.system}* ${directory.repo}`);
  });
  fileMap.forEach((file) => {
    execCommand(`cp ${file.system} ${file.repo}`);
  });
  execCommand('xrdb ~/.Xresources');
}

if (!args[0]) {
  console.log(`
  Usage:
    push - move files from the repo to the user's home directory
    pull - move files from the user's home directory into the repo
  `);
} else {
  switch (args[0]) {
    case 'watch':
      const watcher = filewatcher();
      directoryMap.forEach((directory) => {
        watcher.add(directory.repo);
      });
      fileMap.forEach((file) => {
        watcher.add(file.repo);
      });
      watcher.on('change', function(file, stat) {
        console.log('File modified: %s', file);
        push();
        if (!stat) console.log('deleted');
      });
      break;
    case 'push':
      push();
      break;
    case 'pull':
      pull();
      break;
  }
}
