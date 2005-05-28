# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl WordNet-SenseRelate-WordToSet.t'

# $Id: WordNet-SenseRelate-WordToSet.t,v 1.2 2005/05/25 20:23:06 jmichelizzi Exp $

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 5;

use_ok WordNet::SenseRelate::WordToSet;
use_ok WordNet::QueryData;

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $qd = WordNet::QueryData->new;
ok ($qd, "construct QueryData");

my %options = (measure => 'WordNet::Similarity::lesk',
	       wordnet => $qd);

my $mod = WordNet::SenseRelate::WordToSet->new (%options);

ok ($mod, "construct WordToSet object");

my $res = $mod->disambiguate (target => 'java',
			      context => [qw/programming_language applet web/]);

my $best_score = -100;
my $best = '';
foreach my $key (keys %$res) {
    next unless defined $res->{$key};
    if ($res->{$key} > $best_score) {
	$best_score = $res->{$key};
	$best = $key;
    }
}

is ($best, 'java#n#3');

