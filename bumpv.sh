local current=ruby -e "$: << '.'; require 'lib/finances/version.rb'; puts Finances::VERSION"
git tag $current
git push --tags origin master

