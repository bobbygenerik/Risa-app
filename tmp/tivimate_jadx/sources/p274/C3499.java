package p274;

import p055.C1495;
import p262.C3433;
import p291.C3620;
import p305.AbstractC3712;
import p404.C4790;
import p420.InterfaceC4956;
import p421.C4996;

/* renamed from: ـᵢ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3499 implements InterfaceC4956 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public long[] f13804;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1495 f13805;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f13806;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f13808;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f13809;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C3620 f13811;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4790 f13810 = new C4790(2);

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public long f13807 = -9223372036854775807L;

    public C3499(C3620 c3620, C1495 c1495, boolean z) {
        this.f13805 = c1495;
        this.f13811 = c3620;
        this.f13804 = c3620.f14165;
        m7442(c3620, z);
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ʽ */
    public final void mo3459() {
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔᵢ */
    public final int mo3472(C3433 c3433, C4996 c4996, int i) {
        int i2 = this.f13809;
        boolean z = i2 == this.f13804.length;
        if (z && !this.f13806) {
            c4996.f3828 = 4;
            return -4;
        }
        if ((i & 2) != 0 || !this.f13808) {
            c3433.f13456 = this.f13805;
            this.f13808 = true;
            return -5;
        }
        if (z) {
            return -3;
        }
        if ((i & 1) == 0) {
            this.f13809 = i2 + 1;
        }
        if ((i & 4) == 0) {
            byte[] m9572 = this.f13810.m9572(this.f13811.f14166[i2]);
            c4996.m9843(m9572.length);
            c4996.f18672.put(m9572);
        }
        c4996.f18671 = this.f13804[i2];
        c4996.f3828 = 1;
        return -4;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔﹳ */
    public final int mo3473(long j) {
        int max = Math.max(this.f13809, AbstractC3712.m7808(this.f13804, j, true));
        int i = max - this.f13809;
        this.f13809 = max;
        return i;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7442(C3620 c3620, boolean z) {
        int i = this.f13809;
        long j = -9223372036854775807L;
        long j2 = i == 0 ? -9223372036854775807L : this.f13804[i - 1];
        this.f13806 = z;
        this.f13811 = c3620;
        long[] jArr = c3620.f14165;
        this.f13804 = jArr;
        long j3 = this.f13807;
        if (j3 == -9223372036854775807L) {
            if (j2 != -9223372036854775807L) {
                this.f13809 = AbstractC3712.m7808(jArr, j2, false);
            }
        } else {
            int m7808 = AbstractC3712.m7808(jArr, j3, true);
            this.f13809 = m7808;
            if (this.f13806 && m7808 == this.f13804.length) {
                j = j3;
            }
            this.f13807 = j;
        }
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ﹳٴ */
    public final boolean mo3475() {
        return true;
    }
}
