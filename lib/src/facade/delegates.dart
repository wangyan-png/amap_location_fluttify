// ignore_for_file: non_constant_identifier_names
part of 'amap_location.dart';

typedef _OnAndroidLocationChanged = void Function(
  com_amap_api_location_AMapLocation location,
);
typedef _OnIOSLocationChanged = void Function(
  CLLocation location,
  AMapLocationReGeocode reGeocode,
);
typedef _OnRequireAlwaysAuth = void Function(CLLocationManager manager);
typedef _OnGeoFenceStatusChanged = void Function(
  AMapGeoFenceRegion region,
  String customID,
  NSError error,
);

class _AndroidLocationDelegate extends java_lang_Object
    with
        com_amap_api_location_AMapLocationListener,
        com_amap_api_fence_GeoFenceListener {
  _OnAndroidLocationChanged _onLocationChanged;

  @override
  Future<void> onLocationChanged(
    com_amap_api_location_AMapLocation var1,
  ) async {
    await super.onLocationChanged(var1);
    if (_onLocationChanged != null) {
      _onLocationChanged(var1);
    }
  }

  @override
  Future<void> onGeoFenceCreateFinished(
      List<com_amap_api_fence_GeoFence> var1, int var2, String var3) async {
    await super.onGeoFenceCreateFinished(var1, var2, var3);
    debugPrint(
        '围栏创建结果: $var2, ${com_amap_api_fence_GeoFence.ADDGEOFENCE_SUCCESS}');
  }
}

class _IOSLocationDelegate extends NSObject with AMapLocationManagerDelegate {
  _OnIOSLocationChanged _onLocationChanged;
  _OnRequireAlwaysAuth _onRequireAlwaysAuth;

  @override
  Future<void> amapLocationManager_didUpdateLocation_reGeocode(
    AMapLocationManager manager,
    CLLocation location,
    AMapLocationReGeocode reGeocode,
  ) async {
    await super.amapLocationManager_didUpdateLocation_reGeocode(
      manager,
      location,
      reGeocode,
    );
    if (_onLocationChanged != null) {
      _onLocationChanged(location, reGeocode);
    }
  }

  @override
  Future<void> amapLocationManager_doRequireLocationAuth(
    AMapLocationManager manager,
    CLLocationManager locationManager,
  ) async {
    await super.amapLocationManager_doRequireLocationAuth(
      manager,
      locationManager,
    );
    if (_onRequireAlwaysAuth != null) {
      _onRequireAlwaysAuth(locationManager);
    }
  }
}

class _IOSGeoFenceDelegate extends NSObject with AMapGeoFenceManagerDelegate {
  _OnGeoFenceStatusChanged _onGeoFenceStatusChanged;

  @override
  Future<void>
      amapGeoFenceManager_didGeoFencesStatusChangedForRegion_customID_error(
    AMapGeoFenceManager manager,
    AMapGeoFenceRegion region,
    String customID,
    NSError error,
  ) async {
    await super
        .amapGeoFenceManager_didGeoFencesStatusChangedForRegion_customID_error(
      manager,
      region,
      customID,
      error,
    );
    if (_onGeoFenceStatusChanged != null) {
      _onGeoFenceStatusChanged(region, customID, error);
    }
  }
}
