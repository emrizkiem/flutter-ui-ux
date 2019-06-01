class Wisata {
  String imagePath;
  String nameWisata;
  String rating;
  String ulasan;
  String slogan;
  String description;
  
  Wisata(this.imagePath, this.nameWisata, this.rating, this.ulasan, this.slogan, this.description);

  static List<Wisata> getWisata() {
    var wisata = new List<Wisata>();
    wisata.add(new Wisata (
      "https://tempatwisataseru.com/wp-content/uploads/2015/12/Objek-Wisata-Taman-Nasional-Ujung-Kulon-di-Banten.jpg",
      "Taman Nasional Ujung Kulon",
      "4,3",
      "(2.328)",
      "Taman nasional, rumah bagi badak Jawa",
      "Taman Nasional Ujung Kulon terletak di bagian paling barat Pulau Jawa, Indonesia. Kawasan taman nasional ini pada mulanya meliputi wilayah Krakatau dan beberapa pulau kecil di sekitarnya seperti Pulau Handeuleum dan Pulau Peucang dan Pulau Panaitan."
    ));
    wisata.add(new Wisata (
      "https://tempatwisataseru.com/wp-content/uploads/2015/12/Tempat-Wisata-Seru-ke-Kampung-Baduy-di-Banten.jpg",
      "Tempat Wisata Kampung Baduy",
      "4,5",
      "(276)",
      "Suku",
      "Kampung Baduy terletak di Lebak Banten, Kampung Baduy menjadi salah satu destinasi wisata yang menarik di Banten. Masyarakat Baduy masih menjaga adat dan budaya sunda dengan kental. Suku ini merupakan suku asli Banten. Setidaknya ada 8000 jiwa di desa yang terbagi menjadi Baduy Dalam dan Baduy Luar."
    ));
    wisata.add(new Wisata (
      "https://bentengheritage.com/wp-content/uploads/2018/10/about_banner_uwqhd.jpg",
      "Museum Benteng Heritage",
      "4,5",
      "(471)",
      "Museum dan Sejarah",
      "Museum Benteng Heritage adalah museum peranakan Tionghoa pertama dan satu-satunya di Indonesia. Museum ini merupakan hasil restorasi sebuah bangunan berarsitektur tradisional Tionghoa."
    ));
    wisata.add(new Wisata (
      "https://www.pantainesia.com/wp-content/uploads/2018/05/Pantai-Karang-Bolong-Anyer-680x382.jpg",
      "Karang Bolong",
      "4,2",
      "(429)",
      "Pantai",
      "Karangbolong Pada awalnya, pantai yang berada di ruas jalan utama Anyer-Carita ini dikenal dengan nama Pantai Karang Suraga. Nama ini diambil dari Suryadilaga, nama orang sakti mandraguna pada zaman dahulu yang bertapa di tempat ini hingga akhir hayatnya."
    ));
    wisata.add(new Wisata (
      "https://cdn0-production-images-kly.akamaized.net/mHxrcZ9sl7wMx7upt9PGKbYT5Gg=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/2401492/original/044220900_1541495944-MASJID_AGUNG_BANTEN_1.jpg",
      "Masjid Agung Banten",
      "4,5",
      "(3.792)",
      "Sejarah",
      "Masjid Agung Banten adalah salah satu masjid tertua di Indonesia yang penuh dengan nilai sejarah. Setiap harinya masjid ini ramai dikunjungi para peziarah yang datang tidak hanya dari Banten dan Jawa Barat, tetapi juga dari berbagai daerah di Pulau Jawa."
    ));
    return wisata;
  }
}