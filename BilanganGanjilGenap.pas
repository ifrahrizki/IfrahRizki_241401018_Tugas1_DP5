program GanjilGenap;
uses crt;

var
    angka: integer;

begin
clrscr;

    writeln('Masukkan sebuah angka: ');
    readln(angka);
    
    if angka mod 2 = 0 then
        writeln(angka, ' adalah bilangan genap.')
    else
        writeln(angka, ' adalah bilangan ganjil.');
        
    readln;  
end.
