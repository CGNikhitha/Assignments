create table trainee(
idno  NUMBER,
fname varchar(20),
lname varchar(20),
email varchar(20)
);
insert into trainee values(1,'vajpai','b','abs@gmail.com');
insert into trainee values(2,'sanjay','c','cfg@gmail.com');
insert into trainee values(3,'sandya','c','cfg@gmail.com');
insert into trainee values(4,'swapnha','c','cfg@gmail.com'); 
insert into trainee values(5,'sahana','c','cfg@gmail.com');
insert into trainee values(6,'pranav','c','cfg@gmail.com');
insert into trainee values(7,'piyush','c','cfg@gmail.com');
insert into trainee values(8,'pranitha','c','cfg@gmail.com');
insert into trainee values(9,'pragna','c','cfg@gmail.com');
insert into trainee values(10,'prathyusha','c','cfg@gmail.com');


declare 
 c_idno trainee.idno%type;
 c_fname trainee.fname%type;
 c_lname trainee.lname%type;
 c_email varchar(30);

 cursor c_trainee is
 select idno,fname,lname,email from trainee;
 BEGIN
   open  c_trainee;
   loop
   fetch c_trainee into c_idno,c_fname,c_lname,c_email;
   exit when c_trainee%notfound;
   dbms_output.put_line(c_idno||' '||c_fname||' '||c_lname||' '||c_email);
   end loop;
close c_trainee;
END;

 
