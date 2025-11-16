allprojects {
    repositories {
        google()
        mavenCentral()
        maven(url = "https://jitpack.io")
    }
}

import com.android.build.gradle.LibraryExtension

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)

    // Workaround: some Flutter plugin modules (in pub-cache) may not specify
    // an Android `namespace` in their module build files which breaks with
    // newer Android Gradle Plugin versions. If the module is an Android
    // library and is missing a namespace, set a sane default here so the
    // project can build while upstream packages are updated.
    plugins.withId("com.android.library") {
        try {
            extensions.configure<LibraryExtension> {
                if (project.name == "google_mlkit_commons") {
                    namespace = "com.google.mlkit_commons"
                }
            }
        } catch (_: Exception) {
            // best-effort; don't fail the configuration phase if this fails
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
