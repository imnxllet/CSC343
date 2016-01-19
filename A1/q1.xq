let $counts := 
(for $p in fn:doc("people.xml")/People/Person
return count($p//Oscar))

return avg($counts)
    
