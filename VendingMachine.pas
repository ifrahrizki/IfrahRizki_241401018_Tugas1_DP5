program VendingMachine;
uses crt;

const
    MAX_PRODUCTS = 3;

type
    produk = record
        nama: string;
        harga: integer;
        stock: integer;
    end;

var
    products: array[1..MAX_PRODUCTS] of produk;
    pilihan, uang, jumlah: integer;

procedure InisialisasiProduk;
begin
    products[1].nama := 'Soda';
    products[1].harga := 5000;
    products[1].stock := 10;

    products[2].nama := 'Teh';
    products[2].harga := 5000;
    products[2].stock := 10;

    products[3].nama := 'Kerupuk';
    products[3].harga := 2000;
    products[3].stock := 20;
end;

procedure PerlihatkanProduk;
begin
    writeln('Daftar Produk:');
    for pilihan := 1 to MAX_PRODUCTS do
    begin
        writeln(pilihan, '. ', products[pilihan].nama, ' - Harga: Rp', products[pilihan].harga, ' (Stok: ', products[pilihan].stock, ')');
    end;
end;

procedure PembelianProduk;
begin
    writeln('Masukkan nomor produk yang ingin dibeli: ');
    readln(pilihan);

    if (pilihan < 1) or (pilihan > MAX_PRODUCTS) then
    begin
        writeln('Pilihan tidak valid.');
        exit;
    end;

    writeln('Masukkan jumlah yang ingin dibeli: ');
    readln(jumlah);

    if (jumlah <= 0) or (jumlah > products[pilihan].stock) then
    begin
        writeln('Jumlah tidak valid atau stok tidak cukup.');
        exit;
    end;

    uang := products[pilihan].harga * jumlah;

    writeln('Total harga: Rp', uang);
    writeln('Silakan masukkan uang: ');
    readln(uang);

    if uang < (products[pilihan].harga * jumlah) then
    begin
        writeln('Uang tidak cukup. Pembelian dibatalkan.');
        exit;
    end;

    products[pilihan].stock := products[pilihan].stock - jumlah;
    writeln('Pembelian berhasil! Anda membeli ', jumlah, ' ', products[pilihan].nama);
    writeln('Kembalian: Rp', uang - (products[pilihan].harga * jumlah));
end;

begin
    clrscr;
    InisialisasiProduk;

    repeat
        PerlihatkanProduk;
        PembelianProduk;

        writeln('Ingin melakukan pembelian lagi? (1: Ya, 0: Tidak)');
        readln(pilihan);
    until pilihan = 0;

    writeln('Terima kasih telah menggunakan mesin penjual otomatis!');
    readln;  
end.
