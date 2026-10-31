program Soal3;
uses crt;

var
    nilai : array[1..10] of real;  // Array nilai UAS 
    n : integer;                   // Jumlah Mahasiswa
    i, j : integer;                // Variabel Perulangan
    temp : real;                   // Variabel bantu untuk menukar nilai

begin
clrscr;
// Input jumlah mahasiswa dengan validasi 1 <= n <= 10
    repeat
        write('Masukan jumlah mahasiswa: ');
        readln(n);
        if (n < 1) or (n > 10) then
        writeln('Jumlah mahasiswa harus antara 1 sampai 10');
    until (n >= 1) and (n <= 10);

writeln;
// Input nilai UAS setiap mahasiswa ke dalam array
for i := 1 to n do 
begin
    // Validasi: ulangi input sampai nilai berada di rentang 1 sampai 100
    repeat
    write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
    readln(nilai[i]);
    if (nilai[i] < 1) or (nilai[i] > 100) then
        writeln('Nilai harus antara 1 sampai 100!');
    until (nilai[i] >= 1) and (nilai[i] <= 100);
end;

// bubble sort : urutkan dari terendah ke tertinggi
// Perulangan luar: jumlah putaran n-1 kali
for i := 1 to n - 1 do 
    // Perulangan dalam: bandingkan pasangan bersebelahan. Setiap putaran, nilai terbesar mundur, sehingga batas perbandingan dikurangi i
    for j := 1 to n - i do
        if nilai[j] > nilai[j + 1] then
        begin
        // tukar posisi nilai[j] dan nilai[j+1]
        temp := nilai[j];
        nilai[j] := nilai[j + 1];
        nilai[j + 1] := temp;
        end;

// tampilkan hasil 
writeln;
writeln('Nilai UAS terurut dari terendah ke tertinggi: ');
for i := 1 to n do 
    writeln(i, '.', nilai[i]:0:0);
readln;
end.