#!/usr/bin/env rake

# config
cheatsheet_repo = "~/cheat/wiki/"
cheatsheet_repo_url = 'git://github.com/weakish/cheat.wiki.git'
install_prefix = "~/bin/"


desc 'install cheat and init cheatsheet repo'
task :install do
  sh "echo hi"
  puts 'synchronize cheatsheets...'
  directory cheatsheet_repo
  sh "cd #{cheatsheet_repo}"
  sh "git init & git pull #{cheatsheet_repo_url}"

  FileList['*.sh'].each do |command|
    output = install_prefix + command.pathmap("%n")
    sh "chmod 755 #{command}; cp #{command} #{output}"
  end

  puts "Please add `export CHEAT_REPO=\"#{cheatsheet_repo}\"` in shell init file, e.g. ~/.bashrc"
end

task :default => [:install]
