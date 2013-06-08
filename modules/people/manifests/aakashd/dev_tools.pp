class people::aakashd::dev_tools {

  notify { 'class people::aakashd::dev_tools declared': }

  # include android::sdk 
  # include android::ndk
  
  $home = "/Users/${::boxen_user}"
  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"

  repository { $dotfiles_dir:
    source => "${boxen::config::login}/dotfiles",
	path => "${$dotfiles_dir}"
  }

  exec { "install dotfiles":
    cwd      => $dotfiles_dir,
    command  => "./install",
    provider => shell,
    creates  => "${home}/.zshrc",
    require  => Repository[$dotfiles_dir]
  }
}
