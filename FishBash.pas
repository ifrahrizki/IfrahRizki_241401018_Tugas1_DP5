program FishBash;
uses crt;

const
    MAX_FISH = 4;

var
    fish: array[1..MAX_FISH] of integer;  
    pilihan, score, i: integer;

procedure InisialisasiIkan;
begin
    randomize;
    for i := 1 to MAX_FISH do
    begin
        fish[i] := random(2);  
    end;
end;

procedure PerlihatkanIkan;
begin
    writeln('Ikan yang terlihat:');
    for i := 1 to MAX_FISH do
    begin
        if fish[i] = 1 then
            write('[F] ')  
        else
            write('[ ] ');  
    end;
    writeln;
end;

procedure BashFish;
begin
    writeln('Pilih nomor ikan yang ingin dipukul (1 - ', MAX_FISH, '): ');
    readln(pilihan);

    if (pilihan < 1) or (pilihan > MAX_FISH) then
    begin
        writeln('Pilihan tidak valid. Silakan coba lagi.');
        exit;
    end;

    if fish[pilihan] = 1 then
    begin
        writeln('Selamat! Anda berhasil memukul ikan!');
        score := score + 1;
        fish[pilihan] := 0;  
    end
    else
    begin
        writeln('Sayang sekali! Tidak ada ikan di nomor itu.');
    end;
end;

begin
    clrscr;
    score := 0;

    repeat
        InisialisasiIkan;
        PerlihatkanIkan;
        BashFish;

        writeln('Skor Anda: ', score);
        writeln('Ingin bermain lagi? (1: Ya, 0: Tidak)');
        readln(pilihan);
    until pilihan = 0;

    writeln('Terima kasih telah bermain Fish Bash!');
    readln;  
end.
