use utf8;
package Authentication::Schema::Result::Role;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Authentication::Schema::Result::Role

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';
__PACKAGE__->table_class("DBIx::Class::ResultSource::View");

=head1 TABLE: C<roles>

=cut

__PACKAGE__->table("roles");

=head1 ACCESSORS

=head2 login_name

  data_type: 'text'
  is_nullable: 1

=head2 role

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "login_name",
  { data_type => "text", is_nullable => 1 },
  "role",
  { data_type => "text", is_nullable => 1 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-09-14 12:16:40
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:4f6YBDUrtPo/0xvmlOmArg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
