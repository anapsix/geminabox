# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
# directories %w(app lib config test spec features) \
#  .select{|d| Dir.exist?(d) ? d : UI.warning("Directory #{d} does not exist")}

## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), then you will want to move
## the Guardfile to a watched dir and symlink it back, e.g.
#
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
#
# and, you'll have to watch "config/Guardfile" instead of "Guardfile"

# Add files and commands to this file, like the example:
#   watch(%r{file/path}) { `command(s)` }
#

guard :shell, :all_on_start => true do
  watch(%r{^.*\.gemspec$}) { |m|
    specfile = m[0]
    gemfile = specfile.split('.').first + '_latest.gem'
    `gem build #{specfile} --output=#{gemfile}`
  }
  watch(%r{^.*\.gem$}) { |m|
    `gem inabox #{m[0]} --host http://localhost:3000`
  }
end
