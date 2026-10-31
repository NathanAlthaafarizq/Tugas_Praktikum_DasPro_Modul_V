program soal4;
uses crt;

var
    nilai : array[1..5,1..4] of real; // nilai [mahasiswa, komponen]
    rata  : array[1..5] of real;      // nilai rata-rata tiap mahasiswa
    n     : integer;                  // jumlah mahasiswa
    i, j  : integer;                  // variabel perulangan
    total : real;                     // penampung jumlah nilai sementara

begin
clrscr;
// Input jumlah mahasiswa dengan validasi 1 <= n <= 5
    repeat
        write('Masukan jumlah mahasiswa: ');
        readln(n);
        if (n < 1) or (n > 5) then
        writeln('Jumlah mahasiswa harus antara 1 sampai 5');
    until (n >= 1) and (n <= 5);

// Input nilai setiap mahasiswa
// Perulangan luar: mahasiswa, perulangan dalam: komponen nilai
for i := 1 to n do 
    begin
    writeln('Mahasiswa ke - ', i);
    write('Nilai tugas: ');
    readln(nilai[i,1]);
    write('Nilai kuis: ');
    readln(nilai[i,2]);
    write('Nilai UTS: ');
    readln(nilai[i,3]);
    write('Nilai UAS: ');
    readln(nilai[i,4]);
    end;

// Hitung rata - rata nilai setiap mahasiswa
for i := 1 to n do 
begin
    total := 0;
    for j := 1 to 4 do
        total := total + nilai[i,j];
    rata[i] := total / 4;
end;

// Menampilkan output hasil penilaian, nilai rata - rata dan keterangan
writeln;
writeln('=== HASIL PENILAIAN ===');
for i := 1 to n do 
begin
writeln('Mahasiswa ke - ', i);
    writeln('Tugas       : ',   nilai[i,1]:0:0);
    writeln('Kuis        : ',   nilai[i,2]:0:0);
    writeln('UTS         : ',   nilai[i,3]:0:0);
    writeln('UAS         : ',   nilai[i,4]:0:0);
    writeln('Rata - Rata : ' ,  rata[i]:0:2);

// Penentuan keterangan lulus atau tidak lulus
if rata[i] >= 70 then
    writeln('Keterangan : Lulus')
else
    writeln('Keterangan : Tidak Lulus');
end;

readln;
end.