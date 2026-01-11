package com.google.crypto.tink.shaded.protobuf;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ﹳـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0748 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object[] f3068;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f3069;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f3070;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0749 f3071;

    public C0748(AbstractC0749 abstractC0749, String str, Object[] objArr) {
        this.f3071 = abstractC0749;
        this.f3070 = str;
        this.f3068 = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f3069 = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 < 55296) {
                this.f3069 = i | (charAt2 << i2);
                return;
            } else {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m2698() {
        int i = this.f3069;
        if ((i & 1) != 0) {
            return 1;
        }
        return (i & 4) == 4 ? 3 : 2;
    }
}
