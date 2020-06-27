package com.example.patform_channels;

import android.content.Context
import android.os.BatteryManager;
import android.os.BatteryManager.BATTERY_PROPERTY_CAPACITY

import androidx.annotation.NonNull;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

import static android.os.BatteryManager.BATTERY_PROPERTY_CAPACITY;

class MainActivity: FlutterActivity() {
    private static final String METHOD_BATTERY = "getBatteryLevel";
    private static final String CHANNEL_BATTERY = "android/battery";
    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        
        new MethodChannel(flutterEngine.getDartExecutor(), CHANNEL_BATTERY).setMethodCallHandler(
        (call, result)->{
            if(METHOD_BATTERY.equals(call.method)) {
                BatteryManager manager = (BatteryManager) getSystemService(Context.BATTERY_SERVICE);
                int Battery = manager.getIntProperty(BATTERY_PROPERTY_CAPACITY);
                result.success(battery);
            }
            result.notImplemented();
        }
        );
    }
}
