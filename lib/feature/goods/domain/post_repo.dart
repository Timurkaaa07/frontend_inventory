abstract class PostRepo {
  Future fetchGoods();
  Future fetchGood(String id);
  Future deleteGood(String id);
  Future createGood(Map args);
  Future scanBarcode(String inventorynumbergoods);
  Future createInventoryRecord(Map args);
  Future fetchIL();
}