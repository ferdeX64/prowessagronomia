import 'package:prowessagronomia/src/models/home_page_model.dart';
import 'package:prowessagronomia/src/utils/home_page_list_name.dart';
import 'package:prowessagronomia/src/utils/home_page_list_prices.dart';
import 'home_page_list_images.dart';


List<ProductsShareProduct> productsImageList() {
  List<ProductsShareProduct> list = [];

  var list1 = ProductsShareProduct(lomoCerdo);
  list.add(list1);

  var list2 = ProductsShareProduct(queso);
  list.add(list2);

  var list3 = ProductsShareProduct(sandia);
  list.add(list3);

  return list;
}

List<ProductsShareProduct> productsImageListCarne() {
  List<ProductsShareProduct> list = [];

  var list1 = ProductsShareProduct(lomoCerdo);
  list.add(list1);

  var list2 = ProductsShareProduct(pechugaPollo);
  list.add(list2);

  return list;
}

List<ProductsShareProduct> productsImageListFruta() {
  List<ProductsShareProduct> list = [];

  var list1 = ProductsShareProduct(pera);
  list.add(list1);

  var list2 = ProductsShareProduct(platano);
  list.add(list2);

  var list3 = ProductsShareProduct(sandia);
  list.add(list3);

  return list;
}

List<ProductsShareProduct> productsImageListLacteos() {
  List<ProductsShareProduct> list = [];

  var list1 = ProductsShareProduct(queso);
  list.add(list1);

  var list2 = ProductsShareProduct(yogurt);
  list.add(list2);

  return list;
}

List<ProductsShareProduct> productsImageListVerduras() {
  List<ProductsShareProduct> list = [];

  var list1 = ProductsShareProduct(lechuga);
  list.add(list1);

  var list2 = ProductsShareProduct(tomate);
  list.add(list2);

  return list;
}

List<ProductsShareName> productsNameList() {
  List<ProductsShareName> list = [];

  var list1 = ProductsShareName(lomoCerdoname);
  list.add(list1);

  var list2 = ProductsShareName(quesoname);
  list.add(list2);

  var list3 = ProductsShareName(sandianame);
  list.add(list3);

  return list;
}

List<ProductsShareName> productsNameListCarne() {
  List<ProductsShareName> list = [];

  var list1 = ProductsShareName(lomoCerdoname);
  list.add(list1);

  var list2 = ProductsShareName(pechugapolloname);
  list.add(list2);


  return list;
}

List<ProductsShareName> productsNameListFruta() {
  List<ProductsShareName> list = [];

  var list1 = ProductsShareName(peraname);
  list.add(list1);

  var list2 = ProductsShareName(platanoname);
  list.add(list2);

  var list3 = ProductsShareName(sandianame);
  list.add(list3);


  return list;
}

List<ProductsShareName> productsNameListLacteos() {
  List<ProductsShareName> list = [];

  var list1 = ProductsShareName(quesoname);
  list.add(list1);

  var list2 = ProductsShareName(yogurtname);
  list.add(list2);


  return list;
}

List<ProductsShareName> productsNameListVerduras() {
  List<ProductsShareName> list = [];

  var list1 = ProductsShareName(lechuganame);
  list.add(list1);

  var list2 = ProductsShareName(tomatename);
  list.add(list2);


  return list;
}


List<ProductsSharePrices> productsPricesList() {
  List<ProductsSharePrices> list = [];

  var list1 = ProductsSharePrices(lomoCerdoprice);
  list.add(list1);

  var list2 = ProductsSharePrices(quesoprice);
  list.add(list2);

  var list3 = ProductsSharePrices(sandiaprice);
  list.add(list3);

  return list;
}

List<ProductsSharePrices> productsPricesListCarne() {
  List<ProductsSharePrices> list = [];

  var list1 = ProductsSharePrices(lomoCerdoprice);
  list.add(list1);

  var list2 = ProductsSharePrices(pechugapolloprice);
  list.add(list2);

  return list;
}

List<ProductsSharePrices> productsPricesListFruta() {
  List<ProductsSharePrices> list = [];

  var list1 = ProductsSharePrices(peraprice);
  list.add(list1);

  var list2 = ProductsSharePrices(platanoprice);
  list.add(list2);

  var list3 = ProductsSharePrices(sandiaprice);
  list.add(list3);


  return list;
}

List<ProductsSharePrices> productsPricesListLacteos() {
  List<ProductsSharePrices> list = [];

  var list1 = ProductsSharePrices(quesoprice);
  list.add(list1);

  var list2 = ProductsSharePrices(yogurtprice);
  list.add(list2);

  return list;
}

List<ProductsSharePrices> productsPricesListVerduras() {
  List<ProductsSharePrices> list = [];

  var list1 = ProductsSharePrices(lechugaprice);
  list.add(list1);

  var list2 = ProductsSharePrices(tomateprice);
  list.add(list2);

  return list;
}

