use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME         => 'Business::CCCheck',
    ABSTRACT     => 'collection of functions for checking credit card numbers',
    DISTNAME     => 'Business-CCCheck',
    VERSION_FROM => 'lib/Business/CCCheck.pm',
    AUTHOR       => 'Michael Robinton <michael@bizsystems.com>',
    META_MERGE   => {
        resources => {
            repository => 'https://github.com/neilbowers/Business-CCCheck',
        },  
    },  
    PREREQ_PM    => {
        'Test::More' => 0,
    },
);
