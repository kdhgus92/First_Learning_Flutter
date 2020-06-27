package com.example.patform_channels;

import android.content.Context
import android.os.BatteryManager;
import android.os.BatteryManager.BATTERY_PROPERTY_CAPACITY

import androidx.annotation.NonNull;
import com.google.android.gms.location.LocationServices
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

import static android.os.BatteryManager.BATTERY_PROPERTY_CAPACITY;

class MainActivity: FlutterActivity() {
        private static final String TAG = "PlatformChannels";

    private static final String METHOD_CURRENT_LOCATION = "getCurrentLocation";
    private static final String CHANNEL_LOCATION = "android/location";

    private FusedLocationProviderClient fusedLocationClient;

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        Log.d(TAG, "configureFlutterEngine()");
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        fusedLocationClient = LocationServices.getFusedLocationProviderClient(this);

        new MethodChannel(flutterEngine.getDartExecutor(), CANNEL_LOCATION).setMethodCallHandler(
        (call, result) -> {
            Log.d(TAG, "location_channel :: method"+call.method);
            if(METHOD_CURRENT_LOCATION.equals(call.method)){
                getCurrentLocation(result);
            }
        }
        );
    }

    private void getCurrentLoction(MethodChannel.Result result) {
        fusedLocationClient.getLastLocation().addOnSuccesListener(this, locaiton->{
            if(location != null) {
                String res = "("+location.getLatitude()+", "+location.getLonfitude()+")";
                Log.d(TAG, "location? "+res);
                result.success(res);
            }
        });
    }
}
