#!perl

use warnings;
use strict;

use ExtUtils::MakeMaker;
WriteMakefile(
	NAME          => 'Acme::Phlegethoth',
	AUTHOR        => 'Rocco Caputo <rcaputo@cpan.org>',
	VERSION_FROM  => 'lib/Acme/Phlegethoth.pm',
	LICENSE       => 'perl',
	ABSTRACT      => "Improve your code's readability, if you're an Ancient One",
	dist          => {
		COMPRESS    => 'gzip -9f',
		SUFFIX      => 'gz',
		PREOP       => (
			'svn-log.perl | tee ./$(DISTNAME)-$(VERSION)/CHANGES > ./CHANGES ; ' .
			'LANG=C perldoc lib/Acme/Phlegethoth.pm | ' .
			'tee ./$(DISTNAME)-$(VERSION)/README > README'
		),
	},
);
