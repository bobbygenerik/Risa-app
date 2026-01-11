package p055;

import android.util.Pair;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ʽⁱ.ʼˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1445 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1470 f5630 = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ʽⁱ.ˑٴ] */
    static {
        AbstractC3712.m7802(0);
        AbstractC3712.m7802(1);
        AbstractC3712.m7802(2);
    }

    public boolean equals(Object obj) {
        int mo4218;
        if (this != obj) {
            if (obj instanceof AbstractC1445) {
                AbstractC1445 abstractC1445 = (AbstractC1445) obj;
                if (abstractC1445.mo4222() == mo4222() && abstractC1445.mo4227() == mo4227()) {
                    C1466 c1466 = new C1466();
                    C1467 c1467 = new C1467();
                    C1466 c14662 = new C1466();
                    C1467 c14672 = new C1467();
                    int i = 0;
                    while (true) {
                        if (i >= mo4222()) {
                            int i2 = 0;
                            while (true) {
                                if (i2 >= mo4227()) {
                                    int mo4229 = mo4229(true);
                                    if (mo4229 == abstractC1445.mo4229(true) && (mo4218 = mo4218(true)) == abstractC1445.mo4218(true)) {
                                        while (mo4229 != mo4218) {
                                            int mo4223 = mo4223(mo4229, 0, true);
                                            if (mo4223 == abstractC1445.mo4223(mo4229, 0, true)) {
                                                mo4229 = mo4223;
                                            }
                                        }
                                    }
                                } else {
                                    if (!mo4231(i2, c1467, true).equals(abstractC1445.mo4231(i2, c14672, true))) {
                                        break;
                                    }
                                    i2++;
                                }
                            }
                        } else {
                            if (!mo4221(i, c1466, 0L).equals(abstractC1445.mo4221(i, c14662, 0L))) {
                                break;
                            }
                            i++;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        C1466 c1466 = new C1466();
        C1467 c1467 = new C1467();
        int mo4222 = mo4222() + 217;
        for (int i = 0; i < mo4222(); i++) {
            mo4222 = (mo4222 * 31) + mo4221(i, c1466, 0L).hashCode();
        }
        int mo4227 = mo4227() + (mo4222 * 31);
        for (int i2 = 0; i2 < mo4227(); i2++) {
            mo4227 = (mo4227 * 31) + mo4231(i2, c1467, true).hashCode();
        }
        int mo4229 = mo4229(true);
        while (mo4229 != -1) {
            mo4227 = (mo4227 * 31) + mo4229;
            mo4229 = mo4223(mo4229, 0, true);
        }
        return mo4227;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final Pair m4216(C1466 c1466, C1467 c1467, int i, long j) {
        Pair m4219 = m4219(c1466, c1467, i, j, 0L);
        m4219.getClass();
        return m4219;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m4217() {
        return mo4222() == 0;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public int mo4218(boolean z) {
        if (m4217()) {
            return -1;
        }
        return mo4222() - 1;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Pair m4219(C1466 c1466, C1467 c1467, int i, long j, long j2) {
        AbstractC3731.m7860(i, mo4222());
        mo4221(i, c1466, j2);
        if (j == -9223372036854775807L) {
            j = c1466.f5742;
            if (j == -9223372036854775807L) {
                return null;
            }
        }
        int i2 = c1466.f5738;
        mo4231(i2, c1467, false);
        while (i2 < c1466.f5734 && c1467.f5746 != j) {
            int i3 = i2 + 1;
            if (mo4231(i3, c1467, false).f5746 > j) {
                break;
            }
            i2 = i3;
        }
        mo4231(i2, c1467, true);
        long j3 = j - c1467.f5746;
        long j4 = c1467.f5745;
        if (j4 != -9223372036854775807L) {
            j3 = Math.min(j3, j4 - 1);
        }
        long max = Math.max(0L, j3);
        Object obj = c1467.f5748;
        obj.getClass();
        return Pair.create(obj, Long.valueOf(max));
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m4220(int i, C1467 c1467, C1466 c1466, int i2, boolean z) {
        int i3 = mo4231(i, c1467, false).f5744;
        if (mo4221(i3, c1466, 0L).f5734 != i) {
            return i + 1;
        }
        int mo4223 = mo4223(i3, i2, z);
        if (mo4223 == -1) {
            return -1;
        }
        return mo4221(mo4223, c1466, 0L).f5738;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public abstract C1466 mo4221(int i, C1466 c1466, long j);

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public abstract int mo4222();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int mo4223(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == mo4218(z)) {
                return -1;
            }
            return i + 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == mo4218(z) ? mo4229(z) : i + 1;
        }
        throw new IllegalStateException();
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int mo4224(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == mo4229(z)) {
                return -1;
            }
            return i - 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == mo4229(z) ? mo4218(z) : i - 1;
        }
        throw new IllegalStateException();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C1467 mo4225(Object obj, C1467 c1467) {
        return mo4231(mo4228(obj), c1467, true);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m4226(int i, C1466 c1466) {
        mo4221(i, c1466, 0L);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public abstract int mo4227();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public abstract int mo4228(Object obj);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int mo4229(boolean z) {
        return m4217() ? -1 : 0;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public abstract Object mo4230(int i);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public abstract C1467 mo4231(int i, C1467 c1467, boolean z);
}
