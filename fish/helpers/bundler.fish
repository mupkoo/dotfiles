set -l bundler_executables \
  guard \
  rake \
  rspec \
  rubocop \
  rails

for executable in $bundler_executables
  function $executable --inherit-variable executable
    if test -e Gemfile
      command bundle exec $executable $argv
    else
      command $executable $argv
    end
  end
end
