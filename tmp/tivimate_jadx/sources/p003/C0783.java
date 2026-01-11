package p003;

import android.media.metrics.LogSessionId;
import android.os.Build;
import j$.util.Objects;

/* renamed from: ʻʿ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0783 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f3268;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0790 f3269;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f3270;

    static {
        new C0783("");
    }

    public C0783(String str) {
        this.f3270 = str;
        this.f3269 = Build.VERSION.SDK_INT >= 31 ? new C0790() : null;
        this.f3268 = new Object();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0783)) {
            return false;
        }
        C0783 c0783 = (C0783) obj;
        return Objects.equals(this.f3270, c0783.f3270) && Objects.equals(this.f3269, c0783.f3269) && Objects.equals(this.f3268, c0783.f3268);
    }

    public final int hashCode() {
        return Objects.hash(this.f3270, this.f3269, this.f3268);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized LogSessionId m2878() {
        C0790 c0790;
        c0790 = this.f3269;
        c0790.getClass();
        return (LogSessionId) c0790.f3288;
    }
}
