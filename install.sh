#!/usr/bin/env ruby
require 'fileutils'
include FileUtils

homedir = "/Users/#{ENV["USER"]}"
path = File.dirname(File.expand_path(__FILE__)) + "/"

local_confs = %w(gvimrc.after
		vimrc.after
		profile
		ackrc
		gitconfig
    bash-git-prompt
    janus
    gitignore)

to_link = Hash.new
local_confs.each do |f|
  to_link.store path + f, homedir + "/." + f
end
to_link["#{path}com.googlecode.iterm2.plist"] = "#{homedir}/Library/Preferences/com.googlecode.iterm2.plist"

to_link.each do |source,target|
  if File.symlink? target
    puts "#{source} already linked, nothing to do"
  else
    mv target, target + ".old" if File.exist? target
    ln_s source, target
    puts "#{source} linked"
  end
end
