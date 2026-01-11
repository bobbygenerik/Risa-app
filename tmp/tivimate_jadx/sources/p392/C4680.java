package p392;

import p305.AbstractC3731;

/* renamed from: ⁱי.ᴵʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4680 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4680 f17566;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4680 f17567;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f17568;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f17569;

    static {
        C4680 c4680 = new C4680(0L, 0L);
        f17566 = new C4680(Long.MAX_VALUE, Long.MAX_VALUE);
        new C4680(Long.MAX_VALUE, 0L);
        new C4680(0L, Long.MAX_VALUE);
        f17567 = c4680;
    }

    public C4680(long j, long j2) {
        AbstractC3731.m7849(j >= 0);
        AbstractC3731.m7849(j2 >= 0);
        this.f17569 = j;
        this.f17568 = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C4680.class == obj.getClass()) {
            C4680 c4680 = (C4680) obj;
            if (this.f17569 == c4680.f17569 && this.f17568 == c4680.f17568) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f17569) * 31) + ((int) this.f17568);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x005c A[RETURN] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m9292(long r12, long r14, long r16) {
        /*
            r11 = this;
            long r0 = r11.f17569
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            long r5 = r11.f17568
            if (r4 != 0) goto Lf
            int r4 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r4 != 0) goto Lf
            return r12
        Lf:
            java.lang.String r4 = p305.AbstractC3712.f14481
            long r7 = r12 - r0
            long r0 = r0 ^ r12
            long r9 = r12 ^ r7
            long r0 = r0 & r9
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L1d
            r7 = -9223372036854775808
        L1d:
            long r0 = r12 + r5
            long r9 = r12 ^ r0
            long r5 = r5 ^ r0
            long r5 = r5 & r9
            int r2 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r2 >= 0) goto L2c
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
        L2c:
            int r2 = (r7 > r14 ? 1 : (r7 == r14 ? 0 : -1))
            r3 = 0
            r4 = 1
            if (r2 > 0) goto L38
            int r2 = (r14 > r0 ? 1 : (r14 == r0 ? 0 : -1))
            if (r2 > 0) goto L38
            r2 = r4
            goto L39
        L38:
            r2 = r3
        L39:
            int r5 = (r7 > r16 ? 1 : (r7 == r16 ? 0 : -1))
            if (r5 > 0) goto L42
            int r0 = (r16 > r0 ? 1 : (r16 == r0 ? 0 : -1))
            if (r0 > 0) goto L42
            r3 = r4
        L42:
            if (r2 == 0) goto L57
            if (r3 == 0) goto L57
            long r0 = r14 - r12
            long r0 = java.lang.Math.abs(r0)
            long r12 = r16 - r12
            long r12 = java.lang.Math.abs(r12)
            int r12 = (r0 > r12 ? 1 : (r0 == r12 ? 0 : -1))
            if (r12 > 0) goto L5c
            goto L59
        L57:
            if (r2 == 0) goto L5a
        L59:
            return r14
        L5a:
            if (r3 == 0) goto L5d
        L5c:
            return r16
        L5d:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p392.C4680.m9292(long, long, long):long");
    }
}
