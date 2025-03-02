// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_location_fluttify/src/ios/ios.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class AMapLocationPoint extends NSObject with NSCoding, NSCopying {
  //region constants
  static const String name__ = 'AMapLocationPoint';

  @override
  final String tag__ = 'amap_location_fluttify';

  
  //endregion

  //region creators
  static Future<AMapLocationPoint> create__({ bool init = true /* ios only */ }) async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod(
      'ObjectFactory::createAMapLocationPoint',
      {'init': init}
    );
    return AmapLocationFluttifyIOSAs<AMapLocationPoint>(__result__);
  }
  
  static Future<List<AMapLocationPoint>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    assert(true);
    final __result_batch__ = await  kAmapLocationFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchAMapLocationPoint',
      {'length': length, 'init': init}
    );
    return __result_batch__
        .map((it) => AmapLocationFluttifyIOSAs<AMapLocationPoint>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<double> get_latitude() async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationPoint::get_latitude", {'__this__': this});
    return __result__;
  }
  
  Future<double> get_longitude() async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationPoint::get_longitude", {'__this__': this});
    return __result__;
  }
  
  //endregion

  //region setters
  Future<void> set_latitude(double latitude) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationPoint::set_latitude', <String, dynamic>{'__this__': this, "latitude": latitude});
  
  
  }
  
  Future<void> set_longitude(double longitude) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationPoint::set_longitude', <String, dynamic>{'__this__': this, "longitude": longitude});
  
  
  }
  
  //endregion

  //region methods
  
  static Future<AMapLocationPoint> locationWithLatitude_longitude(double lat, double lon) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationPoint::locationWithLatitude([\'lat\':$lat, \'lon\':$lon])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationPoint::locationWithLatitude_longitude', {"lat": lat, "lon": lon});
  
  
    // handle native call
  
  
    return AmapLocationFluttifyIOSAs<AMapLocationPoint>(__result__);
  }
  
  //endregion

  @override
  String toString() {
    return 'AMapLocationPoint{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension AMapLocationPoint_Batch on List<AMapLocationPoint> {
  //region getters
  Future<List<double>> get_latitude_batch() async {
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationPoint::get_latitude_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<double>()?.toList();
  }
  
  Future<List<double>> get_longitude_batch() async {
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationPoint::get_longitude_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<double>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_latitude_batch(List<double> latitude) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationPoint::set_latitude_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "latitude": latitude[__i__]}]);
  
  
  }
  
  Future<void> set_longitude_batch(List<double> longitude) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationPoint::set_longitude_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "longitude": longitude[__i__]}]);
  
  
  }
  
  //endregion

  //region methods
  
  static Future<List<AMapLocationPoint>> locationWithLatitude_longitude_batch(List<double> lat, List<double> lon) async {
    assert(lat.length == lon.length);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationPoint::locationWithLatitude_longitude_batch', [for (int __i__ = 0; __i__ < lat.length; __i__++) {"lat": lat[__i__], "lon": lon[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => AmapLocationFluttifyIOSAs<AMapLocationPoint>(__result__)).cast<AMapLocationPoint>().toList();
  }
  
  //endregion
}