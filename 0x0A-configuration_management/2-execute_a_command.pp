# Kills a process named killmenow using pkill

exec { 'killmenow':
  command => 'pkill -f killmenow',
  path    => '/usr/bin:/bin',
  returns => [0, 1]
}
