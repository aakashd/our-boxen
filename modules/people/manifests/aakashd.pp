class people::aakashd {

  notify { 'class people::aakashd declared': }
  
  include people::aakashd::applications
  
  # dock customization
  include osx::dock::autohide
  include osx::dock::dim_hidden_apps
  include osx::dock::hide_indicator_lights
  
  # universal access settings
  include osx::universal_access::ctrl_mod_zoom
  include osx::universal_access::enable_scrollwheel_zoom
  
  # disable downloaded app quarantine
  include osx::disable_app_quarantine

  ##################################
  ## Facter, Puppet, and Envpuppet##
  ##################################

  repository { "${::boxen_srcdir}/puppet":
    source => 'puppetlabs/puppet',
  }

  repository { "${::boxen_srcdir}/facter":
    source => 'puppetlabs/facter',
  }

  file { '/bin/envpuppet':
    ensure  => link,
    mode    => '0755',
    target  => "${::boxen_srcdir}/puppet/ext/envpuppet",
    require => Repository["${::boxen_srcdir}/puppet"],
  }
}