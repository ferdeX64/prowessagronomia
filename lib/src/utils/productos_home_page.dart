import 'package:prowessagronomia/src/models/home_page_model.dart';
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