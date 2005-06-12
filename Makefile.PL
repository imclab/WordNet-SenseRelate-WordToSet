# $Id: Makefile.PL,v 1.2 2005/06/12 02:58:35 jmichelizzi Exp $
use strict;
use warnings;

use 5.006;
use ExtUtils::MakeMaker;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'WordNet::SenseRelate::WordToSet',
    VERSION_FROM      => 'lib/WordNet/SenseRelate/WordToSet.pm', # finds $VERSION
    PREREQ_PM         => {'WordNet::QueryData' => 1.37,
		          'WordNet::Similarity' => 0.08},
    EXE_FILES         => ['utils/wordtoset.pl'],
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/WordNet/SenseRelate/WordToSet.pm', # retrieve abstract from module
       AUTHOR         => 'Jason Michelizzi <jmichelizzi at users.sourceforge.net>') : ()),
);
