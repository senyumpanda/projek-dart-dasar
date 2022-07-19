import 'dart:math';
import 'dart:io';

List<int> data_angka() {
    var data = <int>[];

    for (var i = 1; i<=100; i++ ) {
        data.add(i);
    }
    return data; 
} 

int? komputer() {
    List<int> data = data_angka();
    data.shuffle();
    return data[Random().nextInt(100)];
}

void main() {

    print('================== TEBAK ANGKA ==================');
    print('Masukkan Nama Anda: ');
    String? nama = stdin.readLineSync();
    
    if (nama != '') {
        print('');
        print('[1] Mulai');
        print('[2] Keluar');

        print('Pilih Akses : ');
        String? pilih = stdin.readLineSync();

        if (pilih == '1') {
            var benar = 1;
            int angka_komputer = komputer()!;
            while (benar == 1) {
                print('--------------');
                print('Masukkan Angka : ');
                int angka_pemain = int.parse(stdin.readLineSync()!);
                print('--------------');
                if (angka_pemain == angka_komputer) {
                    benar--;
                } else if(angka_pemain > angka_komputer) {
                    print('Angka Pemain Terlalu Besar');
                } else {
                    print('Angka Pemain Terlalu Kecil');
                }
            }
            print('Tepat! Tebakan Anda Benar :)');
        } else if (pilih == '2') {
            print('========== TERIMA KASIH ==========');
        } else {
            print('========== PILIHAN SALAH ==========');
        }

    } else {
        print('========== TERIMA KASIH ==========');
    }


}