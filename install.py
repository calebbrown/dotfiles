#!/usr/bin/env python

import os
import sys

HOME = os.getenv("HOME")
BASEPATH = os.path.realpath(os.path.dirname(__file__))

# Files to exclude from symlinking
BLACKLIST = [
    ".git",
    "README.md",
    "LICENSE",
    os.path.basename(__file__),
]

def include_path(path):
  return path and path[0] != '.' and path not in BLACKLIST

def find_paths_to_link():
  paths = os.listdir(BASEPATH)
  return [path for path in paths if include_path(path)]

def link(path, force=False):
  source_file = os.path.join(BASEPATH, path)
  dest_file = os.path.join(HOME, "." + path)

  if not force and os.path.exists(dest_file):
    print("%s already exists - skipping." % dest_file)
    return

  print "'%s' -> '%s'" % (source_file, dest_file)
  os.symlink(source_file, dest_file)

def die(message, code=1):
  sys.stderr.write("ERROR - ")
  sys.stderr.write(message)
  sys.stderr.write("\n")
  sys.exit(code)

def main():
  if HOME is None:
    die("HOME is not set in the environment.")

  paths = find_paths_to_link()
  if not paths:
    die("No files found to link")

  for path in paths:
    link(path)

if __name__ == "__main__":
    ret = main()
    if ret:
      sys.exit(ret)

