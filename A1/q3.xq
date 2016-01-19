let $director := fn:doc("movies.xml")/Movies/Movie/Director
let $peopledoc := fn:doc("people.xml")
for $person in $peopledoc//People/Person[not(@pob)]
where $person/@PID = $director/@PID
return 
    <director>
    	{$person/@PID}
    	<LastName>
    	{$person//Name/Last}
    	</LastName>
    </director>
