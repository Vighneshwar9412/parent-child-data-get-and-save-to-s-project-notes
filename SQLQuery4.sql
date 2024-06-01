select * from tblLearformv 

select * from childNamev 

create table childNamev(
 
 nameofchild varchar(20), 
 fathers varchar(20), 
 mothersName varchar(20)
)

drop table childNamev
select SCOPE_IDENTITY()

 SELECT * FROM childNamev where parentid = 