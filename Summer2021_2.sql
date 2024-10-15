-- Table for BOOK
CREATE TABLE BOOK (
    Book_id INT PRIMARY KEY,
    Title VARCHAR(255),
    Publisher_name VARCHAR(255),
    FOREIGN KEY (Publisher_name) REFERENCES PUBLISHER(Name)
    ON DELETE SET NULL -- If a publisher is deleted, set Publisher_name to NULL
    ON UPDATE CASCADE  -- If a publisher's name is updated, cascade the update
);

-- Table for BOOK_AUTHORS
CREATE TABLE BOOK_AUTHORS (
    Book_id INT,
    Author_name VARCHAR(255),
    PRIMARY KEY (Book_id, Author_name),
    FOREIGN KEY (Book_id) REFERENCES BOOK(Book_id)
    ON DELETE CASCADE -- If a book is deleted, delete related book authors
    ON UPDATE CASCADE -- If a book's ID is updated, cascade the update
);

-- Table for PUBLISHER
CREATE TABLE PUBLISHER (
    Name VARCHAR(255) PRIMARY KEY,
    Address VARCHAR(255),
    Phone VARCHAR(20)
);

-- Table for BOOK_COPIES
CREATE TABLE BOOK_COPIES (
    Book_id INT,
    Branch_id INT,
    No_of_copies INT,
    PRIMARY KEY (Book_id, Branch_id),
    FOREIGN KEY (Book_id) REFERENCES BOOK(Book_id)
    ON DELETE CASCADE -- If a book is deleted, delete related book copies
    ON UPDATE CASCADE, -- If a book's ID is updated, cascade the update
    FOREIGN KEY (Branch_id) REFERENCES LIBRARY_BRANCH(Branch_id)
    ON DELETE CASCADE -- If a branch is deleted, delete related book copies
    ON UPDATE CASCADE -- If a branch's ID is updated, cascade the update
);

-- Table for BOOK_LOANS
CREATE TABLE BOOK_LOANS (
    Book_id INT,
    Branch_id INT,
    Card_no INT,
    Date_out DATE,
    Due_date DATE,
    PRIMARY KEY (Book_id, Branch_id, Card_no),
    FOREIGN KEY (Book_id) REFERENCES BOOK(Book_id)
    ON DELETE CASCADE -- If a book is deleted, delete related book loans
    ON UPDATE CASCADE, -- If a book's ID is updated, cascade the update
    FOREIGN KEY (Branch_id) REFERENCES LIBRARY_BRANCH(Branch_id)
    ON DELETE CASCADE -- If a branch is deleted, delete related book loans
    ON UPDATE CASCADE, -- If a branch's ID is updated, cascade the update
    FOREIGN KEY (Card_no) REFERENCES BORROWER(Card_no)
    ON DELETE CASCADE -- If a borrower is deleted, delete related book loans
    ON UPDATE CASCADE -- If a borrower's card number is updated, cascade the update
);

-- Table for LIBRARY_BRANCH
CREATE TABLE LIBRARY_BRANCH (
    Branch_id INT PRIMARY KEY,
    Branch_name VARCHAR(255),
    Address VARCHAR(255)
);

-- Table for BORROWER
CREATE TABLE BORROWER (
    Card_no INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Phone VARCHAR(20)
);
