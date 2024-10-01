program BilanganPrima;
uses crt;

var
  a, i: integer;

begin
clrscr;

  write('Masukkan angka: ');
  read(a);

  if a <= 1 then
    writeln('Bukan prima')
  else
  begin
    for i := 2 to a - 1 do
    begin
      if a mod i = 0 then
      begin
        writeln('Bukan prima');
        exit;
      end;
    end;
    writeln('Prima');
  end;
  readln;
end.