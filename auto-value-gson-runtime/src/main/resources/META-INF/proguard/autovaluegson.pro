# Annotations are for embedding static analysis information.
-dontwarn org.jetbrains.annotations.**
-dontwarn com.google.errorprone.annotations.**

# Retain generated TypeAdapters if annotated type is retained.
-if @com.ryanharter.auto.value.gson.GenerateTypeAdapter class *
-keep class <1>_GsonTypeAdapter {
    <init>(...);
    <fields>;
}
-if @com.ryanharter.auto.value.gson.GenerateTypeAdapter class **$*
-keep class <1>_<2>_GsonTypeAdapter {
    <init>(...);
    <fields>;
}
