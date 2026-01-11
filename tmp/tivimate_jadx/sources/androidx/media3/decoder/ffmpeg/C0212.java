package androidx.media3.decoder.ffmpeg;

import p131.C2196;
import p230.AbstractC3143;

/* renamed from: androidx.media3.decoder.ffmpeg.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0212 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object f1184;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f1185;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f1186;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m783() {
        synchronized (this) {
            try {
                if (this.f1186) {
                    return;
                }
                this.f1186 = true;
                this.f1185 = true;
                C2196 c2196 = (C2196) this.f1184;
                if (c2196 != null) {
                    try {
                        Runnable runnable = (Runnable) c2196.f8656;
                        AbstractC3143 abstractC3143 = (AbstractC3143) c2196.f8653;
                        Runnable runnable2 = (Runnable) c2196.f8655;
                        if (runnable == null) {
                            abstractC3143.cancel();
                            runnable2.run();
                        } else {
                            runnable.run();
                        }
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.f1185 = false;
                            notifyAll();
                            throw th;
                        }
                    }
                }
                synchronized (this) {
                    this.f1185 = false;
                    notifyAll();
                }
            } finally {
            }
        }
    }
}
