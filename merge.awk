/[<]script *src *= *"http[^"]*" *[>]/ { 
	file=gensub(/.*src *= *"http.*[/]([^/]*)".*/,"\\1","")
	ident="	"
	print ident "<script type='text/javascript'>"
	while(getline < file) {
		print $0;
	}
	print ident "</script>"
	next
}
{print}
