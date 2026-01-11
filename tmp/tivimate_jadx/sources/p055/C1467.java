package p055;

import j$.util.Objects;
import p035.AbstractC1220;

/* renamed from: ʽⁱ.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1467 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f5744;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f5745;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f5746;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C1448 f5747 = C1448.f5640;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Object f5748;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Object f5749;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f5750;

    static {
        AbstractC1220.m3785(0, 1, 2, 3, 4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !C1467.class.equals(obj.getClass())) {
            return false;
        }
        C1467 c1467 = (C1467) obj;
        return Objects.equals(this.f5749, c1467.f5749) && Objects.equals(this.f5748, c1467.f5748) && this.f5744 == c1467.f5744 && this.f5745 == c1467.f5745 && this.f5746 == c1467.f5746 && this.f5750 == c1467.f5750 && Objects.equals(this.f5747, c1467.f5747);
    }

    public final int hashCode() {
        Object obj = this.f5749;
        int hashCode = (217 + (obj == null ? 0 : obj.hashCode())) * 31;
        Object obj2 = this.f5748;
        int hashCode2 = (((hashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.f5744) * 31;
        long j = this.f5745;
        int i = (hashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.f5746;
        return this.f5747.hashCode() + ((((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.f5750 ? 1 : 0)) * 31);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m4268(long j) {
        int i;
        C1448 c1448 = this.f5747;
        int i2 = c1448.f5643;
        int i3 = i2 - 1;
        if (i3 == i2 - 1) {
            c1448.m4240(i3).getClass();
        }
        while (i3 >= 0 && j != Long.MIN_VALUE) {
            c1448.m4240(i3).getClass();
            if (j >= 0) {
                break;
            }
            i3--;
        }
        if (i3 >= 0) {
            C1492 m4240 = c1448.m4240(i3);
            int i4 = m4240.f5894;
            if (i4 != -1) {
                while (i < i4) {
                    int i5 = m4240.f5891[i];
                    i = (i5 == 0 || i5 == 1) ? 0 : i + 1;
                }
            }
            return i3;
        }
        return -1;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long m4269(int i) {
        this.f5747.m4240(i).getClass();
        return 0L;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m4270(int i) {
        return this.f5747.m4240(i).m4296(-1);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m4271(int i) {
        this.f5747.m4240(i).getClass();
        return false;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m4272(Object obj, Object obj2, int i, long j, long j2, C1448 c1448, boolean z) {
        this.f5749 = obj;
        this.f5748 = obj2;
        this.f5744 = i;
        this.f5745 = j;
        this.f5746 = j2;
        this.f5747 = c1448;
        this.f5750 = z;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m4273(long j) {
        C1492 m4240;
        int i;
        C1448 c1448 = this.f5747;
        long j2 = this.f5745;
        int i2 = c1448.f5643;
        if (j != Long.MIN_VALUE && (j2 == -9223372036854775807L || j < j2)) {
            int i3 = 0;
            while (i3 < i2) {
                c1448.m4240(i3).getClass();
                c1448.m4240(i3).getClass();
                if (0 > j && ((i = (m4240 = c1448.m4240(i3)).f5894) == -1 || m4240.m4296(-1) < i)) {
                    break;
                }
                i3++;
            }
            if (i3 < i2) {
                if (j2 != -9223372036854775807L) {
                    c1448.m4240(i3).getClass();
                    if (0 <= j2) {
                    }
                }
                return i3;
            }
        }
        return -1;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long m4274(int i, int i2) {
        C1492 m4240 = this.f5747.m4240(i);
        if (m4240.f5894 != -1) {
            return m4240.f5895[i2];
        }
        return -9223372036854775807L;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m4275(int i) {
        C1448 c1448 = this.f5747;
        int i2 = c1448.f5643;
        if (i != i2 - 1 || i != i2 - 1) {
            return false;
        }
        c1448.m4240(i).getClass();
        return false;
    }
}
