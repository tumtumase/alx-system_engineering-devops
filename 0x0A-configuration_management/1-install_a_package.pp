# Install Flask from pip3 with specific version

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
