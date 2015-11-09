current=$(ruby -e "$: << '.'; require 'lib/finances/version.rb'; puts Finances::VERSION")

echo "Bumpin to: $current"
git tag $current
git push --tags origin master
