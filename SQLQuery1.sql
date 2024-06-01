ALTER PROCEDURE UDP_R_CRUDLearnFormv
(
 @Id INT=0,
 @fathersName VARCHAR(50)='',
 @mothersName VARCHAR(50)='',
 @MobileNo VARCHAR(10)='',
 @Mode CHAR(1)/*I= INSERT, U=Update, S=Select, D=Delete*/
)
AS
BEGIN
  IF(@Mode='I')
  BEGIN
    INSERT INTO tblLearformv(fathersName,mothersName,Contact_no,no_of_child) VALUES(@Name,@MobileNo)
  END
  IF(@Mode='U')
  BEGIN
    UPDATE tblLearformv SET Name=@Name,MobileNo=@MobileNo WHERE Id=@Id
  END
  IF(@Mode='S')
  BEGIN
    SELECT * FROM tblLearformv
  END
  IF(@Mode='D')
  BEGIN
      DELETE FROM tblLearformv WHERE Id=@Id
  END

END
