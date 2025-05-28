CREATE  FUNCTION `get_user_order_count`(uid INT) RETURNS int
    DETERMINISTIC
BEGIN
  DECLARE count_orders INT;
  SELECT COUNT(*) INTO count_orders FROM orders WHERE user_id = uid;
  RETURN count_orders;
END