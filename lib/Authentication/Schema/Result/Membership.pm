use utf8;
package Authentication::Schema::Result::Membership;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Authentication::Schema::Result::Membership

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<memberships>

=cut

__PACKAGE__->table("memberships");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 user_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 group_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "user_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "group_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");

=head1 UNIQUE CONSTRAINTS

=head2 C<user_id_group_id_unique>

=over 4

=item * L</user_id>

=item * L</group_id>

=back

=cut

__PACKAGE__->add_unique_constraint("user_id_group_id_unique", ["user_id", "group_id"]);

=head1 RELATIONS

=head2 group

Type: belongs_to

Related object: L<Authentication::Schema::Result::Group>

=cut

__PACKAGE__->belongs_to(
  "group",
  "Authentication::Schema::Result::Group",
  { id => "group_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);

=head2 user

Type: belongs_to

Related object: L<Authentication::Schema::Result::User>

=cut

__PACKAGE__->belongs_to(
  "user",
  "Authentication::Schema::Result::User",
  { id => "user_id" },
  { is_deferrable => 0, on_delete => "NO ACTION", on_update => "NO ACTION" },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2016-09-14 12:16:40
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6TabMSIeu+h5iyORWbLgaw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
