declare
 cursor c_trainee is
 select idno,fname,lname,email from trainee;
 myvar c_trainee%rowtype;
BEGIN
   open  c_trainee;
   loop
   fetch c_trainee into myvar;
   exit when c_trainee%notfound;
   dbms_output.put_line(myvar.idno||' '||myvar.fname||' '||myvar.lname||' '||myvar.email);
   end loop;
   close c_trainee;
END;

 
