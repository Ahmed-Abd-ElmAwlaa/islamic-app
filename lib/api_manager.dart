import 'package:dio/dio.dart';
import 'package:islami_c9_mon/models/praying_model.dart';

class PrayingTimeService{
  final Dio dio=Dio();
  Future<PrayingModel>getCurrentPrayTime()async{
    try{
      var response=await dio.
      get('https://api.aladhan.com/v1/timingsByCity/03-01-2025?city=Cairo&country=Egypt');
      PrayingModel prayingModel=PrayingModel.
      fromJson(response.data);
      return prayingModel;
    }on DioException catch(e){
      final String errorMessage=e.response?.data['data']??
          ' try later';
      throw Exception(errorMessage);
    }catch(e){
      throw Exception('try later');
    }
  }
}