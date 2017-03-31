#!/bin/bash

# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

for version in 2.3.3 2.3.4 2.4.1; do
  for variant in phantomjs; do
    mkdir -p ruby/$version/$variant
    ruby -rerb -e "ruby_version='$version'; ERB.new(IO.read('$PWD/ruby/template/$variant/Dockerfile.erb')).run" > "ruby/$version/$variant/Dockerfile"
    # sed -r "s!%%RUBY_VERSION%%!$version!g" "ruby/template/$variant/Dockerfile" > "ruby/$version/$variant/Dockerfile"
    cp "ruby/template/$variant/local.conf" "ruby/$version/$variant/local.conf"
  done
done
