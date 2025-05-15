#
# The Date application.
#

use Bio::KBase::AppService::AppScript;
use strict;
use Data::Dumper;

my $script = Bio::KBase::AppService::AppScript->new(\&date, \&preflight);

$script->run(\@ARGV);

sub preflight
{
    my($app, $app_def, $raw_params, $params) = @_;
    return { cpu => 1, memory => '1G', runtime => 60 };
}

sub date
{
    my($app, $app_def, $raw_params, $params) = @_;

    print "Date: ", Dumper($app_def, $raw_params, $params);

    my $folder = $app->result_folder();

    my $date = `date`;
    $app->workspace->save_data_to_file($date, {}, "$folder/now", 'txt', 1);

}
