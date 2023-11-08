import 'package:get/get.dart';
import 'package:getx_1/Fetch&Display%20Data%20from%20Api/productModule/productModule.dart';
import '../apiModule/api_server.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiServer.fetchProducts();
      if (products != null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
