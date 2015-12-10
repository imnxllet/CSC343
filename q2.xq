for $movie in fn:doc("movies.xml")/Movies/Movie
return 
    <movieList>
    	{$movie/@MID}
    	<ActorCount>
    	{count($movie//Actors/Actor)}
    	</ActorCount>
    </movieList>	

