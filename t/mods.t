# $Id: mods.t 1.6 Tue, 09 Sep 1997 17:07:06 -0400 jesse $ -*- Perl -*-

use strict;

# Sort of sneaky.
use mods q{			# Leading & trailing w.s.
  $sample,			# Extra comment
  $sample2;
  {$VERSION=17}
  Test::Helper
};

test {
  comm 'Dividing 5/2';
  my $foo=5/2;
  ok $foo==2;
  no integer;
  ok $VERSION > 0;
  comm 'Using $sample';
  $sample=5;
  ok $sample==5;
};
