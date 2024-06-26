import 'package:untitled7/data/product.dart';

class Data {

  List<String> categories = [
    'الحلويات',
    'فيروز ميلك شيك',
    "بان كيك",
    'سوفت درينكس & موهيتو',
    "الكريب",
    "سلطة الفواكه",
    "مشروبات القهوة الباردة",
    "كوكتيل",
    "عصائر",
    "المشروبات الساخنة",
    "البيرة ومشروب الطاقة",
    "الأرغيلة",
    "ساندويش & سناك"
  ];

  // Product(name: "", imageURL: "assets/white.jpg",description: "",video: ""),
  // List<Product> x = [];
  List<Product> sweets = [
    Product(
        name: "فوندان",
        imageURL: "assets/fondant.jpg",
        description: "كيكة الشوكولا السائلة"),
    Product(
        name: "براونيز آيس كريم",
        imageURL: "assets/brownies-ice-cream.jpeg",
        description: "شوكولا - أوريو – لوتوس",
        video: "assets/s1.mov"),
    Product(
        name: "تشيز كيك",
        imageURL: "assets/cheese cake.jpeg",
        description: "فراولة - شوكوك - أوريو – فواكه",
        video: ""),

    Product(
        name: "وافل",
        imageURL: "assets/wafel-stake.jpeg",
        description: "فروت - آيس كريم",
        video: ""),
    Product(
        name: "سينامون رولز بالفواكه",
        imageURL: "assets/white.jpg",
        description: "كيكة القرفة",
        video: ""),

    Product(
        name: "شوكليت فيروز",
        imageURL: "assets/white.jpg",
        description: "قالب شوكولا مع آيس كريم وكرات كلير",
        video: ""),
    Product(
        name: "برج الشوكولا",
        imageURL: "assets/Chocolate-tour.jpeg",
        description: "",
        video: ""),
    Product(
        name: "فيروز كوكيز",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
  ];
  List<Product> milkShake = [
    Product(
        name: "كلاسيك",
        imageURL: "assets/classic-milk-shake.jpeg",
        description: "فانيل - فراولة – شوكولا",
        video: ""),
    Product(
        name: "مايتي بنانا ميلك شيك",
        imageURL: "assets/banana-milk-shake.jpeg",
        description: "",
        video: ""),
    Product(
        name: "كريزي أوريو شيك",
        imageURL: "assets/oreo-milk-shake.jpg",
        description: "",
        video: ""),
    Product(
        name: "كريزي كوكيز شيك",
        imageURL: "assets/cookies-milk-shake.jpeg",
        description: "",
        video: ""),
    Product(
        name: "كريزي بابل غام (بنكهة العلكة)",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "كريزي فيروز (بنكهة الشوكولا)",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
  ];
  List<Product> softDrinksAndMojito = [
    Product(
        name: "موهيتو",
        imageURL: "assets/white.jpg",
        description:
            "مشروب غازي مع الليمون والنعنع النكهات : كلاسيك - فراولة - مانجو - بلو - رمان",
        video: ""),
    Product(
        name: "آيس تي",
        imageURL: "assets/white.jpg",
        description: "دراق - ليمون - كرز",
        video: ""),
  ];
  List<Product> banCake = [
    Product(
        name: "شوكولا",
        imageURL: "assets/chocolate-pancake.jpg",
        description: "",
        video: ""),
    Product(
        name: "لوتوس",
        imageURL: "assets/lotus-pancake.jpeg",
        description: "",
        video: ""),
    Product(
        name: "كيندر",
        imageURL: "assets/kinder-pancake.jpeg",
        description: "",
        video: ""),

    Product(
        name: "سبليت",
        imageURL: "assets/banana-chocolate-pancake.jpeg",
        description: "مع الموز والشوكولا",
        video: ""),
    Product(
        name: "ميني بان كيك",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "براونيز برغر",
        imageURL: "assets/white.jpg",
        description: "مع الشوكولا والبراونيز",
        video: ""),
  ];
  List<Product> crape = [
    Product(
        name: "شوكليت",
        imageURL: "assets/chocolate-crepe.jpeg",
        description: "",
        video: ""),
    Product(
        name: "بنانا رول",
        imageURL: "assets/banana-roll-crepe.jpeg",
        description: "مع الموز والشوكولا",
        video: ""),
    Product(
        name: "براونيز سوشي",
        imageURL: "assets/brownies-crepe.jpeg",
        description: "مع آيس كريم وقطع براونيز كيك",
        video: ""),
    Product(
        name: "فيتوتشيني",
        imageURL: "assets/white.jpg",
        description: "كريب مقطع مع الشوكولا وآيس كريم والفواكه",
        video: ""),
    Product(
        name: "فواكه",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
  ];
  List<Product> fruitSalad = [
    Product(
        name: "نيوتيلا",
        imageURL: "assets/nutella-fruit-salad.jpeg",
        description: "",
        video: ""),
    Product(
        name: "بابلي",
        imageURL: "assets/bubbly-fruit-salad.jpg",
        description: "",
        video: ""),
    Product(
        name: "سنيكرز",
        imageURL: "assets/snickers-fruit-salad.jpeg",
        description: "",
        video: ""),
    Product(
        name: "قشطة ومكسرات",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "كراميل",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
  ];
  List<Product> iceCoffee = [
    Product(
        name: "آيس كوفي",
        imageURL: "assets/ice-coffee.jpeg",
        description: "",
        video: ""),
    Product(
        name: "آيس كراميل ماكياتو",
        imageURL: "assets/ice-caramel-macchiato.jpg",
        description: "",
        video: ""),
    Product(
        name: "موكا فراب",
        imageURL: "assets/moca-frap.jpeg",
        description: "",
        video: ""),
    Product(
        name: "كراميل فراب",
        imageURL: "assets/caramel-frap.jpg",
        description: "",
        video: ""),
    Product(
        name: "فراب كيت كات",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "فيروز آيس كوفي",
        imageURL: "assets/white.jpg",
        description: "",
        video: "مع الشوكولا وجوز الهند والقهوة"),
  ];
  List<Product> cocktail = [
    Product(
        name: "فواكه",
        imageURL: "assets/fruits-cocktail.jpeg",
        description: "",
        video: ""),
    Product(
        name: "حليب و موز",
        imageURL: "assets/banana-milk-cocktail.jpg",
        description: "",
        video: ""),
    Product(
        name: "نيوتيلا",
        imageURL: "assets/nutella-cocktail.webp",
        description: "",
        video: ""),
    Product(
        name: "بلو كولا دا",
        imageURL: "assets/white.jpg",
        description: "مع الأناناس وجوز الهند",
        video: ""),
    Product(
        name: "ستروبري دريم",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "فريز وأناناس",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
  ];
  List<Product> juices = [
    Product(
        name: "برتقال",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "ليمون",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "بولو", imageURL: "assets/white.jpg", description: "", video: ""),
    Product(
        name: "فريز", imageURL: "assets/white.jpg", description: "", video: ""),
    Product(
        name: "منغا", imageURL: "assets/white.jpg", description: "", video: ""),
    Product(
        name: "توت", imageURL: "assets/white.jpg", description: "", video: ""),
    Product(
        name: "جمايكا",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
  ];
  List<Product> hotDrinks = [
    Product(
        name: "قهوة تركية",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "اسبريسو",
        imageURL: "assets/white.jpg",
        description: "سينجل - دبل",
        video: ""),
    Product(
        name: "كافي لاتيه",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "كافي موكا",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "سبانيش لاتيه",
        imageURL: "assets/white.jpg",
        description: "مع النسلة والكراميل",
        video: ""),
    Product(
        name: "سنو وايت",
        imageURL: "assets/white.jpg",
        description: "مع جوز الهند والشوكولا البيضاء",
        video: ""),
    Product(
        name: "شاي", imageURL: "assets/white.jpg", description: "", video: ""),
    Product(
        name: "3 In 1",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "كابتشينو",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "زهورات - كمون",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
  ];
  List<Product> bierAndEnergyDrinks = [
    Product(
        name: "بيرة",
        imageURL: "assets/white.jpg",
        description: "عادي - مكسيكي",
        video: ""),
    Product(
        name: "موالح - شيبس",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "مشروب طاقة",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "ريدبول فيوجن",
        imageURL: "assets/white.jpg",
        description: "مع الليمون والرمان",
        video: ""),
    Product(
        name: "ريدبول سترو",
        imageURL: "assets/white.jpg",
        description: "مع الفراولة والليمون",
        video: ""),
    Product(
        name: "نبيذ أحمر",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
  ];
  List<Product> hookah = [
    Product(
        name: "تفاحتين\n ML - فاخر",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "بولو", imageURL: "assets/white.jpg", description: "", video: ""),
    Product(
        name: "معسل لوف",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "علكة", imageURL: "assets/white.jpg", description: "", video: ""),
    Product(
        name: "عنب ونعنع",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "عنب", imageURL: "assets/white.jpg", description: "", video: ""),
    Product(
        name: "سبيشيال فواكه",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "فيروز",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
  ];
  List<Product> snacks = [
    Product(
        name: "ساندويش بيتزا",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "ساندويش جبنة & مرتديلا",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "ساندويش شوكولا بالمكسرات",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "ساندويش جبنة",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "كريب مالح دابل تشيز",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "كريب مالح بالجبنة والمرتديلا",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
    Product(
        name: "فيروز بوب كورن",
        imageURL: "assets/white.jpg",
        description: "",
        video: ""),
  ];
  List<Product> trendy = [];

  Data() {
    trendy = [
      sweets[0],
      milkShake[0],
      softDrinksAndMojito[0],
      hotDrinks[0],
      hookah[0],

    ];
  }
}
