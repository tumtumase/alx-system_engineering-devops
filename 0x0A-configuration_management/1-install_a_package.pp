# Installs Flask version 2.1.0 using pip3 provider

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}