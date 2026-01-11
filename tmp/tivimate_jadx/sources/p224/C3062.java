package p224;

import java.math.RoundingMode;
import p171.C2641;
import p171.C2647;
import p171.InterfaceC2639;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ˏⁱ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3062 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f11619;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f11620;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f11621;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f11622;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public long[] f11623;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f11624;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f11625;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f11626;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int[] f11627;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f11628;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC2639 f11629;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3061 f11630;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public long f11631;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f11632;

    public C3062(int i, C3061 c3061, InterfaceC2639 interfaceC2639) {
        int i2 = c3061.f11614;
        this.f11630 = c3061;
        int m6610 = c3061.m6610();
        boolean z = true;
        if (m6610 != 1 && m6610 != 2) {
            z = false;
        }
        AbstractC3731.m7849(z);
        int i3 = (((i % 10) + 48) << 8) | ((i / 10) + 48);
        this.f11620 = (m6610 == 2 ? 1667497984 : 1651965952) | i3;
        long j = c3061.f11616 * 1000000;
        long j2 = c3061.f11613;
        String str = AbstractC3712.f14481;
        this.f11624 = AbstractC3712.m7797(i2, j, j2, RoundingMode.DOWN);
        this.f11629 = interfaceC2639;
        this.f11622 = m6610 == 2 ? i3 | 1650720768 : -1;
        this.f11631 = -1L;
        this.f11623 = new long[512];
        this.f11627 = new int[512];
        this.f11632 = i2;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2647 m6611(long j) {
        if (this.f11625 == 0) {
            C2641 c2641 = new C2641(0L, this.f11631);
            return new C2647(c2641, c2641);
        }
        int i = (int) (j / ((this.f11624 * 1) / this.f11632));
        int m7769 = AbstractC3712.m7769(this.f11627, i, true, true);
        if (this.f11627[m7769] == i) {
            C2641 m6612 = m6612(m7769);
            return new C2647(m6612, m6612);
        }
        C2641 m66122 = m6612(m7769);
        int i2 = m7769 + 1;
        return i2 < this.f11623.length ? new C2647(m66122, m6612(i2)) : new C2647(m66122, m66122);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2641 m6612(int i) {
        return new C2641(((this.f11624 * 1) / this.f11632) * this.f11627[i], this.f11623[i]);
    }
}
