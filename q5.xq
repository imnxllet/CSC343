let $movies := fn:doc("movies.xml")/Movies/Movie
let $trophy := fn:doc("oscars.xml")/Oscars/Oscar
for $type in distinct-values($trophy//Type)
let $candidates := $trophy[Type = $type]
let $firstAward := $candidates[@year = min($candidates/@year)]
let $awarded_movie := $movies[Oscar[@OID = $firstAward/@OID]]
return 
	<FirstOscars>
		{$firstAward/@OID}
		{$firstAward/@year}
		{$awarded_movie/Title}
	</FirstOscars>
