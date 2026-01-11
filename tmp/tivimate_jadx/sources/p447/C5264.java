package p447;

import p296.AbstractC3659;

/* renamed from: ﹶﾞ.ˊـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5264 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5337 f19878;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f19877 = 1;

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f19876 = m10454();

    public C5264(C5337 c5337) {
        this.f19878 = c5337;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long m10454() {
        C5337 c5337 = this.f19878;
        AbstractC3659.m7687(c5337);
        long longValue = ((Long) AbstractC5321.f20067.m10388(null)).longValue();
        long longValue2 = ((Long) AbstractC5321.f20129.m10388(null)).longValue();
        for (int i = 1; i < this.f19877; i++) {
            longValue += longValue;
            if (longValue >= longValue2) {
                break;
            }
        }
        c5337.mo10493().getClass();
        return Math.min(longValue, longValue2) + System.currentTimeMillis();
    }
}
