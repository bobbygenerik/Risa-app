package p425;

import android.os.Build;
import j$.util.Objects;
import java.util.Set;
import p017.AbstractC0951;
import p017.AbstractC0983;
import p017.AbstractC0997;
import p305.AbstractC3712;

/* renamed from: ﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5050 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C5050 f18996;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractC0997 f18997;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f18998;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f18999;

    /* JADX WARN: Type inference failed for: r1v1, types: [ʼʻ.ʽʽ, ʼʻ.ˆﾞ] */
    static {
        C5050 c5050;
        if (Build.VERSION.SDK_INT >= 33) {
            ?? abstractC0951 = new AbstractC0951(4);
            for (int i = 1; i <= 10; i++) {
                abstractC0951.m3239(Integer.valueOf(AbstractC3712.m7784(i)));
            }
            c5050 = new C5050(2, abstractC0951.m3244());
        } else {
            c5050 = new C5050(2, 10);
        }
        f18996 = c5050;
    }

    public C5050(int i, int i2) {
        this.f18999 = i;
        this.f18998 = i2;
        this.f18997 = null;
    }

    public C5050(int i, Set set) {
        this.f18999 = i;
        AbstractC0997 m3276 = AbstractC0997.m3276(set);
        this.f18997 = m3276;
        AbstractC0983 it = m3276.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 = Math.max(i2, Integer.bitCount(((Integer) it.next()).intValue()));
        }
        this.f18998 = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5050)) {
            return false;
        }
        C5050 c5050 = (C5050) obj;
        return this.f18999 == c5050.f18999 && this.f18998 == c5050.f18998 && Objects.equals(this.f18997, c5050.f18997);
    }

    public final int hashCode() {
        int i = ((this.f18999 * 31) + this.f18998) * 31;
        AbstractC0997 abstractC0997 = this.f18997;
        return i + (abstractC0997 == null ? 0 : abstractC0997.hashCode());
    }

    public final String toString() {
        return "AudioProfile[format=" + this.f18999 + ", maxChannelCount=" + this.f18998 + ", channelMasks=" + this.f18997 + "]";
    }
}
