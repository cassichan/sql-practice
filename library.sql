CREATE TABLE Books_cc (
    id INT PRIMARY KEY,
    Title TEXT,
    Genre TEXT,
    Author TEXT,
    Quantity INT
)

CREATE TABLE Users_cc (
    user_id INT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    e_mail TEXT NOT NULL
)

ALTER TABLE Users_cc
MODIFY COLUMN e_mail VARCHAR(200) UNIQUE NOT NULL


CREATE TABLE Checkout_cc (
    id INT PRIMARY KEY,
    book_id INT,
    user_id INT,
    checkout_date TEXT,
    return_date DATETIME,
    FOREIGN KEY (book_id) REFERENCES Books_cc(id),
    FOREIGN KEY (user_id) REFERENCES Users_cc(user_id)
)

INSERT INTO Books_cc (id, Title, Genre, Author, Quantity)
VALUES (1, 'The Kite Runner', 'Fiction', 'Khaled Hosseini', 5)

SELECT * FROM Books_cc

SELECT Title FROM Books_cc

UPDATE Books_cc
SET Quantity = 4
WHERE id = 1

SELECT Quantity FROM Books_cc


INSERT INTO Books_cc
VALUES (2, "Rich Dad Poor Dad", "Self Help", "Robert Kawaski", 200),
(3, "The Tao of Pooh", "Philosophy", "Benjamin Hoff", 200)

SELECT * FROM Books_cc
-- (id, Title, Genre, Author, Quantity)


SELECT Title
FROM Books_cc
WHERE Genre = "Fiction"

SELECT Title
FROM Books_cc
WHERE Genre in ('Fiction', 'Self Help')