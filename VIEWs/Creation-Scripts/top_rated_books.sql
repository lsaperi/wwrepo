create ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `top_rated_books` as 

select `b`.`book_id` as `book_id`,
	`b`.`title` as `title`,
	avg(`r`.`rating`) as `avg_rating` 
from (`books` `b` 
		join `reviews` `r` on((`b`.`book_id` = `r`.`book_id`))) 
group by `b`.`book_id` 
having (`avg_rating` >= 4.5)