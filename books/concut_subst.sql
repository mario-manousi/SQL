# SELECT 
#     CONCAT
#     (
#         SUBSTRING(title, 1, 10), 
#      '....'
#     ) 
# AS 'short title'
# FROM books;

# SELECT 
#     SUBSTRING(REPLACE(title, 'e', '3'),1,10)
# AS 'weird string'
# FROM books;

# SELECT
# SUBSTRING
# (
# (title, 1,10), ' ... ' AS 'short title', 
# CONCAT_WS(' , ', author_lname, author_fname) AS 'author'
# CONCAT(stock_quantity, ' ', ' in stock') AS ' quantity'
#     )
# FROM books;




# SELECT CONCAT
# ((SUBSTRING(title, 1,10), '...')  AS 'short title',
# CONCAT_WS(' , ', author_lname, author_fname) AS 'author',
# CONCAT(stock_quantity, ' ', ' in stock') AS ' quantity'
#     )
# FROM books;



# SELECT CONCAT
# (
# SUBSTRING(title,1,10), '...' AS 'short title', CONCAT(author_lname ' , ', author_fname) AS 'author', CONCAT(stock_quantity, '  ', 'in stock') AS 'quantity'
# )
# FROM books;

# SELECT author_lname



# SELECT 
#         CONCAT(SUBSTRING(title, 1,10), '...') AS 'short title',       
#         CONCAT(author_lname, ',', author_fname) AS 'author',
#         CONCAT(stock_quantity, ' in stock ' ) AS quantity
FROM books;