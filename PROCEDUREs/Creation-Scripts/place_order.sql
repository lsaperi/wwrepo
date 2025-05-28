CREATE  PROCEDURE `place_order`(IN p_user_id INT, IN p_total DECIMAL(10,2))
BEGIN
  INSERT INTO orders (user_id, total) VALUES (p_user_id, p_total);
END