#!/sbin/sh

SKU=`getprop ro.boot.hardware.sku`

if [ "$SKU" = "XT1921-3" ]; then
    mv /vendor/lib/egl/libEGL_adreno_8917.so /vendor/lib/egl/libEGL_adreno.so
    mv /vendor/lib/egl/libGLESv1_CM_adreno_8917.so /vendor/lib/egl/libGLESv1_CM_adreno.so
    mv /vendor/lib/egl/libGLESv2_adreno_8917.so /vendor/lib/egl/libGLESv2_adreno.so
    mv /vendor/lib64/egl/libEGL_adreno_8917.so /vendor/lib64/egl/libEGL_adreno.so
    mv /vendor/lib64/egl/libGLESv1_CM_adreno_8917.so /vendor/lib64/egl/libGLESv1_CM_adreno.so
    mv /vendor/lib64/egl/libGLESv2_adreno_8917.so /vendor/lib64/egl/libGLESv2_adreno.so
else
    rm /vendor/lib/egl/libEGL_adreno_8917.so
    rm /vendor/lib/egl/libGLESv1_CM_adreno_8917.so
    rm /vendor/lib/egl/libGLESv2_adreno_8917.so
    rm /vendor/lib64/egl/libEGL_adreno_8917.so
    rm /vendor/lib64/egl/libGLESv1_CM_adreno_8917.so
    rm /vendor/lib64/egl/libGLESv2_adreno_8917.so
fi
