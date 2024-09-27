use sample
Insert into Table_1 (Student1,Marks)
Values (0.00,0.00)

SELECT * FROM Table_1


use sample
DECLARE @i INT = 1;

WHILE (@i <= 101)
BEGIN
    WAITFOR DELAY '00:00:01';
    
    UPDATE Table_1 SET Student1 = @i  /* Add a condition to specify which rows to update */;
    UPDATE Table_1 SET Marks = RAND() * 100  /* Add a condition to specify which rows to update */;
    insert into Table_1 values (@i,rand()*100);
    SET @i = @i + 1;
END;