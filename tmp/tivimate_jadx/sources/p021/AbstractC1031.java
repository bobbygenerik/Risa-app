package p021;

import android.app.AppOpsManager;
import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.res.ColorStateList;
import android.graphics.Insets;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.ColorStateListDrawable;
import android.graphics.drawable.Drawable;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.os.Process;
import android.os.Trace;
import android.text.TextUtils;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil$DecoderQueryException;
import androidx.work.impl.foreground.SystemForegroundService;
import com.google.android.gms.internal.measurement.ᵎ;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import p017.AbstractC0983;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0968;
import p032.AbstractC1162;
import p032.C1150;
import p032.C1165;
import p055.AbstractC1464;
import p055.C1471;
import p055.C1490;
import p055.C1495;
import p076.AbstractC1659;
import p137.AbstractC2305;
import p151.AbstractC2426;
import p151.C2429;
import p305.AbstractC3712;
import p322.C3965;
import p425.C5049;
import p425.C5053;
import ʼ.ᵎﹶ;
import ˑˊ.ﹳٴ;

/* renamed from: ʼˉ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1031 {
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static boolean m3355() {
        return Trace.isEnabled();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m3356(boolean z) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        List<MediaCodecInfo.VideoCapabilities.PerformancePoint> supportedPerformancePoints;
        try {
            C1490 c1490 = new C1490();
            c1490.f5861 = AbstractC1464.m4251("video/avc");
            C1495 c1495 = new C1495(c1490);
            String str = c1495.f5930;
            if (str != null) {
                List m3620 = AbstractC1162.m3620(str, z, false);
                String m3624 = AbstractC1162.m3624(c1495);
                Iterable m36202 = m3624 == null ? C0956.f3901 : AbstractC1162.m3620(m3624, z, false);
                C0968 m3261 = AbstractC0993.m3261();
                m3261.m3236(m3620);
                m3261.m3236(m36202);
                C0956 m3249 = m3261.m3249();
                for (int i = 0; i < m3249.f3903; i++) {
                    if (((C1165) m3249.get(i)).f4456 != null && (videoCapabilities = ((C1165) m3249.get(i)).f4456.getVideoCapabilities()) != null && (supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints()) != null && !supportedPerformancePoints.isEmpty()) {
                        MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint = new MediaCodecInfo.VideoCapabilities.PerformancePoint(1280, 720, 60);
                        for (int i2 = 0; i2 < supportedPerformancePoints.size(); i2++) {
                            if (C1150.m3582(supportedPerformancePoints.get(i2)).covers(performancePoint)) {
                                return 2;
                            }
                        }
                        return 1;
                    }
                }
            }
        } catch (MediaCodecUtil$DecoderQueryException unused) {
        }
        return 0;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static String m3357(Context context) {
        String str = context.getApplicationContext().getPackageName() + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
        if (ᵎﹶ.ٴﹶ(context, str) == 0) {
            return str;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            str = context.getOpPackageName() + ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION";
            if (ᵎﹶ.ٴﹶ(context, str) == 0) {
                return str;
            }
        }
        throw new RuntimeException(AbstractC2305.m5378("Permission ", str, " is required by your application to receive broadcasts, please add it to your manifest"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0046, code lost:
    
        if (r5.f9224 == r8.hashCode()) goto L21;
     */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList m3358(android.content.Context r8, int r9) {
        /*
            android.content.res.Resources r0 = r8.getResources()
            android.content.res.Resources$Theme r8 = r8.getTheme()
            ˉٴ.ʼˎ r1 = new ˉٴ.ʼˎ
            r1.<init>(r0, r8)
            java.lang.Object r2 = p143.AbstractC2389.f9217
            monitor-enter(r2)
            java.util.WeakHashMap r3 = p143.AbstractC2389.f9218     // Catch: java.lang.Throwable -> L3c
            java.lang.Object r3 = r3.get(r1)     // Catch: java.lang.Throwable -> L3c
            android.util.SparseArray r3 = (android.util.SparseArray) r3     // Catch: java.lang.Throwable -> L3c
            r4 = 0
            if (r3 == 0) goto L4f
            int r5 = r3.size()     // Catch: java.lang.Throwable -> L3c
            if (r5 <= 0) goto L4f
            java.lang.Object r5 = r3.get(r9)     // Catch: java.lang.Throwable -> L3c
            ˉٴ.ᵔᵢ r5 = (p143.C2391) r5     // Catch: java.lang.Throwable -> L3c
            if (r5 == 0) goto L4f
            android.content.res.Configuration r6 = r5.f9225     // Catch: java.lang.Throwable -> L3c
            android.content.res.Configuration r7 = r0.getConfiguration()     // Catch: java.lang.Throwable -> L3c
            boolean r6 = r6.equals(r7)     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L4c
            if (r8 != 0) goto L3e
            int r6 = r5.f9224     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L48
            goto L3e
        L3c:
            r8 = move-exception
            goto L8f
        L3e:
            if (r8 == 0) goto L4c
            int r6 = r5.f9224     // Catch: java.lang.Throwable -> L3c
            int r7 = r8.hashCode()     // Catch: java.lang.Throwable -> L3c
            if (r6 != r7) goto L4c
        L48:
            android.content.res.ColorStateList r3 = r5.f9226     // Catch: java.lang.Throwable -> L3c
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            goto L51
        L4c:
            r3.remove(r9)     // Catch: java.lang.Throwable -> L3c
        L4f:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            r3 = r4
        L51:
            if (r3 == 0) goto L54
            return r3
        L54:
            java.lang.ThreadLocal r2 = p143.AbstractC2389.f9219
            java.lang.Object r3 = r2.get()
            android.util.TypedValue r3 = (android.util.TypedValue) r3
            if (r3 != 0) goto L66
            android.util.TypedValue r3 = new android.util.TypedValue
            r3.<init>()
            r2.set(r3)
        L66:
            r2 = 1
            r0.getValue(r9, r3, r2)
            int r2 = r3.type
            r3 = 28
            if (r2 < r3) goto L75
            r3 = 31
            if (r2 > r3) goto L75
            goto L84
        L75:
            android.content.res.XmlResourceParser r2 = r0.getXml(r9)
            android.content.res.ColorStateList r4 = p143.AbstractC2385.m5482(r0, r2, r8)     // Catch: java.lang.Exception -> L7e
            goto L84
        L7e:
            r2 = move-exception
            java.lang.String r3 = "ResourcesCompat"
            java.lang.String r5 = "Failed to inflate ColorStateList, leaving it to the framework"
        L84:
            if (r4 == 0) goto L8a
            p143.AbstractC2389.m5485(r1, r9, r4, r8)
            goto L8e
        L8a:
            android.content.res.ColorStateList r4 = r0.getColorStateList(r9, r8)
        L8e:
            return r4
        L8f:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L3c
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: p021.AbstractC1031.m3358(android.content.Context, int):android.content.res.ColorStateList");
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m3359(AudioAttributes.Builder builder) {
        builder.setAllowedCapturePolicy(1);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static void m3360(SystemForegroundService systemForegroundService, int i, Notification notification, int i2) {
        try {
            systemForegroundService.startForeground(i, notification, i2);
        } catch (ForegroundServiceStartNotAllowedException e) {
            C3965 m8127 = C3965.m8127();
            String str = SystemForegroundService.f1588;
            if (m8127.f15287 <= 5) {
            }
        } catch (SecurityException e2) {
            C3965 m81272 = C3965.m8127();
            String str2 = SystemForegroundService.f1588;
            if (m81272.f15287 <= 5) {
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static ColorStateList m3361(Drawable drawable) {
        if (drawable instanceof ColorDrawable) {
            return ColorStateList.valueOf(((ColorDrawable) drawable).getColor());
        }
        if (Build.VERSION.SDK_INT < 29 || !(drawable instanceof ColorStateListDrawable)) {
            return null;
        }
        return ((ColorStateListDrawable) drawable).getColorStateList();
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static Insets m3362(int i, int i2, int i3, int i4) {
        return Insets.of(i, i2, i3, i4);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m3363(int i, int i2, C1471 c1471) {
        for (int i3 = 10; i3 > 0; i3--) {
            int m7784 = AbstractC3712.m7784(i3);
            if (m7784 != 0 && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i).setSampleRate(i2).setChannelMask(m7784).build(), (AudioAttributes) c1471.m4277().ʾˋ)) {
                return i3;
            }
        }
        return 0;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static void m3364(SystemForegroundService systemForegroundService, int i, Notification notification, int i2) {
        systemForegroundService.startForeground(i, notification, i2);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, ʻˆ.ˑﹳ] */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static C5053 m3365(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z) {
        if (!AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return C5053.f19013;
        }
        ?? obj = new Object();
        obj.f3423 = true;
        obj.f3421 = z;
        return obj.m2923();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m3366(Context context, String str) {
        boolean z;
        if (str == null) {
            throw new NullPointerException("permission must be non-null");
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 33 || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        C2429 c2429 = new C2429(context);
        if (i >= 24) {
            z = AbstractC2426.m5533(c2429.f9380);
        } else {
            AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            String packageName = context.getApplicationContext().getPackageName();
            int i2 = applicationInfo.uid;
            try {
                Class<?> cls = Class.forName(AppOpsManager.class.getName());
                Class<?> cls2 = Integer.TYPE;
                Method method = cls.getMethod("checkOpNoThrow", cls2, cls2, String.class);
                Integer num = (Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class);
                num.getClass();
                if (((Integer) method.invoke(appOpsManager, num, Integer.valueOf(i2), packageName)).intValue() != 0) {
                    z = false;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            }
            z = true;
        }
        return z ? 0 : -1;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m3367(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        boolean z;
        int i3;
        List<MediaCodecInfo.VideoCapabilities.PerformancePoint> supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
        if (supportedPerformancePoints != null && !supportedPerformancePoints.isEmpty()) {
            MediaCodecInfo.VideoCapabilities.PerformancePoint performancePoint = new MediaCodecInfo.VideoCapabilities.PerformancePoint(i, i2, (int) d);
            int i4 = 0;
            while (true) {
                z = true;
                if (i4 >= supportedPerformancePoints.size()) {
                    i3 = 1;
                    break;
                }
                if (C1150.m3582(supportedPerformancePoints.get(i4)).covers(performancePoint)) {
                    i3 = 2;
                    break;
                }
                i4++;
            }
            if (i3 == 1 && ᵎ.ʾˋ == null) {
                if (Build.VERSION.SDK_INT < 35) {
                    int m3356 = m3356(false);
                    int m33562 = m3356(true);
                    if (m3356 != 0) {
                        if (m33562 == 0) {
                        }
                    }
                    ᵎ.ʾˋ = Boolean.valueOf(z);
                    if (!z) {
                    }
                }
                z = false;
                ᵎ.ʾˋ = Boolean.valueOf(z);
                if (!z) {
                }
            }
            return i3;
        }
        return 0;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m3368(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i) {
        int i2 = i & 2;
        if (i2 == 0 && (i & 4) == 0) {
            throw new IllegalArgumentException("One of either RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED is required");
        }
        if (i2 != 0 && (i & 4) != 0) {
            throw new IllegalArgumentException("Cannot specify both RECEIVER_EXPORTED and RECEIVER_NOT_EXPORTED");
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 33) {
            AbstractC1659.m4545(context, broadcastReceiver, intentFilter, i);
            return;
        }
        if (i3 >= 26) {
            ﹳٴ.ᵔᵢ(context, broadcastReceiver, intentFilter, i);
        } else if ((i & 4) != 0) {
            context.registerReceiver(broadcastReceiver, intentFilter, m3357(context), null);
        } else {
            context.registerReceiver(broadcastReceiver, intentFilter, null, null);
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static C0956 m3369(C1471 c1471) {
        C0968 m3261 = AbstractC0993.m3261();
        AbstractC0983 it = C5049.f18993.keySet().iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            int intValue = num.intValue();
            if (Build.VERSION.SDK_INT >= AbstractC3712.m7809(intValue) && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(intValue).setSampleRate(48000).build(), (AudioAttributes) c1471.m4277().ʾˋ)) {
                m3261.m3239(num);
            }
        }
        m3261.m3239(2);
        return m3261.m3249();
    }
}
