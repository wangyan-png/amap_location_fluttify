// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_location_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

class com_amap_api_fence_DistrictItem extends java_lang_Object with android_os_Parcelable {
  //region constants
  static const String name__ = 'com.amap.api.fence.DistrictItem';

  @override
  final String tag__ = 'amap_location_fluttify';

  
  //endregion

  //region creators
  static Future<com_amap_api_fence_DistrictItem> create__() async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_amap_api_fence_DistrictItem__',
    
    );
    return AmapLocationFluttifyAndroidAs<com_amap_api_fence_DistrictItem>(__result__);
  }
  
  static Future<List<com_amap_api_fence_DistrictItem>> create_batch__(int length) async {
    assert(true);
    final __result_batch__ = await  kAmapLocationFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_amap_api_fence_DistrictItem__',
      {'length': length}
    );
    return __result_batch__
        .map((it) => AmapLocationFluttifyAndroidAs<com_amap_api_fence_DistrictItem>(it))
        .toList();
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<String> getCitycode() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::getCitycode([])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::getCitycode', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setCitycode(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::setCitycode([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::setCitycode', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<String> getAdcode() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::getAdcode([])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::getAdcode', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setAdcode(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::setAdcode([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::setAdcode', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<List<com_amap_api_location_DPoint>> getPolyline() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::getPolyline([])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::getPolyline', {"__this__": this});
  
  
    // handle native call
  
  
    return (__result__ as List)?.map((it) => AmapLocationFluttifyAndroidAs<com_amap_api_location_DPoint>(it))?.toList();
  }
  
  
  Future<void> setPolyline(List<com_amap_api_location_DPoint> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::setPolyline([])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::setPolyline', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<String> getDistrictName() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::getDistrictName([])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::getDistrictName', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setDistrictName(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.fence.DistrictItem@$refId::setDistrictName([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::setDistrictName', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'com_amap_api_fence_DistrictItem{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_amap_api_fence_DistrictItem_Batch on List<com_amap_api_fence_DistrictItem> {
  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<String>> getCitycode_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::getCitycode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  Future<List<void>> setCitycode_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::setCitycode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<String>> getAdcode_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::getAdcode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  Future<List<void>> setAdcode_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::setAdcode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<List<com_amap_api_location_DPoint>>> getPolyline_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::getPolyline_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => (__result__ as List)?.map((it) => AmapLocationFluttifyAndroidAs<com_amap_api_location_DPoint>(it))?.toList()).cast<List<com_amap_api_location_DPoint>>().toList();
  }
  
  
  Future<List<void>> setPolyline_batch(List<List<com_amap_api_location_DPoint>> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::setPolyline_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<String>> getDistrictName_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::getDistrictName_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<String>().toList();
  }
  
  
  Future<List<void>> setDistrictName_batch(List<String> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('com.amap.api.fence.DistrictItem::setDistrictName_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  //endregion
}