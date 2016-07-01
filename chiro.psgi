use strict;
use warnings;

use Chiro;

my $app = Chiro->apply_default_middlewares(Chiro->psgi_app);
$app;

