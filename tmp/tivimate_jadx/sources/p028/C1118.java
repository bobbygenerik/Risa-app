package p028;

import android.os.Looper;
import android.support.v4.media.session.ⁱˊ;

/* renamed from: ʼᐧ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1118 extends ⁱˊ {

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static volatile C1118 f4372;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final ExecutorC1119 f4373 = new ExecutorC1119(0);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C1117 f4374 = new C1117();

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static C1118 m3545() {
        if (f4372 != null) {
            return f4372;
        }
        synchronized (C1118.class) {
            try {
                if (f4372 == null) {
                    f4372 = new C1118();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f4372;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void m3546(Runnable runnable) {
        C1117 c1117 = this.f4374;
        if (c1117.f4371 == null) {
            synchronized (c1117.f4369) {
                try {
                    if (c1117.f4371 == null) {
                        c1117.f4371 = C1117.m3544(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        c1117.f4371.post(runnable);
    }
}
