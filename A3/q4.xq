let $person := fn:doc("people.xml")/People/Person[Name[First="James"][Last="Cameron"]]
let $moviedoc := fn:doc("movies.xml")/Movies
for $m in $moviedoc/Movie
where $m/Director/@PID = $person/@PID
return 
    <movie>
    	{$m//Title}
    	<year>
    	{$m/@year}
    	</year>
    </movie>
    	
