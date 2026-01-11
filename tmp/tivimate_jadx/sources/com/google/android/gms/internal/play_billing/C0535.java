package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ʽˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0535 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object[] f2303;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f2304;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f2305;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0601 f2306;

    public C0535(AbstractC0601 abstractC0601, String str, Object[] objArr) {
        this.f2306 = abstractC0601;
        this.f2305 = str;
        this.f2303 = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f2304 = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 1;
        int i3 = 13;
        while (true) {
            int i4 = i2 + 1;
            char charAt2 = str.charAt(i2);
            if (charAt2 < 55296) {
                this.f2304 = i | (charAt2 << i3);
                return;
            } else {
                i |= (charAt2 & 8191) << i3;
                i3 += 13;
                i2 = i4;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m2079() {
        int i = this.f2304;
        if ((i & 1) != 0) {
            return 1;
        }
        return (i & 4) == 4 ? 3 : 2;
    }
}
