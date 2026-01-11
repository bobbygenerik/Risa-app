package p004;

import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ʻˆ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0805 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long[] f3425;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int[] f3426;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f3427;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int[] f3428;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final long f3429;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f3430;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0802 f3431;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long[] f3432;

    public C0805(C0802 c0802, long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2, long j) {
        AbstractC3731.m7849(iArr.length == jArr2.length);
        AbstractC3731.m7849(jArr.length == jArr2.length);
        AbstractC3731.m7849(iArr2.length == jArr2.length);
        this.f3431 = c0802;
        this.f3425 = jArr;
        this.f3426 = iArr;
        this.f3427 = i;
        this.f3432 = jArr2;
        this.f3428 = iArr2;
        this.f3429 = j;
        this.f3430 = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m2938(long j) {
        long[] jArr = this.f3432;
        for (int m7808 = AbstractC3712.m7808(jArr, j, true); m7808 < jArr.length; m7808++) {
            if ((this.f3428[m7808] & 1) != 0) {
                return m7808;
            }
        }
        return -1;
    }
}
