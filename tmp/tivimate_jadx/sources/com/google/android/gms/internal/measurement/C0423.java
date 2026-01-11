package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ᐧʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0423 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object[] f2162;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f2163;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f2164;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0514 f2165;

    public C0423(AbstractC0514 abstractC0514, String str, Object[] objArr) {
        this.f2165 = abstractC0514;
        this.f2164 = str;
        this.f2162 = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f2163 = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 1;
        int i3 = 13;
        while (true) {
            int i4 = i2 + 1;
            char charAt2 = str.charAt(i2);
            if (charAt2 < 55296) {
                this.f2163 = i | (charAt2 << i3);
                return;
            } else {
                i |= (charAt2 & 8191) << i3;
                i3 += 13;
                i2 = i4;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m1849() {
        int i = this.f2163;
        if ((i & 1) != 0) {
            return 1;
        }
        return (i & 4) == 4 ? 3 : 2;
    }
}
