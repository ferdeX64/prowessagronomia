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