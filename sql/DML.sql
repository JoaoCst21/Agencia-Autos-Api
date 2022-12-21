# make DML
USE walmart;

# call createClient()  with firstName as first parameter, lastName as second parameter, and a real address as third parameter,
# address must be different from the one used in the previous call
CALL createclient('John', 'Doe', '123 Main St, Anytown, USA');
CALL createclient('Jane', 'Doe', '38 John St, New York, USA');
CALL createclient('David', 'Miller', '69 Main Road, London N92 8LW');
CALL createclient('Joao', 'Silva', 'Rua da Alegria, 123, Sao Paulo, Brazil');
CALL createclient('Mario', 'Rossi', 'Via Roma, 1, Milano, Italy');
CALL createclient('Jean', 'Dupont', 'Rue de la Paix, 1, Paris, France');
CALL createclient('Maria', 'Garcia', 'Calle de la Esperanza, 1, Madrid, Spain');
CALL createclient('Jose', 'Gonzalez', 'Calle de la Paz, 1, Barcelona, Spain');
CALL createclient('Paul', 'Smith', '1 High Street, London, UK');

# call createCategory() with a category name as parameter
CALL createcategory('Groceries');
CALL createcategory('Clothes');
CALL createcategory('Electronics');

# call createProduct() with name as first parameter, price as second parameter, and category id as third parameter
CALL createproduct('Apple', 0.99, 1);
CALL createproduct('Banana', 0.99, 1);
CALL createproduct('Orange', 0.99, 1);
CALL createproduct('Samsung', 1800.00, 3);
