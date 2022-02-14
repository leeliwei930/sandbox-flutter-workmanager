package com.example.sandbox

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import com.example.sandbox.services.Storage

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.sandbox.example/storage"

    private  lateinit var storage : Storage
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        storage = Storage(this)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call: MethodCall, result: MethodChannel.Result ->
            handler(call, result)
        }
    }

    private fun handler (call : MethodCall, result: MethodChannel.Result) {
        when(call.method) {
            "getInternalStorageCapacity" -> result.success(storage.getInternalStorageCapacity())
            "getAvailableExternalStoragePaths" -> result.success(storage.getAvailableExternalStoragePaths())
            "getPhysicalStorageCapacity" -> result.success(storage.getPhysicalStorageCapacity())
            else -> result.notImplemented()
        }
    }
}
