# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /usr/local/Cellar/android-sdk/24.3.3/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# ===== REACT NATIVE CORE =====
-keep class com.facebook.react.** { *; }
-keep class com.facebook.hermes.** { *; }
-keep class com.facebook.jni.** { *; }

# Keep React Native Bridge
-keepclassmembers class com.facebook.react.bridge.** { *; }
-keepclassmembers class com.facebook.react.uimanager.** { *; }

# Keep JavaScript Interface
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# ===== QUOTIFY SPECIFIC =====
-keep class com.dhruvchheda.quotify.** { *; }

# ===== THIRD PARTY LIBRARIES =====
# AsyncStorage
-keep class com.reactnativecommunity.asyncstorage.** { *; }

# Vector Icons
-keep class com.oblador.vectoricons.** { *; }

# React Native Linear Gradient
-keep class com.BV.LinearGradient.** { *; }

# Push Notifications
-keep class com.dieam.reactnativepushnotification.** { *; }

# Clipboard
-keep class com.reactnativecommunity.clipboard.** { *; }

# ===== AGGRESSIVE OPTIMIZATIONS =====
# Remove unused code and optimize
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*,!code/allocation/variable
-optimizationpasses 8
-allowaccessmodification
-dontpreverify

# Remove logging in release builds
-assumenosideeffects class android.util.Log {
    public static boolean isLoggable(java.lang.String, int);
    public static int v(...);
    public static int i(...);
    public static int w(...);
    public static int d(...);
    public static int e(...);
}

# Remove debug information
-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable,*Annotation*

# Remove unused classes and methods
-dontwarn **
-ignorewarnings

# Optimize string operations
-optimizations !code/simplification/cast,!field/*,!class/merging/*
-optimizationpasses 5

# Remove unused fields
-allowaccessmodification
-repackageclasses ''

# ===== SPECIFIC WARNINGS TO IGNORE =====
-dontwarn com.facebook.react.**
-dontwarn java.nio.file.*
-dontwarn org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement
-dontwarn com.facebook.jni.**
-dontwarn com.facebook.hermes.**
-dontwarn com.oblador.vectoricons.**
-dontwarn com.BV.LinearGradient.**
-dontwarn com.reactnativecommunity.**
-dontwarn com.dieam.reactnativepushnotification.**

# ===== KEEP ESSENTIAL ANDROID CLASSES =====
-keep class android.app.Activity
-keep class android.app.Application
-keep class android.app.Service
-keep class android.content.BroadcastReceiver
-keep class android.content.ContentProvider
-keep class android.preference.Preference
-keep class android.view.View
-keep class android.widget.*

# ===== KEEP NATIVE METHODS =====
-keepclasseswithmembernames class * {
    native <methods>;
}

# ===== KEEP ENUMERATIONS =====
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# ===== KEEP PARCELABLE IMPLEMENTATIONS =====
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

# ===== KEEP SERIALIZABLE CLASSES =====
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

# ===== REMOVE UNUSED RESOURCES =====
# This will be handled by shrinkResources in build.gradle

# ===== KEEP REFLECTION ACCESS =====
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes Exceptions

# ===== REMOVE DEBUG CODE =====
-assumenosideeffects class android.util.Log {
    public static *** d(...);
    public static *** v(...);
    public static *** i(...);
    public static *** w(...);
    public static *** e(...);
}
