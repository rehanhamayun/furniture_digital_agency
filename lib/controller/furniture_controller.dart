import 'package:get/state_manager.dart';

class FurnitureController extends GetxController {
  FurnitureController furnitureController = FurnitureController();

  List furniture = [];

  FurnitureController() {
    loadFurniturefromRepo();
  }

  RxBool loading = false.obs;

  loadFurniturefromRepo() async {
    loading(false);
    final finalFurniture = await furnitureController.loadFurniturefromRepo();
    loading(true);

    furniture.assignAll(finalFurniture);
  }
}
