class Listmenu {
  String nama;
  String deskripsi;
  String gambar;
  String harga;
  String rate;
  String kategori;
  List<Map<String, String>> bahan;

  Listmenu({
    required this.nama,
    required this.deskripsi,
    required this.gambar,
    required this.harga,
    required this.rate,
    required this.kategori,
    required this.bahan,
  });

  static List<Listmenu> dummyData = [
    Listmenu(
      nama: "Pisang Goreng",
      deskripsi: "Pisang Goreng adalah camilan khas yang terbuat dari pisang yang dipotong dan digoreng hingga renyah. Camilan ini sangat populer di Indonesia dan sering disajikan dengan taburan gula atau cokelat.",
      gambar: "assets/makanan/gedhang_goreng.jpeg", // Path gambar
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
    ),
    Listmenu(
      nama: "Lontong Ayam",
      deskripsi: "Lontong Ayam adalah hidangan lezat yang terdiri dari lontong (nasi yang dipadatkan) yang disajikan dengan ayam suwir dan kuah santan yang kaya rasa. Hidangan ini cocok untuk sarapan atau makan siang.",
      gambar: "assets/makanan/lontong_ayam.jpg", // Path gambar
      harga: "40.000",
      rate: "4.5",
      kategori: "makanan",
      bahan: [
        {"pisang": "assets/bahan/jahe.png"},
        {"tepung": "assets/bahan/tepung.png"},
        {"gula": "assets/bahan/vanilla.png"},
        {"santan": "assets/bahan/santan.png"},
        {"telur": "assets/bahan/telur.png"},
      ],
    ),
    Listmenu(
      nama: "Lumpia Sayur",
      deskripsi: "Lumpia Sayur adalah camilan renyah yang terbuat dari kulit lumpia yang diisi dengan sayuran segar dan bumbu khas. Makanan ini biasanya disajikan dengan saus sambal atau saus kecap.",
      gambar: "assets/makanan/lumpia_sayur.jpeg", // Path gambar
      harga: "25.000",
      rate: "4.7",
      kategori: "snack",
      bahan: [
        {"pisang": "assets/bahan/jahe.png"},
        {"tepung": "assets/bahan/tepung.png"},
        {"gula": "assets/bahan/vanilla.png"},
        {"santan": "assets/bahan/santan.png"},
        {"telur": "assets/bahan/telur.png"},
      ],
    ),
  ];
}
