
import 'package:store_app/helper/api.dart';

import '../models/product_model.dart';

class UpdateProductService
{
   Future<ProductModel> updateProduct({required String title,required String price,required int id,
  required String image,required String description,required String category })async
  {
    print('product id = $id');
    Map<String,dynamic> data = await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
     'title':title,
     'price':price,
    ' description':description,
      'image':image,
      'category':category,

    }, );

    return ProductModel.fromjson(data);
  }
}