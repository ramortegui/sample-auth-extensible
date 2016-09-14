use utf8;
package Authentication::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Authentication::Schema::Result::User

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<users>

=cut

__PACKAGE__->table("users");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 login_name

  data_type: 'text'
  is_nullable: 0

=head2 passphrase

  data_type: 'text'
  is_nullable: 0

=head2 activated

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "login_name",
  { data_type => "text", is_nullable => 0 },
  "passphrase",
  { data_type => "text", is_nullable => 0 },
  "activated",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<login_name_unique>

=over 4

=item * L</login_name>

=back

=cut

__PACKAGE__->add_unique_constraint("login_name_unique", ["login_name"]);

=head1 RELATIONS

=head2 memberships

Type: has_many

Related object: L<Authentication::Schema::Result::Membership>

=cut

__PACKAGE__->has_many(
  "memberships",
  "Authentication::Schema::Result::Membership",
  { "foreign.user_id" => "self.id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-09-14 12:16:40
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SMhakuVjuLyZggTC0/oHbg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
