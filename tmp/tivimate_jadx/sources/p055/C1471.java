package p055;

import android.media.AudioAttributes;
import android.os.Build;
import p021.AbstractC1031;
import p035.AbstractC1220;
import p305.AbstractC3712;
import ﹳי.ʽ;

/* renamed from: ʽⁱ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1471 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C1471 f5756 = new C1471(0);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public ʽ f5757;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f5758;

    static {
        AbstractC1220.m3785(0, 1, 2, 3, 4);
        AbstractC3712.m7802(5);
    }

    public C1471(int i) {
        this.f5758 = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C1471.class == obj.getClass() && this.f5758 == ((C1471) obj).f5758;
    }

    public final int hashCode() {
        return (((((527 + this.f5758) * 961) + 1) * 31) + 1) * 961;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [ﹳי.ʽ, java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʽ m4277() {
        if (this.f5757 == null) {
            ?? obj = new Object();
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(this.f5758).setFlags(0).setUsage(1);
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                AbstractC1031.m3359(usage);
            }
            if (i >= 32) {
                AbstractC1457.m4245(usage);
                AbstractC1457.m4246(usage);
            }
            ((ʽ) obj).ʾˋ = usage.build();
            this.f5757 = obj;
        }
        return this.f5757;
    }
}
