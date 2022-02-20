import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/model/categoryicon.dart';
import 'package:e_commerce/model/product.dart';
import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  List<Product> laptop = [];
  Product laptopData;
  List<Product> mobile = [];
  Product mobileData;
  List<Product> mouse = [];
  Product mouseData;
  List<Product> ram = [];
  Product ramData;
  List<Product> vga = [];
  Product vgaData;
  List<CategoryIcon> laptopIcon = [];
  CategoryIcon laptopiconData;

  Future<void> getLaptopIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot dressSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("Wp48ztVHAod8q4emJHLu")
        .collection("laptop")
        .get();
    dressSnapShot.docs.forEach(
      (element) {
        laptopiconData = CategoryIcon(image: element["image"].data());
        newList.add(laptopiconData);
      },
    );
    laptopIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getLaptopIcon {
    return laptopIcon;
  }

  List<CategoryIcon> mobileIcon = [];
  CategoryIcon mobileiconData;
  Future<void> getShirtIcon() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot mobileSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("Wp48ztVHAod8q4emJHLu")
        .collection("mobile")
        .get();
    mobileSnapShot.docs.forEach(
      (element) {
        mobileiconData = CategoryIcon(image: element["image"].data());
        newList.add(mobileiconData);
      },
    );
    mobileIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getMobileIconData {
    return mobileIcon;
  }

  List<CategoryIcon> mouseIcon = [];
  CategoryIcon mouseiconData;
  Future<void> getmouseIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot mouseSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("Wp48ztVHAod8q4emJHLu")
        .collection("mouse")
        .get();
    mouseSnapShot.docs.forEach(
      (element) {
        mouseiconData = CategoryIcon(image: element["image"].data());
        newList.add(mouseiconData);
      },
    );
    mouseIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getMouseIcon {
    return mouseIcon;
  }

  List<CategoryIcon> ramIcon = [];
  CategoryIcon ramiconData;
  Future<void> getRamIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot ramSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("Wp48ztVHAod8q4emJHLu")
        .collection("ram")
        .get();
    ramSnapShot.docs.forEach(
      (element) {
        ramiconData = CategoryIcon(image: element["image"].data());
        newList.add(ramiconData);
      },
    );
    ramIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getRamIcon {
    return ramIcon;
  }

  List<CategoryIcon> vgaIcon = [];
  CategoryIcon vgaIconData;
  Future<void> getVgaIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot vgaSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("Wp48ztVHAod8q4emJHLu")
        .collection("vga")
        .get();
    vgaSnapShot.docs.forEach(
      (element) {
        vgaIconData = CategoryIcon(image: element["image"].data());
        newList.add(vgaIconData);
      },
    );
    vgaIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getVgaIcon {
    return vgaIcon;
  }
///////////////////////////////////////Category
  Future<void> getMobileData() async {
    List<Product> newList = [];
    QuerySnapshot mobileSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("NL0v8vkPLAqXSrkMUH5e")
        .collection("mobile")
        .get();
    mobileSnapShot.docs.forEach(
      (element) {
        mobileData = Product(
            image: element["image"].data(),
            name: element["name"].data(),
            price: element["price"].data());
        newList.add(mobileData);
      },
    );
    mobile = newList;
    notifyListeners();
  }

  List<Product> get getMobileList {
    return mobile;
  }

  Future<void> getLaptopData() async {
    List<Product> newList = [];
    QuerySnapshot laptopSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("NL0v8vkPLAqXSrkMUH5e")
        .collection("laptop")
        .get();
    laptopSnapShot.docs.forEach(
      (element) {
        laptopData = Product(
            image: element["image"].data(),
            name: element["name"].data(),
            price: element["price"].data());
        newList.add(laptopData);
      },
    );
    laptop = newList;
    notifyListeners();
  }

  List<Product> get getLaptopList {
    return laptop;
  }

  Future<void> getMouseData() async {
    List<Product> newList = [];
    QuerySnapshot mouseSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("NL0v8vkPLAqXSrkMUH5e")
        .collection("mouse")
        .get();
    mouseSnapShot.docs.forEach(
      (element) {
        mouseData = Product(
            image: element["image"].data(),
            name: element["name"].data(),
            price: element["price"].data());
        newList.add(mouseData);
      },
    );
    mouse = newList;
    notifyListeners();
  }

  List<Product> get getmouseList {
    return mouse;
  }

  Future<void> getRamData() async {
    List<Product> newList = [];
    QuerySnapshot ramSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("NL0v8vkPLAqXSrkMUH5e")
        .collection("ram")
        .get();
    ramSnapShot.docs.forEach(
      (element) {
        ramData = Product(
            image: element["image"].data(),
            name: element["name"].data(),
            price: element["price"].data());
        newList.add(ramData);
      },
    );
    ram = newList;
    notifyListeners();
  }

  List<Product> get getRamList {
    return ram;
  }

  Future<void> getVgaData() async {
    List<Product> newList = [];
    QuerySnapshot vgaSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("NL0v8vkPLAqXSrkMUH5e")
        .collection("vga")
        .get();
    vgaSnapShot.docs.forEach(
      (element) {
        vgaData = Product(
            image: element["image"].data(),
            name: element["name"].data(),
            price: element["price"].data());
        newList.add(vgaData);
      },
    );
    vga = newList;
    notifyListeners();
  }

  List<Product> get getVgaList {
    return vga;
  }

  List<Product> searchList;
  void getSearchList({List<Product> list}) {
    searchList = list;
  }

  List<Product> searchCategoryList(String query) {
    List<Product> searchShirt = searchList.where((element) {
      return element.name.toUpperCase().contains(query) ||
          element.name.toLowerCase().contains(query);
    }).toList();
    return searchShirt;
  }
}
