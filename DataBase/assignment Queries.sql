-- 1- Basic Retrieval
-- Write a SQL query to list all books (BookID, Title) along with their publisher names, sorted alphabetically by title.

select books.PublisherName,books.BookID ,books.Title from books
order by books.Title asc


-- 2- Counting Records
-- Write a query to count the total number of copies available for a specific book (use BookID = X as a placeholder).
select sum(book_copies.number_of_copies) as TotalNumber from book_copies
where BookID="2"


-- 3- Joining Tables
-- Write a query to display all borrowers (Name, CardNo) who currently have books checked out (assume "checked out" means DateOut is not null and DateDue is in the future).
select borrower.Name , borrower.CardNo ,book_loans.DateDue from borrower
 Join book_loans on book_loans.Cardno = borrower.Cardno
 where book_loans.DateOut is not null and book_loans.DateDue > current_date

-- 4- Filtering with Conditions
-- Write a query to find all books from a specific publisher (use PublisherName = 'X') that have more than 5 copies in any branch.
select books.title  from books
join book_copies on book_copies.bookID = books.bookID
where PublisherName ='Inks Pubs' and  book_copies.Number_Of_Copies > 5


-- 5- Multiple Joins
-- Write a query to list all books (Title) written by a specific author (use AuthorName = 'X') that are available in a specific branch (use BranchName = 'Y').

 select books.title from books
 join book_authors on books.BookID = book_authors.BookID
 join book_copies on book_copies.BookID =  books.BookID
 join library_branch on library_branch.BranchID =  book_copies.BranchID
 where AuthorName='Oran Juice Jones' and BranchName='Sharpstown'
-- 6- Aggregate Functions
-- Write a query to show the branch with the highest total number of book copies across all titles (display BranchName and total copies).
select  library_branch.BranchName,sum(book_copies.Number_Of_Copies) as  totalcopies  from library_branch
join book_copies on book_copies.BranchID = library_branch.BranchID
GROUP BY library_branch.BranchName
ORDER BY TotalCopies DESC
LIMIT 1;


-- 7- Date Operations
-- Write a query to find all overdue books (DateDue is earlier than today’s date) along with the borrower’s name and phone number.
Select borrower.name ,borrower.Phone,book_loans.DateDue from borrower
join book_loans on book_loans.CardNo = borrower.CardNo
where book_loans.DateDue < CURDATE()

-- 8- Subqueries
-- Write a query to find borrowers who have never checked out any book.
Select borrower.name  from  borrower
where cardno not in (select book_loans.CardNo  from  book_loans)


-- 9- Grouping Data
-- Write a query to show the number of books written by each author (AuthorName and count), ordered by count (highest first).
select book_authors.AuthorName, count(book_authors.BookID) as numberOfBooks from book_authors
Group by book_authors.AuthorName
order by numberOfBooks Desc


-- 10- Complex Query
-- Write a query to find branches that have at least one copy of every book from a specific publisher (use PublisherName = 'X').
SELECT library_branch.BranchName
FROM library_branch
JOIN book_copies ON library_branch.BranchID = book_copies.BranchID
JOIN books ON book_copies.BookID = books.BookID
WHERE books.PublisherName = 'The Lost Tribe'
GROUP BY library_branch.BranchName
HAVING COUNT(DISTINCT books.BookID) = (
    SELECT COUNT(*)
    FROM books
    WHERE PublisherName = 'The Lost Tribe'
);

