RAILS_ROOT = File.join( File.dirname(__FILE__), "..", "..", ".." ) unless defined? RAILS_ROOT

require "fileutils"

# Copy *.png icons to the public folder
source = File.join File.dirname(__FILE__), "icons"

target = File.join RAILS_ROOT, "public", "images"
FileUtils.mkdir target unless File.exist? target

puts "Copying icons directory to public/images folder ..."
FileUtils.cp_r source, target
puts "#{Dir[source].size} icons installed"