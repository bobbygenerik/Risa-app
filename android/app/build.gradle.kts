plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.risa.app"
    // Use an explicit compileSdk to satisfy newer AndroidX library requirements
    // (some updated plugins require compileSdk 34+). Set to 36 to be safe.
    compileSdk = 36
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.risa.app"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        // Match compileSdk with a modern target to satisfy updated dependencies.
        targetSdk = 36
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        getByName("release") {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")

            // Ensure R8 uses our ProGuard rules (keep TensorFlow Lite classes, etc.)
            isMinifyEnabled = true
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // Include TensorFlow Lite GPU delegate to satisfy tflite_flutter GPU usage
    implementation("org.tensorflow:tensorflow-lite-gpu:2.14.0")
    // Include Play Core to satisfy deferred components references from Flutter embedding
    implementation("com.google.android.play:core:1.10.3")
    // ExoPlayer for native Android playback and track management (using latest stable)
    implementation("androidx.media3:media3-exoplayer:1.2.1")
    implementation("androidx.media3:media3-exoplayer-smoothstreaming:1.2.1")
}
