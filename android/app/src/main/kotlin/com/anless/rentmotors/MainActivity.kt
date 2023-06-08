package com.anless.rentmotors
import androidx.annotation.NonNull
import com.anless.rentmotors.PkpassHandler
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        flutterEngine.plugins.add(PkpassHandler())
    }
}