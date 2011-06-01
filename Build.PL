# Note: this file has been initially created by Make::Build::Convert 0.20_01

use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new
  (
   module_name => 'LaTeX::Pod',
   dist_author => 'Steven Schubiger <schubiger@cpan.org>',
   dist_version_from => 'lib/LaTeX/Pod.pm',
   requires => {
                 'boolean' => 0,
                 'Carp' => 0,
                 'Getopt::Long' => 0,
                 'LaTeX::TOM' => 0,
                 'Params::Validate' => 0,
               },
   build_requires => {
                       'File::Spec' => 0,
                       'FindBin' => 0,
                       'Test::More' => 0,
                     },
   recommends => {
                   'Test::Pod' => '1.14',
                   'Test::Pod::Coverage' => '1.04',
                 },
   script_files => [ 'scripts/latex2pod' ],
   license => 'perl',
   create_readme => 1,
   create_makefile_pl => 'traditional',
  );

$build->create_build_script;