import 'package:actual_flutter/common/model/cursor_pagination_model.dart';
import 'package:actual_flutter/restaurant/model/restaurant_detail_model.dart';
import 'package:actual_flutter/restaurant/model/restaurant_model.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'restaurant_repository.g.dart';

@RestApi()
abstract class RestaurantRepository {
  // http://$ip/restaurant
  factory RestaurantRepository(Dio dio, {String baseUrl})
  = _RestaurantRepository;

  // http://$ip/restaurant/
  @GET('/')
  @Headers({
    'authorization' : 'true',
  })
  Future<CursorPagination<RestaurantModel>>paginate(

      );

  // http://$ip/restaurant/:id
  @GET('/{id}')
  @Headers({
    'authorization' : 'true',
  })
  Future<RestaurantDetailModel> getRestaurantDetail({
    @Path() required String id,
  });
}