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

class AMapLocationManager extends NSObject  {
  //region constants
  static const String name__ = 'AMapLocationManager';

  @override
  final String tag__ = 'amap_location_fluttify';

  
  //endregion

  //region creators
  static Future<AMapLocationManager> create__({ bool init = true /* ios only */ }) async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod(
      'ObjectFactory::createAMapLocationManager',
      {'init': init}
    );
    return AmapLocationFluttifyIOSAs<AMapLocationManager>(__result__);
  }
  
  static Future<List<AMapLocationManager>> create_batch__(int length, { bool init = true /* ios only */ }) async {
    assert(true);
    final __result_batch__ = await  kAmapLocationFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchAMapLocationManager',
      {'length': length, 'init': init}
    );
    return __result_batch__
        .map((it) => AmapLocationFluttifyIOSAs<AMapLocationManager>(it))
        .toList();
  }
  
  //endregion

  //region getters
  Future<double> get_distanceFilter() async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_distanceFilter", {'__this__': this});
    return __result__;
  }
  
  Future<double> get_desiredAccuracy() async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_desiredAccuracy", {'__this__': this});
    return __result__;
  }
  
  Future<bool> get_pausesLocationUpdatesAutomatically() async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_pausesLocationUpdatesAutomatically", {'__this__': this});
    return __result__;
  }
  
  Future<bool> get_allowsBackgroundLocationUpdates() async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_allowsBackgroundLocationUpdates", {'__this__': this});
    return __result__;
  }
  
  Future<int> get_locationTimeout() async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_locationTimeout", {'__this__': this});
    return __result__;
  }
  
  Future<int> get_reGeocodeTimeout() async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_reGeocodeTimeout", {'__this__': this});
    return __result__;
  }
  
  Future<bool> get_locatingWithReGeocode() async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_locatingWithReGeocode", {'__this__': this});
    return __result__;
  }
  
  Future<AMapLocationReGeocodeLanguage> get_reGeocodeLanguage() async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_reGeocodeLanguage", {'__this__': this});
    return (__result__ as int).toAMapLocationReGeocodeLanguage();
  }
  
  Future<bool> get_detectRiskOfFakeLocation() async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_detectRiskOfFakeLocation", {'__this__': this});
    return __result__;
  }
  
  Future<AMapLocationAccuracyMode> get_locationAccuracyMode() async {
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_locationAccuracyMode", {'__this__': this});
    return (__result__ as int).toAMapLocationAccuracyMode();
  }
  
  //endregion

  //region setters
  Future<void> set_delegate(AMapLocationManagerDelegate delegate) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_delegate', <String, dynamic>{'__this__': this, });
  
    MethodChannel('AMapLocationManagerDelegate::Callback', kAmapLocationFluttifyMethodCodec)
      .setMethodCallHandler((methodCall) async {
        try {
          final args = methodCall.arguments as Map;
          switch (methodCall.method) {
            case 'Callback::AMapLocationManagerDelegate::amapLocationManager_doRequireLocationAuth':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: amapLocationManager_doRequireLocationAuth([\'manager\':${args['manager']}, \'locationManager\':${args['locationManager']}])');
              }
          
              // handle the native call
              delegate?.amapLocationManager_doRequireLocationAuth(AmapLocationFluttifyIOSAs(args['manager']), AmapLocationFluttifyIOSAs(args['locationManager']));
              break;
            case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didFailWithError':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: amapLocationManager_didFailWithError([\'manager\':${args['manager']}, \'error\':${args['error']}])');
              }
          
              // handle the native call
              delegate?.amapLocationManager_didFailWithError(AmapLocationFluttifyIOSAs(args['manager']), AmapLocationFluttifyIOSAs(args['error']));
              break;
            case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didUpdateLocation':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: amapLocationManager_didUpdateLocation([\'manager\':${args['manager']}, \'location\':${args['location']}])');
              }
          
              // handle the native call
              delegate?.amapLocationManager_didUpdateLocation(AmapLocationFluttifyIOSAs(args['manager']), AmapLocationFluttifyIOSAs(args['location']));
              break;
            case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didUpdateLocation_reGeocode':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: amapLocationManager_didUpdateLocation_reGeocode([\'manager\':${args['manager']}, \'location\':${args['location']}, \'reGeocode\':${args['reGeocode']}])');
              }
          
              // handle the native call
              delegate?.amapLocationManager_didUpdateLocation_reGeocode(AmapLocationFluttifyIOSAs(args['manager']), AmapLocationFluttifyIOSAs(args['location']), AmapLocationFluttifyIOSAs(args['reGeocode']));
              break;
            case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didChangeAuthorizationStatus':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: amapLocationManager_didChangeAuthorizationStatus([\'manager\':${args['manager']}, \'status\':${args['status']}])');
              }
          
              // handle the native call
              delegate?.amapLocationManager_didChangeAuthorizationStatus(AmapLocationFluttifyIOSAs(args['manager']), (args['status'] as int).toCLAuthorizationStatus());
              break;
            case 'Callback::AMapLocationManagerDelegate::amapLocationManager_locationManagerDidChangeAuthorization':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: amapLocationManager_locationManagerDidChangeAuthorization([\'manager\':${args['manager']}, \'locationManager\':${args['locationManager']}])');
              }
          
              // handle the native call
              delegate?.amapLocationManager_locationManagerDidChangeAuthorization(AmapLocationFluttifyIOSAs(args['manager']), AmapLocationFluttifyIOSAs(args['locationManager']));
              break;
            case 'Callback::AMapLocationManagerDelegate::amapLocationManagerShouldDisplayHeadingCalibration':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: amapLocationManagerShouldDisplayHeadingCalibration([\'manager\':${args['manager']}])');
              }
          
              // handle the native call
              delegate?.amapLocationManagerShouldDisplayHeadingCalibration(AmapLocationFluttifyIOSAs(args['manager']));
              break;
            case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didUpdateHeading':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: amapLocationManager_didUpdateHeading([\'manager\':${args['manager']}, \'newHeading\':${args['newHeading']}])');
              }
          
              // handle the native call
              delegate?.amapLocationManager_didUpdateHeading(AmapLocationFluttifyIOSAs(args['manager']), AmapLocationFluttifyIOSAs(args['newHeading']));
              break;
            case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didStartMonitoringForRegion':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: amapLocationManager_didStartMonitoringForRegion([\'manager\':${args['manager']}, \'region\':${args['region']}])');
              }
          
              // handle the native call
              delegate?.amapLocationManager_didStartMonitoringForRegion(AmapLocationFluttifyIOSAs(args['manager']), AmapLocationFluttifyIOSAs(args['region']));
              break;
            case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didEnterRegion':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: amapLocationManager_didEnterRegion([\'manager\':${args['manager']}, \'region\':${args['region']}])');
              }
          
              // handle the native call
              delegate?.amapLocationManager_didEnterRegion(AmapLocationFluttifyIOSAs(args['manager']), AmapLocationFluttifyIOSAs(args['region']));
              break;
            case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didExitRegion':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: amapLocationManager_didExitRegion([\'manager\':${args['manager']}, \'region\':${args['region']}])');
              }
          
              // handle the native call
              delegate?.amapLocationManager_didExitRegion(AmapLocationFluttifyIOSAs(args['manager']), AmapLocationFluttifyIOSAs(args['region']));
              break;
            case 'Callback::AMapLocationManagerDelegate::amapLocationManager_didDetermineState_forRegion':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: amapLocationManager_didDetermineState_forRegion([\'manager\':${args['manager']}, \'state\':${args['state']}, \'region\':${args['region']}])');
              }
          
              // handle the native call
              delegate?.amapLocationManager_didDetermineState_forRegion(AmapLocationFluttifyIOSAs(args['manager']), (args['state'] as int).toAMapLocationRegionState(), AmapLocationFluttifyIOSAs(args['region']));
              break;
            case 'Callback::AMapLocationManagerDelegate::amapLocationManager_monitoringDidFailForRegion_withError':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: amapLocationManager_monitoringDidFailForRegion_withError([\'manager\':${args['manager']}, \'region\':${args['region']}, \'error\':${args['error']}])');
              }
          
              // handle the native call
              delegate?.amapLocationManager_monitoringDidFailForRegion_withError(AmapLocationFluttifyIOSAs(args['manager']), AmapLocationFluttifyIOSAs(args['region']), AmapLocationFluttifyIOSAs(args['error']));
              break;
            default:
              break;
          }
        } catch (e) {
          debugPrint(e);
          rethrow;
        }
      });
  }
  
  Future<void> set_distanceFilter(double distanceFilter) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_distanceFilter', <String, dynamic>{'__this__': this, "distanceFilter": distanceFilter});
  
  
  }
  
  Future<void> set_desiredAccuracy(double desiredAccuracy) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_desiredAccuracy', <String, dynamic>{'__this__': this, "desiredAccuracy": desiredAccuracy});
  
  
  }
  
  Future<void> set_pausesLocationUpdatesAutomatically(bool pausesLocationUpdatesAutomatically) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_pausesLocationUpdatesAutomatically', <String, dynamic>{'__this__': this, "pausesLocationUpdatesAutomatically": pausesLocationUpdatesAutomatically});
  
  
  }
  
  Future<void> set_allowsBackgroundLocationUpdates(bool allowsBackgroundLocationUpdates) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_allowsBackgroundLocationUpdates', <String, dynamic>{'__this__': this, "allowsBackgroundLocationUpdates": allowsBackgroundLocationUpdates});
  
  
  }
  
  Future<void> set_locationTimeout(int locationTimeout) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_locationTimeout', <String, dynamic>{'__this__': this, "locationTimeout": locationTimeout});
  
  
  }
  
  Future<void> set_reGeocodeTimeout(int reGeocodeTimeout) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_reGeocodeTimeout', <String, dynamic>{'__this__': this, "reGeocodeTimeout": reGeocodeTimeout});
  
  
  }
  
  Future<void> set_locatingWithReGeocode(bool locatingWithReGeocode) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_locatingWithReGeocode', <String, dynamic>{'__this__': this, "locatingWithReGeocode": locatingWithReGeocode});
  
  
  }
  
  Future<void> set_reGeocodeLanguage(AMapLocationReGeocodeLanguage reGeocodeLanguage) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_reGeocodeLanguage', <String, dynamic>{'__this__': this, "reGeocodeLanguage": reGeocodeLanguage.toValue()});
  
  
  }
  
  Future<void> set_detectRiskOfFakeLocation(bool detectRiskOfFakeLocation) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_detectRiskOfFakeLocation', <String, dynamic>{'__this__': this, "detectRiskOfFakeLocation": detectRiskOfFakeLocation});
  
  
  }
  
  Future<void> set_locationAccuracyMode(AMapLocationAccuracyMode locationAccuracyMode) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_locationAccuracyMode', <String, dynamic>{'__this__': this, "locationAccuracyMode": locationAccuracyMode.toValue()});
  
  
  }
  
  //endregion

  //region methods
  
  static Future<bool> headingAvailable() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager::headingAvailable([])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::headingAvailable', );
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> startUpdatingHeading() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::startUpdatingHeading([])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::startUpdatingHeading', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> stopUpdatingHeading() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::stopUpdatingHeading([])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::stopUpdatingHeading', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> dismissHeadingCalibrationDisplay() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::dismissHeadingCalibrationDisplay([])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::dismissHeadingCalibrationDisplay', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<bool> requestLocationWithReGeocode_completionBlock(bool withReGeocode, void completionBlock(CLLocation location, AMapLocationReGeocode regeocode, NSError error)) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::requestLocationWithReGeocode([\'withReGeocode\':$withReGeocode])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::requestLocationWithReGeocode_completionBlock', {"withReGeocode": withReGeocode, "__this__": this});
  
  
    // handle native call
    MethodChannel('AMapLocatingCompletionBlock::Callback@$refId', kAmapLocationFluttifyMethodCodec)
        .setMethodCallHandler((methodCall) async {
          try {
            final args = methodCall.arguments as Map;
            switch (methodCall.method) {
              case 'Callback::AMapLocatingCompletionBlock::AMapLocatingCompletionBlock':
                // print log
                if (fluttifyLogEnabled) {
          
                }
          
                // handle the native call
                if (completionBlock != null) completionBlock(AmapLocationFluttifyIOSAs(args['location']), AmapLocationFluttifyIOSAs(args['regeocode']), AmapLocationFluttifyIOSAs(args['error']));
                break;
              default:
                break;
            }
          } catch (e) {
            debugPrint(e);
            rethrow;
          }
        });
  
    return __result__;
  }
  
  
  Future<void> startUpdatingLocation() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::startUpdatingLocation([])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::startUpdatingLocation', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> stopUpdatingLocation() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::stopUpdatingLocation([])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::stopUpdatingLocation', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  @deprecated
  Future<void> startMonitoringForRegion(AMapLocationRegion region) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::startMonitoringForRegion([])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::startMonitoringForRegion', {"region": region, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  @deprecated
  Future<void> stopMonitoringForRegion(AMapLocationRegion region) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::stopMonitoringForRegion([])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::stopMonitoringForRegion', {"region": region, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  @deprecated
  Future<void> requestStateForRegion(AMapLocationRegion region) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: AMapLocationManager@$refId::requestStateForRegion([])');
    }
  
    // invoke native method
    final __result__ = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::requestStateForRegion', {"region": region, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'AMapLocationManager{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension AMapLocationManager_Batch on List<AMapLocationManager> {
  //region getters
  Future<List<double>> get_distanceFilter_batch() async {
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_distanceFilter_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<double>()?.toList();
  }
  
  Future<List<double>> get_desiredAccuracy_batch() async {
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_desiredAccuracy_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<double>()?.toList();
  }
  
  Future<List<bool>> get_pausesLocationUpdatesAutomatically_batch() async {
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_pausesLocationUpdatesAutomatically_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<bool>()?.toList();
  }
  
  Future<List<bool>> get_allowsBackgroundLocationUpdates_batch() async {
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_allowsBackgroundLocationUpdates_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<bool>()?.toList();
  }
  
  Future<List<int>> get_locationTimeout_batch() async {
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_locationTimeout_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  Future<List<int>> get_reGeocodeTimeout_batch() async {
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_reGeocodeTimeout_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<int>()?.toList();
  }
  
  Future<List<bool>> get_locatingWithReGeocode_batch() async {
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_locatingWithReGeocode_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<bool>()?.toList();
  }
  
  Future<List<AMapLocationReGeocodeLanguage>> get_reGeocodeLanguage_batch() async {
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_reGeocodeLanguage_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => (__result__ as int).toAMapLocationReGeocodeLanguage())?.cast<AMapLocationReGeocodeLanguage>()?.toList();
  }
  
  Future<List<bool>> get_detectRiskOfFakeLocation_batch() async {
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_detectRiskOfFakeLocation_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => __result__)?.cast<bool>()?.toList();
  }
  
  Future<List<AMapLocationAccuracyMode>> get_locationAccuracyMode_batch() async {
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod("AMapLocationManager::get_locationAccuracyMode_batch", [for (final __item__ in this) {'__this__': __item__}]);
    return (resultBatch as List)?.map((__result__) => (__result__ as int).toAMapLocationAccuracyMode())?.cast<AMapLocationAccuracyMode>()?.toList();
  }
  
  //endregion

  //region setters
  Future<void> set_distanceFilter_batch(List<double> distanceFilter) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_distanceFilter_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "distanceFilter": distanceFilter[__i__]}]);
  
  
  }
  
  Future<void> set_desiredAccuracy_batch(List<double> desiredAccuracy) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_desiredAccuracy_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "desiredAccuracy": desiredAccuracy[__i__]}]);
  
  
  }
  
  Future<void> set_pausesLocationUpdatesAutomatically_batch(List<bool> pausesLocationUpdatesAutomatically) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_pausesLocationUpdatesAutomatically_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "pausesLocationUpdatesAutomatically": pausesLocationUpdatesAutomatically[__i__]}]);
  
  
  }
  
  Future<void> set_allowsBackgroundLocationUpdates_batch(List<bool> allowsBackgroundLocationUpdates) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_allowsBackgroundLocationUpdates_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "allowsBackgroundLocationUpdates": allowsBackgroundLocationUpdates[__i__]}]);
  
  
  }
  
  Future<void> set_locationTimeout_batch(List<int> locationTimeout) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_locationTimeout_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "locationTimeout": locationTimeout[__i__]}]);
  
  
  }
  
  Future<void> set_reGeocodeTimeout_batch(List<int> reGeocodeTimeout) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_reGeocodeTimeout_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "reGeocodeTimeout": reGeocodeTimeout[__i__]}]);
  
  
  }
  
  Future<void> set_locatingWithReGeocode_batch(List<bool> locatingWithReGeocode) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_locatingWithReGeocode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "locatingWithReGeocode": locatingWithReGeocode[__i__]}]);
  
  
  }
  
  Future<void> set_reGeocodeLanguage_batch(List<AMapLocationReGeocodeLanguage> reGeocodeLanguage) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_reGeocodeLanguage_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "reGeocodeLanguage": reGeocodeLanguage[__i__].toValue()}]);
  
  
  }
  
  Future<void> set_detectRiskOfFakeLocation_batch(List<bool> detectRiskOfFakeLocation) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_detectRiskOfFakeLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "detectRiskOfFakeLocation": detectRiskOfFakeLocation[__i__]}]);
  
  
  }
  
  Future<void> set_locationAccuracyMode_batch(List<AMapLocationAccuracyMode> locationAccuracyMode) async {
    await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::set_locationAccuracyMode_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {'__this__': this[__i__], "locationAccuracyMode": locationAccuracyMode[__i__].toValue()}]);
  
  
  }
  
  //endregion

  //region methods
  
  static Future<List<bool>> headingAvailable_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::headingAvailable_batch', );
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<bool>().toList();
  }
  
  
  Future<List<void>> startUpdatingHeading_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::startUpdatingHeading_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> stopUpdatingHeading_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::stopUpdatingHeading_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> dismissHeadingCalibrationDisplay_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::dismissHeadingCalibrationDisplay_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> startUpdatingLocation_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::startUpdatingLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> stopUpdatingLocation_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::stopUpdatingLocation_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  @deprecated
  Future<List<void>> startMonitoringForRegion_batch(List<AMapLocationRegion> region) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::startMonitoringForRegion_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"region": region[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  @deprecated
  Future<List<void>> stopMonitoringForRegion_batch(List<AMapLocationRegion> region) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::stopMonitoringForRegion_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"region": region[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  @deprecated
  Future<List<void>> requestStateForRegion_batch(List<AMapLocationRegion> region) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapLocationFluttifyChannel.invokeMethod('AMapLocationManager::requestStateForRegion_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"region": region[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  //endregion
}