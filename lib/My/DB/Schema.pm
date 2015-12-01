package My::DB::Schema;
use Teng::Schema::Declare;

table {
    name 'employee';
    pk 'id';
    columns qw( department_id name email created updated );
};

table {
    name 'department';
    pk 'id';
    columns qw( name created updated );
};

1;
