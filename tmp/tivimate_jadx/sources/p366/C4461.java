package p366;

import android.os.Build;
import android.util.Log;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: ᵔﹶ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4461 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final boolean f16689;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final File f16690;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static volatile C4461 f16691;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final boolean f16692;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f16695;

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f16693 = true;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AtomicBoolean f16694 = new AtomicBoolean(false);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f16696 = 20000;

    static {
        int i = Build.VERSION.SDK_INT;
        f16689 = i < 29;
        f16692 = i >= 28;
        f16690 = new File("/proc/self/fd");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C4461 m9009() {
        if (f16691 == null) {
            synchronized (C4461.class) {
                try {
                    if (f16691 == null) {
                        f16691 = new C4461();
                    }
                } finally {
                }
            }
        }
        return f16691;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m9010(int i, int i2, boolean z, boolean z2) {
        boolean z3;
        if (z) {
            if (f16692) {
                if (!f16689 || this.f16694.get()) {
                    if (z2) {
                        if (Log.isLoggable("HardwareConfig", 2)) {
                            return false;
                        }
                    } else if (i >= 0 && i2 >= 0) {
                        synchronized (this) {
                            try {
                                int i3 = this.f16695 + 1;
                                this.f16695 = i3;
                                if (i3 >= 50) {
                                    this.f16695 = 0;
                                    int length = f16690.list().length;
                                    long m9011 = m9011();
                                    boolean z4 = ((long) length) < m9011;
                                    this.f16693 = z4;
                                    if (!z4 && Log.isLoggable("Downsampler", 5)) {
                                        String str = "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + m9011;
                                    }
                                }
                                z3 = this.f16693;
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (z3) {
                            return true;
                        }
                        if (Log.isLoggable("HardwareConfig", 2)) {
                            return false;
                        }
                    } else if (Log.isLoggable("HardwareConfig", 2)) {
                    }
                } else if (Log.isLoggable("HardwareConfig", 2)) {
                    return false;
                }
            } else if (Log.isLoggable("HardwareConfig", 2)) {
                return false;
            }
        } else if (Log.isLoggable("HardwareConfig", 2)) {
            return false;
        }
        return false;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m9011() {
        if (Build.VERSION.SDK_INT == 28) {
            Iterator it = Arrays.asList("GM1900", "GM1901", "GM1903", "GM1911", "GM1915", "ONEPLUS A3000", "ONEPLUS A3010", "ONEPLUS A5010", "ONEPLUS A5000", "ONEPLUS A3003", "ONEPLUS A6000", "ONEPLUS A6003", "ONEPLUS A6010", "ONEPLUS A6013").iterator();
            while (it.hasNext()) {
                if (Build.MODEL.startsWith((String) it.next())) {
                    return 500;
                }
            }
        }
        return this.f16696;
    }
}
