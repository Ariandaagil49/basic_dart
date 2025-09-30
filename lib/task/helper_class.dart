// =================================
// HELPER CLASSES
// =================================

class Mahasiswa {
  String nama;
  int umur;
  String jurusan;

  Mahasiswa(this.nama, this.umur, this.jurusan);

  String getStatus() {
    return umur >= 18 ? 'Dewasa' : 'Remaja';
  }

  String getInfoString() {
    return 'Nama: $nama, Umur: $umur, Jurusan: $jurusan';
  }
}

class Mobil {
  String merk;
  int tahun;

  Mobil(this.merk, this.tahun);
  Mobil.baru(this.merk) : tahun = 2024;
}

class Hewan {
  String nama;
  int umur;

  Hewan(this.nama, this.umur);
}

class Kucing extends Hewan {
  String ras;

  Kucing(super.nama, super.umur, this.ras);

  String getInfo() {
    return 'Nama: $nama, Umur: $umur tahun, Ras: $ras';
  }

  String getBersuara() {
    return '$nama mengeong: Meow!';
  }

  String getBermain() {
    return '$nama sedang bermain dengan bola';
  }
}

abstract class KendaraanImpl {
  String merk;
  KendaraanImpl(this.merk);

  void start();
  void stop();
  String getStart();
}

class Motor extends KendaraanImpl {
  Motor(super.merk);

  @override
  void start() {}

  @override
  void stop() {}

  @override
  String getStart() {
    return '$merk motor dinyalakan dengan kick starter';
  }
}

class MobilImpl extends KendaraanImpl {
  MobilImpl(super.merk);

  @override
  void start() {}

  @override
  void stop() {}

  @override
  String getStart() {
    return '$merk mobil dinyalakan dengan tombol';
  }
}
