#!/usr/bin/env perl
use strict;
use warnings;
use lib './lib';
use My::DB;
use My::DB::Schema;

sub teng {
    my $dsn  = 'dbi:mysql:database=mydb';
    my $user = 'root';
    my $pass = '';
    my $attr = {
        RaiseError         => 1,
        PrintError         => 0,
        ShowErrorStatement => 1,
        AutoCommit         => 1,
    };
    
    my $teng = My::DB->new({
       connect_info => [ $dsn, $user, $pass, $attr ], 
    });

    return $teng;
}

my $teng = teng();

my $row = $teng->single( 'employee', {
    id => 1,
});

print $row->department_id, "\n";
print $row->name, "\n";
print $row->email, "\n";
print $row->created, "\n";
print $row->updated, "\n";

my $iter = $teng->search( 'department' => {} );
my @rows = $iter->all;
print $_->name, "\n" for @rows;
