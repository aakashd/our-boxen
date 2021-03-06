# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "2.3.2"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "gcc",        "1.0.0"
github "git",        "1.2.2"
github "homebrew",   "1.1.2"
github "hub",        "1.0.0"
github "inifile",    "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",      "1.4.0"
github "nodejs",     "2.2.0"
github "repository", "2.0.2"
github "ruby",       "4.1.0"
github "stdlib",     "4.0.2", :repo => "puppetlabs/puppetlabs-stdlib"
github "sysctl",     "1.0.0"
github "sudo",       "1.0.0"
github "osx",        "1.3.0"
github "zsh",        "1.0.0"
github "java",       "1.1.1"

# OSX configuration
github "property_list_key", "0.1.0"

# applications
github "chrome", "1.1.0" 
github "alfred", "1.1.0"
github "shortcat", "1.0.2"
github "firefox", "1.0.6"
github "dropbox", "1.1.0"
github "googledrive", "1.0.2"
github "vlc", "1.0.1"
github "flux", "0.0.1"
github "mou", "1.0.0"
github "adium", "1.1.1"
github "adobe_reader", "1.0.1"
github "textmate", "1.1.0"
github "skype", "1.0.2"
github "calibre", "0.0.3", :repo => "agilecoders/puppet-calibre"
github "evernote", "1.0.1", :repo => "jasonamyers/puppet-evernote"
github "limechat", "1.1.0", :repo => "dieterdemeyer/puppet-limechat"
github "libreoffice", "1.0.0", :repo => "jasonamyers/puppet-libreoffice"
github "transmission", "1.0.0"

# DB
github "mysql", "1.1.1"
github "postgresql", "1.0.1"

# dev tools
github "iterm2", "1.0.2"
github "vagrant", "2.0.7"
github "gitx", "1.2.0"
github "rubymine", "1.0.2", :repo => "aakashd/puppet-rubymine"
github "wget", "1.0.0"
github "screen", "1.0.0"
github "virtualbox", "1.0.3"
github "heroku", "2.0.0"
github "ctags", "1.0.0"
github "android", "1.0.0"

# utilities
github "sizeup", "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
