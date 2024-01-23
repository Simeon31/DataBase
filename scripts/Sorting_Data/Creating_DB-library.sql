CREATE TABLE library.books
(
	book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    year YEAR
);

CREATE TABLE library.borrowers
(
	borrower_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE
);

CREATE TABLE library.loans
(
	loan_id INT PRIMARY KEY,
    book_id INT,
    borrower_id INT,
    date_out DATE,
    date_due DATE,
    date_in DATE,
    
    CONSTRAINT fk_book FOREIGN KEY(book_id) REFERENCES library.books(book_id),
    CONSTRAINT fk_book_borrower FOREIGN KEY(borrower_id) REFERENCES library.borrowers(borrower_id)
);

INSERT INTO library.books VALUES
(1, "Atomic Habits", "James Clear", 2018),
(2, "Control Your Mind and Master Your Feelings", "Eric Robertson", 2019),
(3, "101 Essays That Will Change The Way You Think", "Brianna Wiest", 2018),
(4, "12 Rules for Life", "Jordan B. Peterson", 2018),
(5, "The Intelligent Investor", "Benjamin Graham", 2003);

INSERT INTO library.borrowers VALUES
(1, "Jonh", "jonh123@gmail.com"),
(2, "Alex", "alex963@gmail.com"),
(3, "Max", "max147@gmail.com");

INSERT INTO library.loans(loan_id, date_out, date_due, date_in) VALUES
(1, 20220114, 20220201, 20220123),
(2, 20230417, 20230517, 20230425),
(3, 20230310, 20220410, null);

