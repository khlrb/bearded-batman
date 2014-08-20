use LWP::Simple;

sub check_skype {
	my $req = HTTP::Request->new(POST => "https://login.skype.com/json/validator");

	$req->content_type('application/json');
	$req->content("{'new_username': @_}");

	$result = LWP::UserAgent->new->request($req)->content;

	if(index($result, 'not available') != -1) {
		return 1;
	}
	else {
		return 0;
	}
}

our %services = (
	"about.me" => sub { return head("http://about.me/@_"); },
	"advogato.org" => sub { return head("http://www.advogato.org/person/@_"); },
	"deviantART" => sub { return head("http://@_.deviantart.com"); },
	"flickr" => sub { return head("http://flickr.com/photos/@_"); },
	"foursquare" => sub { return head("http://foursquare.com/@_"); },
	"instagram" => sub { return head("http://instagram.com/@_"); },
	"last.fm" => sub { return head("http://lastfm.com/user/@_"); },
	"livejournal" => sub { return head("http://@_.livejournal.com"); },
	"twitter" => sub { return head("http://twitter.com/@_"); },
	"tumblr" => sub { return head("http://@_.tumblr.com"); },
	"soundcloud" => sub { return head("http://soundcloud.com/@_"); },
	"pinterest" => sub { return head("http://www.pinterest.com/@_"); },
	"github" => sub { return head("http://github.com/@_"); },
	"steam" => sub { return head("http://steamcommunity.com/id/@_"); },
	"soup.io" => sub { return head("http://@_.soup.io"); },
	"bitbucket" => sub { return head("https://bitbucket.org/@_"); },
	"skype" => sub { return check_skype(@_); }
);

