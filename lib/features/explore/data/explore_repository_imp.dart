import 'package:dartz/dartz.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/features/explore/data/data_sources/remote_explore_data_source.dart';
import 'package:foodu/features/explore/data/mappers/mappers.dart';

import '../../../core/failure.dart';
import '../../../core/fake_data/fake_explore.dart';
import '../domain/explore_repository.dart';
import '../domain/models/category.dart';
import '../domain/models/meal.dart';
import '../domain/models/special_offer.dart';

class ExploreRepositoryImp implements ExploreRepository {
  final RemoteExploreDataSource _remoteDataSource;

  ExploreRepositoryImp() : _remoteDataSource = getIt.get();

  @override
  Future<Either<Failure, List<Meal>>> getDiscount() async {
    try{
      final data = await _remoteDataSource.getDiscount();
      return right(data.toMealModel());
    }catch(l){
      return left(Failure('no internet'));
    }
  }

  @override
  Future<Either<Failure, List<Meal>>> getRecommended(String categoryId) async {
    try{
      final data = await _remoteDataSource.getRecommended(categoryId);
      return right(data.toMealModel());
    }catch(l){
      return left(Failure('no internet'));
    }
  }

  @override
  Future<Either<Failure, List<SpecialOffer>>> getSpecialOffers() async {
    try{
      final data = await _remoteDataSource.getSpecialOffers();
      return right(data.toModel());
    }catch(l){
      return left(Failure('no internet'));
    }
  }

  @override
  Future<Either<Failure, List<Category>>> getCategories() async {
    try{
      final data = await _remoteDataSource.getCategories();
      return right(data.toModel());
    }catch(l){
      return left(Failure('no internet'));
    }
  }

  @override
  Future<Either<Failure, List<Meal>>> search(String keyWord) async {
    await Future.delayed(const Duration(seconds: 3));
    return right(fakeRecommendedMeal);
  }
}