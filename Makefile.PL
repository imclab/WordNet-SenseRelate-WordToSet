use 5.006;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'WordNet::SenseRelate::WordToSet',
    VERSION_FROM      => 'lib/WordNet/SenseRelate/WordToSet.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    EXE_FILES         => [ ], # e.g., [utils/do_something.pl]
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/WordNet/SenseRelate/WordToSet.pm', # retrieve abstract from module
       AUTHOR         => 'Jason Michelizzi <jmichelizzi at users.sourceforge.net>') : ()),
);
