import 'package:flutter/material.dart';
import 'package:shopping_app/models/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: "p1",
      title: "iPhone 12",
      price: 699,
      description:
          "Enjoy video content in superb contrast and high resolution as this phone packs the Super Retina XDR Display.Ceramic Shield, on the other hand, makes for up drop performance that’s better by up to 4 times",
      category: ["Electronics", "Apple"],
      image:
          "https://rukminim1.flixcart.com/image/832/832/kg8avm80/mobile/r/h/z/apple-iphone-12-dummyapplefsn-original-imafwg8dxgsyngp7.jpeg?q=70",
    ),
    Product(
      id: "p2",
      title: "Mac Book Pro",
      price: 999,
      description: "Boreas, cursus, et acipenser.Eheu, regius buxum!",
      category: ["Electronics", "Apple", "Computer Appliances"],
      image:
          "https://rukminim1.flixcart.com/image/832/832/khdqnbk0/computer/5/d/e/apple-original-imafxfyqukzhkwbx.jpeg?q=70",
    ),
    Product(
      id: "p3",
      title: "Lee Cooper Jeans",
      price: 499,
      description: "",
      category: ["Men Clothing", "clothing"],
      image:
          "https://rukminim1.flixcart.com/image/530/636/khdqnbk0/jean/w/v/m/11-12-years-lcbb-4201-1018-fl-sl-black-lee-cooper-original-imafxetywpjhtkb3.jpeg?q=50",
    ),
    Product(
      id: "p4",
      title: "Armani Watch",
      price: 170,
      description:
          "Audax, alter visuss interdum visum de grandis, regius orgia.Ubi est fidelis fluctus?",
      category: ["Men Clothing", "clothing"],
      image:
          "https://rukminim1.flixcart.com/image/530/636/k2xmd8w0/watch/b/h/4/ax2411-armani-exchange-original-imafhguvkugrdjgj.jpeg?q=50",
    ),
    Product(
      id: "p5",
      title: "Gold Bracelets",
      price: 919,
      description:
          "Cum omnia favere, omnes mensaes contactus fatalis, brevis hilotaees. Lactea talis lacta est?",
      category: ["Jewelery", "Women Clothing"],
      image: "https://t2conline.com/wp-content/uploads/2019/04/melorra.jpg",
    ),
    Product(
      id: "p6",
      title: "Silver Necklace",
      price: 91,
      description:
          "Medicina de festus brodium, contactus danista! Raptus brabeuta sapienter reperires fluctui est?",
      category: ["Women Clothing", "Jewelery"],
      image:
          "https://rukminim1.flixcart.com/image/530/636/keokpe80/jewellery-set/r/t/k/nfg56-foxy-trend-original-imafvapqm45y3pk5.jpeg?q=50",
    ),
    Product(
      id: "p7",
      title: "Avengers Tshirt",
      price: 10,
      description:
          "Cum onus velum, omnes imberes fallere gratis, flavum mineralises?",
      category: ["Men Clothing", "Avengers"],
      image:
          "https://rukminim1.flixcart.com/image/530/636/j4sronk0/t-shirt/c/x/y/s-101000910112-smartraho-original-imaethfbkqgvehdd.jpeg?q=50",
    ),
    Product(
      id: "p8",
      title: "Oneplus 8 Pro",
      price: 699,
      description:
          "Enjoy video content in superb contrast and high resolution as this phone packs the Super Retina XDR Display.Ceramic Shield, on the other hand, makes for up drop performance that’s better by up to 4 times",
      category: ["Electronics", "Computer Appliances"],
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8cWwokmKJtDai-eZ8PiMC0m4QJgGEIH1UBA&usqp=CAU",
    ),
    Product(
      id: "p9",
      title: "ROG Strix",
      price: 999,
      description:
          "Enjoy video content in superb contrast and high resolution as this phone packs the Super Retina XDR Display.Ceramic Shield, on the other hand, makes for up drop performance that’s better by up to 4 times",
      category: ["Electronics", "Computer Appliances"],
      image:
          "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201907/Asus_ROG_Strix_Scar_3__1_.jpeg?eK6WCsceKP9C5I3TLg9zUuGTg3fafxdP&size=1200:675",
    ),
  ];

  List<Product> get items {
    return [..._items];
  }
}
