import 'dart:ui';

class ProductModel {
  final String? name;
  final String? description;
  final double? rating;
  final int? totalReview;
  final int? price;
  final List<String>? images;
  final List<String>? itemSize;
  final List<Color>? itemColor;

  ProductModel({
    this.name,
    this.description,
    this.rating,
    this.totalReview,
    this.images,
    this.price,
    this.itemSize,
    this.itemColor,
  });
}

List<ProductModel> allProduct = [
  ProductModel(
    name: "Morrissey print T-shirt",
    price: 590,
    rating: 5.0,
    description:
        "Supplied by a premier sneaker marketplace dealing with unworn, already sold out, in demand rarities. Each product is rigorously inspected by experienced experts guaranteeing authenticity. Supreme continues their series of celebrities wearing the box logo t-shirt with music legend Morrissey for Spring 2016. Just like the previous editions, this was another instant sell-out now coveted by many. Featuring a round neck, short sleeves and a graphic print.\n\nMade in United States",
    totalReview: 120,
    images: [
      'https://cdn-images.farfetch-contents.com/14/11/00/53/14110053_18777042_1000.jpg',
      'https://cdn-images.farfetch-contents.com/14/11/00/53/14110053_18777044_1000.jpg',
      'https://cdn-images.farfetch-contents.com/14/11/00/53/14110053_18777050_1000.jpg',
    ],
    itemColor: [
      Color(0xFF6D9BE1),
      Color(0xFFBF5E5A),
      Color(0xFFA1ABBD),
      Color(0xFF699156),
      Color(0xFFC58F5E),
      Color(0xFFA872B1),
    ],
    itemSize: ['M', 'L', 'XL'],
  ),
  ProductModel(
    name: "Givenchy 4G-plaque jacket",
    price: 423,
    rating: 5.0,
    description:
        "Versatility is key to a modern wardrobe. This black jacket from Givenchy has zipped detailing and a removable hood, making it a practical choice for whatever the weather brings.",
    totalReview: 120,
    images: [
      'https://cdn-images.farfetch-contents.com/16/83/86/77/16838677_33425995_1000.jpg',
      'https://cdn-images.farfetch-contents.com/16/83/86/77/16838677_33428087_1000.jpg',
      'https://cdn-images.farfetch-contents.com/16/83/86/77/16838677_33427569_1000.jpg',
    ],
    itemColor: [
      Color(0xFF6D9BE1),
      Color(0xFFBF5E5A),
      Color(0xFFA1ABBD),
      Color(0xFF699156),
      Color(0xFFC58F5E),
      Color(0xFFA872B1),
    ],
    itemSize: ['M', 'L', 'XL'],
  ),
  ProductModel(
    name: "Fendi logo-patch backpack",
    price: 343,
    rating: 5.0,
    description:
        "Are you the type of person that has to have everything with you at all times? Designed with a spacious slouch body, this Fendi logo-print backpack can accommodate all you have to carry. Kitchen sink included.",
    totalReview: 120,
    images: [
      'https://cdn-images.farfetch-contents.com/16/77/49/90/16774990_33168887_1000.jpg',
      'https://cdn-images.farfetch-contents.com/16/77/49/90/16774990_33168888_1000.jpg',
      'https://cdn-images.farfetch-contents.com/16/77/49/90/16774990_33170463_1000.jpg',
    ],
    itemColor: [
      Color(0xFF6D9BE1),
      Color(0xFFBF5E5A),
      Color(0xFFA1ABBD),
      Color(0xFF699156),
      Color(0xFFC58F5E),
      Color(0xFFA872B1),
    ],
    itemSize: ['M', 'L', 'XL'],
  ),
  ProductModel(
    name: "Kenzo embroidered-logo wool jumper",
    price: 562,
    rating: 5.0,
    description:
        "Steer clear of dull moments when equipped with this embroidered-logo jumper from Kenzo. It's soft cream tone and contrasting playful logo are the perfect combination for day-to-day attire.",
    totalReview: 120,
    images: [
      'https://cdn-images.farfetch-contents.com/16/84/93/77/16849377_33448452_1000.jpg',
      'https://cdn-images.farfetch-contents.com/16/84/93/77/16849377_33448454_1000.jpg',
      'https://cdn-images.farfetch-contents.com/16/84/93/77/16849377_33450125_1000.jpg',
    ],
    itemColor: [
      Color(0xFF6D9BE1),
      Color(0xFFBF5E5A),
      Color(0xFFA1ABBD),
      Color(0xFF699156),
      Color(0xFFC58F5E),
      Color(0xFFA872B1),
    ],
    itemSize: ['M', 'L', 'XL'],
  ),
  ProductModel(
    name: "TOM FORD Jago low-top sneakers",
    price: 124,
    rating: 5.0,
    description:
        "A sporty design with a focus on functionality, Tom Ford’s Jago sneakers are the ultimate casual pair. This design is set atop a multi-sectioned sole that has been constructed through artisanal moulding techniques, ensuring a comfortable fit. This lace-up pair is finished with practical tabs and an elasticated strap for an easy slip-on.",
    totalReview: 120,
    images: [
      'https://cdn-images.farfetch-contents.com/16/84/52/47/16845247_33438761_1000.jpg',
      'https://cdn-images.farfetch-contents.com/16/84/52/47/16845247_33440072_1000.jpg',
      'https://cdn-images.farfetch-contents.com/16/84/52/47/16845247_33440070_1000.jpg',
    ],
    itemColor: [
      Color(0xFF6D9BE1),
      Color(0xFFBF5E5A),
      Color(0xFFA1ABBD),
      Color(0xFF699156),
      Color(0xFFC58F5E),
      Color(0xFFA872B1),
    ],
    itemSize: ['M', 'L', 'XL'],
  ),
  ProductModel(
    name: "Valentino embroidered VLogo bucket hat",
    price: 335,
    rating: 5.0,
    description:
        "Presented in a vibrant yellow hue, this bucket hat adds an exuberant flair to any casual collection. The design is accented with a subtle yet unmistakable VLogo, a Valentino symbol that carries the promise of an instant style uplift.",
    totalReview: 120,
    images: [
      'https://cdn-images.farfetch-contents.com/16/83/09/56/16830956_33438755_1000.jpg',
      'https://cdn-images.farfetch-contents.com/16/83/09/56/16830956_33438757_1000.jpg',
    ],
    itemColor: [
      Color(0xFF6D9BE1),
      Color(0xFFBF5E5A),
      Color(0xFFA1ABBD),
      Color(0xFF699156),
      Color(0xFFC58F5E),
      Color(0xFFA872B1),
    ],
    itemSize: ['M', 'L', 'XL'],
  ),
  ProductModel(
    name: "Bell & Ross BR 05 Black Steel & Gold 40mm",
    price: 429,
    rating: 5.0,
    description:
        "Let your timekeeping collection take flight. Bell & Ross find their inspiration from vintage and historic aviation technical aspects, reflecting these details throughout each piece. Their latest icon comes in the form of this BR 05 Black Steel & Gold 40mm, fit with two chronograph counters intended to measure and control short time periods to adapt to the pace of modern life. You'll never miss a second.",
    totalReview: 120,
    images: [
      'https://cdn-images.farfetch-contents.com/16/65/56/27/16655627_33131948_480.jpg',
      'https://cdn-images.farfetch-contents.com/16/65/56/27/16655627_33131962_1000.jpg',
      'https://cdn-images.farfetch-contents.com/16/65/56/27/16655627_33131949_1000.jpg',
    ],
    itemColor: [
      Color(0xFF6D9BE1),
      Color(0xFFBF5E5A),
      Color(0xFFA1ABBD),
      Color(0xFF699156),
      Color(0xFFC58F5E),
      Color(0xFFA872B1),
    ],
    itemSize: ['M', 'L', 'XL'],
  ),
  ProductModel(
    name: "Maison Margiela distressed-knit layered jumper",
    price: 2332,
    rating: 5.0,
    description:
        "The fox motif is synonymous with record label turned fashion house Maison Kitsuné; after all, 'Kitsune' translates from Japanese to 'fox'. This wool cardigan features the animal emblem embroidered onto the chest in a patch construction.",
    totalReview: 120,
    images: [
      'https://cdn-images.farfetch-contents.com/16/85/87/05/16858705_33452668_480.jpg',
      'https://cdn-images.farfetch-contents.com/16/85/87/05/16858705_33453651_1000.jpg',
      'https://cdn-images.farfetch-contents.com/16/85/87/05/16858705_33452669_1000.jpg',
    ],
    itemColor: [
      Color(0xFF6D9BE1),
      Color(0xFFBF5E5A),
      Color(0xFFA1ABBD),
      Color(0xFF699156),
      Color(0xFFC58F5E),
      Color(0xFFA872B1),
    ],
    itemSize: ['M', 'L', 'XL'],
  ),
  ProductModel(
    name: "Etro illustration-print lyocell T-shirt",
    price: 332,
    rating: 5.0,
    description:
        "material of this product meets our conscious criteria. For example, it's either organic, recycled, upcycled or independently recognised as being better for the environment (such as linen, ramie, TENCEL™ etc.).",
    totalReview: 120,
    images: [
      'https://cdn-images.farfetch-contents.com/16/78/24/30/16782430_33409297_480.jpg',
      'https://cdn-images.farfetch-contents.com/16/78/24/30/16782430_33407786_1000.jpg',
      'https://cdn-images.farfetch-contents.com/16/78/24/30/16782430_33408589_1000.jpg',
    ],
    itemColor: [
      Color(0xFF6D9BE1),
      Color(0xFFBF5E5A),
      Color(0xFFA1ABBD),
      Color(0xFF699156),
      Color(0xFFC58F5E),
      Color(0xFFA872B1),
    ],
    itemSize: ['M', 'L', 'XL'],
  ),
  ProductModel(
    name: "Balenciaga Resorts logo-embroidered cap",
    price: 590,
    rating: 5.0,
    description:
        "Balenciaga showcased a videogame set in 2030 for their AW21 collection. Users take on the role of Balenciaga-clad avatars navigating an optimistic post-pandemic world, presumably one where Balenciaga Hotels & Resorts - as embroidered on this cap - exist. Cut from organic cotton, this everyday accessory ensures you're there in spirit.",
    totalReview: 120,
    images: [
      'https://cdn-images.farfetch-contents.com/16/57/96/41/16579641_33332522_1000.jpg',
      'https://cdn-images.farfetch-contents.com/16/57/96/41/16579641_33333591_1000.jpg',
    ],
    itemColor: [
      Color(0xFF6D9BE1),
      Color(0xFFBF5E5A),
      Color(0xFFA1ABBD),
      Color(0xFF699156),
      Color(0xFFC58F5E),
      Color(0xFFA872B1),
    ],
    itemSize: ['M', 'L', 'XL'],
  ),
];
