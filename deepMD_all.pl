=b
This script helps you download all repositories for deep leanring potential using deepmd-kit.

Make a folder for your study, and the put this script into this folder.
Perl deepMD_all.pl

The following folders you will get:
1. QE_from_MatCld: structures from materials project
2. make_B2_related_data: make your strutures with different compositional fractions.
3. make_surface_20240919: make surfaces with different surface orientations and different compositional fractions.

4. dp_train_new: get DLP for labeling or final DLP　training  
5. dp_train_label: do dpgen     
=cut

use strict;
use warnings;

my %process;
$process{make_surface} = "https://github.com/jushinpon/make_surface_20240919.git";
$process{materials_proj_structure} = "https://github.com/jushinpon/QE_from_MatCld.git";
$process{make_element_compositions} = "https://github.com/jushinpon/make_B2_related_data.git";
$process{label} = "https://github.com/jushinpon/dp_train_label.git";
$process{training} = "https://github.com/jushinpon/dp_train_new.git";
#$process{scaling} = preparing now!!!!

for my $key (keys %process){
    $process{$key} =~ m|.+/([^/]+)\.git$|;
    system("rm -rf $1");
    system("git clone $process{$key}");
}
