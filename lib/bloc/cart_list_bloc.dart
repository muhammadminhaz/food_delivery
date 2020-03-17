import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:fooddelivery/bloc/provider.dart';
import 'package:fooddelivery/model/food_item.dart';
import 'package:rxdart/rxdart.dart';

class CartListBloc extends BlocBase{

  CartListBloc();
  
  // ignore: close_sinks
  var _listController = BehaviorSubject<List<FoodItem>>.seeded([]);

  CartProvider cartProvider = CartProvider();

  Stream<List<FoodItem>> get listStream => _listController.stream;

  Sink<List<FoodItem>> get listSink => _listController.sink;

  addToList(FoodItem foodItem) {
    listSink.add(cartProvider.addToList(foodItem));
  }

  removeFromList(FoodItem foodItem) {
    listSink.add(cartProvider.removeFromList(foodItem));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _listController.close();
    super.dispose();
  }
}