alter PROCEDURE UDP_R_CRUDLearnFormvvv
(
 @Id INT=0,
 @fathersName VARCHAR(50)='',
 @mothersName VARCHAR(50)='',
 @Contact_no VARCHAR(10)='',
 @no_of_child VARCHAR(10)='',
 @Mode CHAR(1),/*I= INSERT, U=Update, S=Select, D=Delete*/
 @pid int out
)
AS
BEGIN
  IF(@Mode='I')
  BEGIN
    INSERT INTO tblLearformv(fathersName, mothersName, Contact_no, no_of_child) VALUES(@fathersName, @mothersName, @Contact_no, @no_of_child)
	return @id
  END
  
END

exec UDP_R_CRUDLearnFormvv @mode = 'I'

  SqlCommand cmd = new SqlCommand("UDP_R_CRUDLearnFormv", con);
            cmd.CommandType = CommandType.StoredProcedure;
            
            cmd.Parameters.AddWithValue("@Id", Id);
            cmd.Parameters.AddWithValue("@Mode", "S");