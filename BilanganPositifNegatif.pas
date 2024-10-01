program CekPositifNegatif;
uses crt;

var
    angka: integer;

begin
clrscr;

    writeln('Masukkan sebuah angka: ');
    readln(angka);

    if angka > 0 then
        writeln(angka, ' adalah bilangan positif.')
    else if angka < 0 then
        writeln(angka, ' adalah bilangan negatif.')
    else
        writeln('Angka adalah nol.');

    readln; 
end.
