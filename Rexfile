use Rex -feature => ['1.4'];

# convert file contents to a string (thanks tim!)
sub file_to_string {
  open(DATA, "<@_[0]") or die "Can't open @_[0]";
  @lines = <DATA>;
  close(DATA);
  my $data = join("", @lines);
  $data =~ s/\n/ /g;
  return $data;
}

# task to set up doas-capable user with two params (user & pass)
task 'doas-user-setup', sub {
  my $params = shift;
  my $user = $params->{$user};
  my $pass = $params->{$pass};
  # Ensure :doas is present
  group "doas", ensure => "present";
  # Add $user with $pass
  account "$user",
  ensure => "present",
  uid => 1000,
  home => "/home/$user",
  expire => 'never',
  groups => [ 'izder456', 'operator', 'doas', 'staff' ],
  password => "$pass",
  create_home => TRUE;
}

# task to install ports from .pkglist
task 'install-ports', sub {
  my $params = shift;
  my $pkgfile = $params->${pkgfile};
  my $pkglist = file_to_string($pkgfile);
  # Install
  pkg [ $pkglist ], ensure => "present";
}

# task to install cargo-packages from .cargolist
task 'install-cargo', sub {
  my $params = shift;
  my $cargofile = $params->${cargofile};
  my $cargolist = file_to_string($cargofile);
  # Install
  system("cargo", "install", "$cargolist");
}
