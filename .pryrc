# === EDITOR ===
Pry.config.editor = 'vim'

# == Pry-Nav - Using pry as a debugger ==
Pry.commands.alias_command 'c', 'continue' rescue nil
Pry.commands.alias_command 's', 'step' rescue nil
Pry.commands.alias_command 'n', 'next' rescue nil
Pry.commands.alias_command 'r!', 'reload!' rescue nil

Pry.config.color = true

# $ gem install pry-theme
# $ mkdir -p ~/.pry/themes && cd ~/.pry/themes
# $ curl -O https://raw2.github.com/kyrylo/pry-theme-collection/master/ocean/ocean.prytheme.rb
# $ pry
# $ pry-theme install ocean
Pry.config.theme = 'ocean'

# === CUSTOM PROMPT ===
prompt = "ruby-#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}"
Pry.config.prompt = [
  proc { |obj, nest_level, _| "#{prompt} (#{obj}):#{nest_level} > " },
  proc { |obj, nest_level, _| "#{prompt} (#{obj}):#{nest_level} * " }
]

# === Listing config ===
# Better colors - by default the headings for methods are too
# similar to method name colors leading to a "soup"
# These colors are optimized for use with Solarized scheme
# for your terminal
Pry.config.ls.heading_color = :magenta
Pry.config.ls.public_method_color = :green
Pry.config.ls.protected_method_color = :yellow
Pry.config.ls.private_method_color = :bright_black

# Default Command Set, add custom methods here:
default_command_set = Pry::CommandSet.new do
  command 'copy', 'Copy to clipboard' do |str|
    str = "#{_pry_.input_array[-1]}#=> #{_pry_.last_result}\n" unless str
    IO.popen('pbcopy', 'r+') { |io| io.puts str }
    output.puts "-- Copy to clipboard --\n#{str}"
  end
end

# https://github.com/michaeldv/awesome_print/
# $ gem install awesome_print
#begin
#  require 'awesome_print'
#  Pry.config.print = proc { |output, value| output.puts value.ai(:indent => 2) }
#rescue LoadError => e
#  warn "[WARN] #{e}"
#  puts '$ gem install awesome_print'
#end

# Use Array.toy to get an array to play with
class Array
  def self.toy(n = 10, &block)
    block_given? ? Array.new(n, &block) : Array.new(n) { |i| i+1 }
  end
end

# Use Hash.toy to get an hash to play with
class Hash
  def self.toy(n = 10)
    Hash[Array.toy(n).zip(Array.toy(n){ |c| (96+(c+1)).chr })]
  end
end

# Launch Pry with access to the entire Rails stack.
rails = File.join(Dir.getwd, 'config', 'environment.rb')
if File.exist?(rails) && ENV['SKIP_RAILS'].nil?
  require rails
  case Rails.version.to_i
  when 2
    require 'console_app'
    require 'console_with_helpers'
  when 3, 4
    require 'rails/console/app'
    require 'rails/console/helpers'
    extend Rails::ConsoleMethods if Rails.version.to_f >= 3.2
  else
    warn '[WARN] cannot load Rails console commands'
  end
end

Pry.config.commands.import(default_command_set)
