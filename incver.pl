#!/usr/bin/perl -i.bak
while(<>) {
  s/^(\s*\$VERSION\s*=\s*"\d+\.\d+\.)(\d+)(.*)$/$1 . ($2 + 1) . $3/e;
  print;
}
