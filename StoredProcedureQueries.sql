--1 How many copies of the book titled The Lost Tribe are owned by the library branch whose name is"Sharpstown"?
USE Library
GO


CREATE PROCEDURE dbo.LostTribeSharptown
AS


SELECT A.Title, B.No_Of_Copies, C.BranchName

FROM Book AS A 

INNER JOIN Book_Copies AS B

ON A.BookID = B.BookID

INNER JOIN Library_Branch AS C

ON B.BranchID = C.BranchID

WHERE A.Title = 'The Lost Tribe' AND C.BranchName = 'Sharpstown'
;




--2.) How many copies of the book titled The Lost Tribe are owned by each library branch?

USE Library
GO


CREATE PROCEDURE dbo.LostTribeAll
AS

SELECT C.BranchName, A.Title, B.No_Of_Copies

FROM Library_Branch AS C 

INNER JOIN Book_Copies AS B

ON C.BranchID = B.BranchID

INNER JOIN Book AS A

ON B.BookID = A.BookID

WHERE A.Title = 'The Lost Tribe' 
;



--3.) Retrieve the names of all borrowers who do not have any books checked out.
USE Library
GO


CREATE PROCEDURE dbo.NoCheckOut
AS
SELECT * 

FROM Borrower AS BO 

LEFT JOIN Book_Loans AS BL

ON BO.CardNo = BL.CardNo

WHERE BL.BookID IS NULL 
;



--4.) For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, --retrieve the book title, the borrower's name, and the borrower's address.
USE Library
GO


CREATE PROCEDURE dbo.DueToday
AS

SELECT A.Title, B.Name, B.[Address]

FROM 

Book_Loans AS BL INNER JOIN Borrower AS B

ON BL.CardNo = B.CardNo

INNER JOIN Book AS A

ON BL.BookID = A.BookID

WHERE BL.BranchID = 001 AND BL.DueDate = '1/18/2018' 
;



--5.) For each library branch, retrieve the branch name and the total number of books loaned out from that branch.
USE Library
GO


CREATE PROCEDURE dbo.TotalCheckOut
AS


SELECT DISTINCT A.BranchName, COUNT(B.BranchId) AS QtyPerBranch

FROM Library_Branch AS A INNER JOIN Book_Loans AS B

ON A.BranchID = B.BranchID

GROUP BY A.BranchName, B.BranchId 
;



--6.) Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.
USE Library
GO


CREATE PROCEDURE dbo.MoreThan5
AS

SELECT A.Name, A.[Address], COUNT(B.CardNO) AS QtyBooksOut

FROM Borrower AS A INNER JOIN Book_Loans AS B

ON A.CardNo = B.CardNo

GROUP BY A.Name, A.[Address]

HAVING COUNT(B.CardNO) > 5 
;



--7.) For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central"
USE Library
GO


CREATE PROCEDURE dbo.StephanKingCentral
AS


SELECT B.Title, LB.BranchName, BC.No_Of_Copies

FROM Book AS B INNER JOIN Book_Authors AS BA

ON B.BookID = BA.BookID

INNER JOIN Book_Copies AS BC

ON B.BookID = BC.BookID

INNER JOIN Library_Branch AS LB

ON BC.BranchID = LB.BranchID

WHERE BA.AuthorName = 'Stephen King' AND LB.BranchName = 'Central'
;


