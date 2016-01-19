let $person := fn:doc("people.xml")/People/Person
let $movie := fn:doc("movies.xml")/Movies/Movie
let $actor := $movie/Actors/Actor
let $director := $movie/Director
for $d in $director
where $d/@PID = $actor/@PID
return 
    <actorwhoDirect>
        <PID>
    	{$d/@PID}
    	</PID>
    	<LastName>
    	{$person[@PID = $d/@PID]/Name/Last}
    	</LastName>
    </actorwhoDirect>
