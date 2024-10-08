class Listmenu {
  String nama;
  String deskripsi;
  String gambar;
  String harga;
  String rate;
  String kategori;
  List<Map<String, String>> bahan;
  List<Map<String, String>> ulasan; // Menambahkan properti ulasan

  Listmenu({
    required this.nama,
    required this.deskripsi,
    required this.gambar,
    required this.harga,
    required this.rate,
    required this.kategori,
    required this.bahan,
    required this.ulasan, // Menambahkan parameter ulasan
  });

  static List<Listmenu> dummyData = [
    Listmenu(
      nama: "Pisang Goreng",
      deskripsi: "Pisang Goreng adalah camilan khas yang terbuat dari pisang yang dipotong dan digoreng hingga renyah. Camilan ini sangat populer di Indonesia dan sering disajikan dengan taburan gula atau cokelat.",
      gambar: "assets/makanan/gedhang_goreng.jpeg",
      harga: "15.000",
      rate: "4.9",
      kategori: "snack",
      bahan: [
        {"pisang": "assets/bahan/jahe.png"},
        {"tepung": "assets/bahan/tepung.png"},
        {"gula": "assets/bahan/vanilla.png"},
        {"santan": "assets/bahan/santan.png"},
        {"telur": "assets/bahan/telur.png"},
      ],
      ulasan: [
        {"user": "Andi", "comment": "Rasanya enak sekali! Sangat cocok untuk camilan."},
        {"user": "Budi", "comment": "Keren! Pisangnya manis dan renyah."},
        {"user": "Citra", "comment": "Suka banget, sering beli ini."},
      ],
    ),
    Listmenu(
      nama: "Lontong Ayam",
      deskripsi: "Lontong Ayam adalah hidangan lezat yang terdiri dari lontong (nasi yang dipadatkan) yang disajikan dengan ayam suwir dan kuah santan yang kaya rasa. Hidangan ini cocok untuk sarapan atau makan siang.",
      gambar: "assets/makanan/lontong_ayam.jpg",
      harga: "40.000",
      rate: "4.5",
      kategori: "makanan",
      bahan: [
        {"beras": "assets/bahan/beras.png"},
        {"ayam": "assets/bahan/ayam.png"},
        {"santan": "assets/bahan/santan.png"},
        {"bumbu": "assets/bahan/bumbu.png"},
        {"sayur": "assets/bahan/sayur.png"},
      ],
      ulasan: [
        {"user": "Dewi", "comment": "Kuahnya sangat enak, bikin nagih!"},
        {"user": "Eko", "comment": "Hidangan yang sangat memuaskan."},
        {"user": "Fina", "comment": "Lontongnya lembut dan ayamnya berlimpah."},
      ],
    ),
    Listmenu(
      nama: "Lumpia Sayur",
      deskripsi: "Lumpia Sayur adalah camilan renyah yang terbuat dari kulit lumpia yang diisi dengan sayuran segar dan bumbu khas. Makanan ini biasanya disajikan dengan saus sambal atau saus kecap.",
      gambar: "assets/makanan/lumpia_sayur.jpeg",
      harga: "25.000",
      rate: "4.7",
      kategori: "snack",
      bahan: [
        {"kulit lumpia": "assets/bahan/kulit_lumpia.png"},
        {"sayur": "assets/bahan/sayur.png"},
        {"bumbu": "assets/bahan/bumbu.png"},
      ],
      ulasan: [
        {"user": "Gita", "comment": "Crispy dan fresh, sangat recommended!"},
        {"user": "Hendra", "comment": "Camilan yang pas untuk teman ngobrol."},
        {"user": "Ika", "comment": "Saus sambalnya enak, lumpianya juga mantap."},
      ],
    ),
  ];
}
