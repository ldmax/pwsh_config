# jump through bastion machine to target machine
Function jump {
  # NOTE: $server should be only server number
  # e.g. $server=4746, means ssh to deda1x4746
  Param ($server)
  ssh -J nxuser m310131@deda1x$server
}


# use notepad++ to open file
Function npp {
  Param ($file)
  C:/"Program Files"/Notepad++/notepad++.exe $file
}


## shortcut for scp to nxuser ~
Function upload {
  # remote_home_path is relative path to home
  # e.g. $remote_home_path=bin means ~/bin
  Param ($local_file, $remote_home_path)
  scp $local_file m310131@nxuser:~/$remote_home_path
}

## shortcut for scp from nxuser ~ to .
## remote file path should be ~/tmp/
Function download {
  # remote_regex is regex to match files 
  Param ($remote_regex)
  scp m310131@nxuser:~/tmp/$remote_regex .
}

