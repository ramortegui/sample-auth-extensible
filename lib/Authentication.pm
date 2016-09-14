package Authentication;
use Dancer2;
use Dancer2::Plugin::Auth::Extensible;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/secret' => require_login sub {
  return 'Not secret yet!';
};

true;
