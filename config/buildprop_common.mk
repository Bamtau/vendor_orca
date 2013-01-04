# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    windowsmgr.max_events_per_sec=280 \
    net.bt.name=Android \
    dalvik.vm.heapstartsize=48m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=384m \
    dalvik.vm.dexopt-flags=v=n,o=v,u=n,m=y \
    dalvik.vm.lockprof.threshold=850 \
    dalvik.vm.verify-bytecode=false \
    dalvik.vm.stack-trace-file=/data/anr/traces.txt \
    ro.kernel.android.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    debug.sf.hw=1 \
    debug.performance.tuning=1 \
    video.accelerate.hw=1 \
    persist.sys.purgeable_assets=1 \
    windowsmgr.max_events_per_sec=280 \
    pm.sleep_mode=1 \
    ro.HOME_APP_ADJ=1 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    ro.media.enc.hprof.vid.fps=65 \
    ro.media.enc.jpeg.quality=100 \
    ro.ril.disable.power.collapse=0 \
    debug.composition.type=gpu \
    ro.telephony.call_ring.delay=500 \
    ro.max.fling_velocity=15000 \
    ro.min.fling_velocity=10000 \
    ro.lge.proximity.delay=20 \
    mot.proximity.delay=20 \
    ro.kernel.checkjni=0 \
    net.tcp.buffersize.default=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.wifi=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.umts=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.gprs=4096,87380,256960,4096,16384,256960 \
    net.tcp.buffersize.edge=4096,87380,256960,4096,16384,256960

# Misc Files & init.d files
PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/orca/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/orca/prebuilt/common/etc/init.local.rc:root/init.orca.rc \
    vendor/orca/prebuilt/common/bin/sysinit:system/bin/sysinit

# 01010101010101010010101010
PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/common/bin/set_sysctl:system/bin/set_sysctl \
    vendor/orca/prebuilt/common/bin/zipalign:system/bin/zipalign \
    vendor/orca/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/orca/prebuilt/common/etc/init.d/02cleaning:system/etc/init.d/02cleaning \
    vendor/orca/prebuilt/common/etc/init.d/88zipalign:system/etc/init.d/88zipalign \
    vendor/orca/prebuilt/common/etc/init.d/97battery:system/etc/init.d/97battery

# Google Proprietaries
PRODUCT_COPY_FILES +=  \
    vendor/orca/prebuilt/common/lib/libgtalk_jni.so:system/lib/libgtalk_jni.so \
    vendor/orca/prebuilt/common/lib/libgtalk_stabilize.so:system/lib/libgtalk_stabilize.so \
    vendor/orca/prebuilt/common/lib/libjni_filtershow_filters.so:system/lib/libjni_filtershow_filters.so \
    vendor/orca/prebuilt/common/lib/libjni_mosaic.so:system/lib/libjni_mosaic.so \
    vendor/orca/prebuilt/common/lib/liblightcycle.so:system/lib/liblightcycle.so
