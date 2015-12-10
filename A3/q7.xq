<Stats>
{
    let $movie := fn:doc("movies.xml")/Movies/Movie
    for $category in distinct-values($movie//Genre/Category)
    let $count := count($movie[Genre[Category = $category]])
    return
    	<Bar category="{$category}" count="{$count}">
	</Bar>
}	
</Stats>