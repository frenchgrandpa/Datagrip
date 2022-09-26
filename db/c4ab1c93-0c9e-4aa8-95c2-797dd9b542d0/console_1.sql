CREATE USER 'book_ticker_fetcher_readonly'@'%' IDENTIFIED BY 'FeSXLj0lVn6W1R07';
GRANT SELECT ON logs.* TO 'book_ticker_fetcher_readonly'@'%';
FLUSH PRIVILEGES;