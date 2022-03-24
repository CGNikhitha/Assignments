declare 
 c_idno trainee.idno%type;
 c_fname trainee.fname%type;
 c_lname trainee.lname%type;
 c_email varchar(30);
cursor c is
select idno, fname, lname, email from trainee where fname like 'z%';
begin
open c;
loop
fetch c into c_idno, c_fname,c_lname, c_email ;
exit when c%notfound;
dbms_output.put_line(c_idno||' '||c_fname||' '||c_lname||' '||c_email);
end loop;
end close;
EXCEPTION 
    when  no_data_found then 
         dbms_output.put_line('no such trainee');
    when others then 
         dbms_output.put_line('error');
end;