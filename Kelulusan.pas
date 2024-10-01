program CekKelulusanMahasiswa;
uses crt;

var
    kehadiran, uts, uas, tugas, quiz: real;
    nilaiAkhir: real;

begin
clrscr;

    writeln('Masukkan persentase kehadiran (0 - 100): ');
    readln(kehadiran);
    
    writeln('Masukkan nilai UTS (0 - 100): ');
    readln(uts);
    
    writeln('Masukkan nilai UAS (0 - 100): ');
    readln(uas);
    
    writeln('Masukkan nilai Tugas (0 - 100): ');
    readln(tugas);
    
    writeln('Masukkan nilai Quiz (0 - 100): ');
    readln(quiz);
    
                                                
    nilaiAkhir := (0.25 * kehadiran) + (0.25 * uts) + (0.25 * uas) + (0.10 * tugas) + (0.10 * quiz);

    writeln('Nilai Akhir: ', nilaiAkhir:0:2);

    
    if nilaiAkhir >= 60 then
        writeln('Mahasiswa/i Lulus.')
    else
        writeln('Mahasiswa/i Tidak Lulus.');

    readln;  
end.
