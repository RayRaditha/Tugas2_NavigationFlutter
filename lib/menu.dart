class Menu {
  String name;
  String image;
  String desc;
  int price;

  Menu({
    required this.name,
    required this.image,
    required this.desc,
    required this.price,
  });
}

List<Menu> getAllMenu() {
  return [
    Menu(
      name: "Nasi Orak Arik",
      image: "https://cf.shopee.co.id/file/9483706d662373a395b6c1eacfa54503",
      desc:
      "Nasi dan telur orak-arik + sayuran",
      price: 9000,
    ),
    Menu(
      name: "Nasi Ayam",
      image:
      "https://cdn.pixabay.com/photo/2014/01/16/15/04/fried-chicken-246396_960_720.jpg",
      desc:
      "Satu porsi nasi ayam dengan sayur-sayuran",
      price: 13000,
    ),
    Menu(
      name: "Nasi Ayam Geprek",
      image: "https://cf.shopee.co.id/file/74aa85ae7dcefb43ac66c954f33f9952",
      desc:
      "Nasi dengan ayam yang digeprek. Bisa pilih level kepedasan sesukamu",
      price: 14000,
    ),
    Menu(
      name: "Nasi Goreng",
      image:
      "https://cdn.pixabay.com/photo/2013/11/23/16/35/nasi-216419_960_720.jpg",
      desc:
      "Nasi goreng dengan bumbu khas buatan ibu",
      price: 10000,
    ),
    Menu(
      name: "Magelangan",
      image:
      "https://asset.kompas.com/crops/Aprv8FWSU3AmRPIi8wmgBUtUuGI=/0x0:6000x4000/750x500/data/photo/2020/04/15/5e966c3becce7.jpg",
      desc:
      "Nasi goreng yang dicampur dengan mie dan sayur-sayuran",
      price: 11000,
    ),
    Menu(
      name: "Mie Goreng/Rebus",
      image:
      "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Mi_Goreng_GM.jpg/640px-Mi_Goreng_GM.jpg",
      desc:
      "Indomie goreng atau rebus yang dibuat spesial",
      price: 6000,
    ),
    Menu(
      name: "Teh Dingin/Panas",
      image:
      "https://images.tokopedia.net/img/cache/700/VqbcmM/2021/3/12/7cd5f551-9044-4ebf-a844-299b1fbf0b47.jpg",
      desc:
      "Minuman teh yang terbuat dari teh pilihan",
      price: 4000,
    ),
    Menu(
      name: "Jeruk Dingin/Panas",
      image:
      "data:image/jpeg;base64,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",
      desc:
      "Minuman jeruk yang menyegarkan apalagi kalau dingin",
      price: 4000,
    ),
  ];
}