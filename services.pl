use LWP::Simple;

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
	"soup.io" => sub { return head("http://@_.soup.io"); }
);

