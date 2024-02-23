@file:Suppress("DEPRECATION")

package com.example.asatic_dashboard

import android.Manifest
import android.app.Activity
import android.content.Context
import android.content.pm.PackageManager
import android.net.wifi.WifiConfiguration
import android.net.wifi.WifiManager
import androidx.annotation.NonNull
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import io.flutter.plugin.common.MethodChannel
import org.json.JSONArray
import org.json.JSONObject

@Suppress("DEPRECATION")
class MainActivity: FlutterActivity() {
    private val channelHamid = "samples.flutter.dev/wifi"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channelHamid).setMethodCallHandler {
                call, result ->
            when (call.method) {
                "getWifiList" -> {

                    result.success(WifiUtils(this).getWifiScanResults())
                }
                "connectToWifi" -> {
                    // Get SSID and password from Flutter.
                    val ssid = call.argument<String>("ssid")
                    val password = call.argument<String>("password")
                    val networkId = call.argument<String>("bssid")
                    // Connect to wifi.
                    val wifiUtils = WifiUtils(this)
                    val connected = wifiUtils.connectToWifi(ssid!!, password!!,networkId!!)
                    // Return connection result to Flutter.
                    result.success(connected.toString())
                }
                else -> {
                    println("Hamid ______________________ 4")
                    result.notImplemented()
                }
            }
        }
    }

    class WifiUtils(private val context: Context) {
        private val wifiManager: WifiManager by lazy {
            context.applicationContext.getSystemService(Context.WIFI_SERVICE) as WifiManager
        }
        fun connectToWifi(ssid: String, password: String, networkId: String,): Boolean {

            // بررسی مجوز دسترسی به موقعیت مکانی
            if (ContextCompat.checkSelfPermission(
                    context,
                    Manifest.permission.ACCESS_FINE_LOCATION
                ) != PackageManager.PERMISSION_GRANTED
            ) {
                // درخواست مجوز دسترسی به موقعیت مکانی
                ActivityCompat.requestPermissions(
                    context as Activity,
                    arrayOf(Manifest.permission.ACCESS_FINE_LOCATION),
                    PERMISSIONS_REQUEST_CODE
                )
                return false
            }


            // بررسی فعال بودن وای فای
            if (!wifiManager.isWifiEnabled) {
                // فعال کردن وای فای
                wifiManager.isWifiEnabled = true
            }

            // ایجاد WifiConfiguration
            val wifiConfiguration = WifiConfiguration()
            wifiConfiguration.SSID = ssid
            wifiConfiguration.BSSID = networkId
            wifiConfiguration.preSharedKey = password

            wifiManager.disconnect()
            // اضافه کردن WifiConfiguration به لیست شبکه های شناخته شده
            val wifiAddResult = wifiManager.addNetwork(wifiConfiguration)


            // بررسی اضافه شدن موفقیت آمیز WifiConfiguration
            return wifiAddResult != -1
        }


        private fun convertScanResultsToJson(scanResults: List<WifiHamidInfo>?): String {
            val jsonArray = JSONArray()
            scanResults?.forEach { scanResult ->
                val jsonObject = JSONObject()
                jsonObject.put("SSID", scanResult.SSID)
                jsonObject.put("BSSID", scanResult.BSSID)
                jsonArray.put(jsonObject)
            }
            return jsonArray.toString()
        }

        fun getWifiScanResults(): String? {
            // چک کردن مجوز دسترسی به موقعیت
            if (ContextCompat.checkSelfPermission(
                    context,
                    Manifest.permission.ACCESS_FINE_LOCATION
                ) != PackageManager.PERMISSION_GRANTED
            ) {
                // اگر مجوز دسترسی وجود ندارد، درخواست آن را ارسال کنید
                ActivityCompat.requestPermissions(
                    context as Activity,
                    arrayOf(Manifest.permission.ACCESS_FINE_LOCATION),
                    PERMISSIONS_REQUEST_CODE
                )
                return null
            } else {
                // اگر مجوز دسترسی داده شده است، اسکن وای فای انجام شود
                val wifiScanResults = wifiManager.scanResults
                val wifiInfoList = wifiScanResults.map { scanResult ->
                    WifiHamidInfo(scanResult.SSID, scanResult.BSSID)
                }
                return convertScanResultsToJson(wifiInfoList)
            }
        }

        companion object {
            private const val PERMISSIONS_REQUEST_CODE = 123
        }
    }

    // تابع برای تبدیل آبجکت‌های ScanResult به JSON و ارسال آن به فلاتر

}
data class WifiHamidInfo(
    val SSID: String,
    val BSSID: String,
    // سایر فیلدهای مورد نیاز را اضافه کنید
)