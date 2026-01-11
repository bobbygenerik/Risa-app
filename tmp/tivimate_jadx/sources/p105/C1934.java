package p105;

import p307.AbstractC3740;

/* renamed from: ˆי.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1934 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] f7693;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f7694;

    public C1934(int i) {
        if (i < 1 || i > 256) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "Invalid distance: "));
        }
        this.f7694 = i;
        this.f7693 = new byte[i];
    }

    public C1934(int i, byte[] bArr) {
        this.f7693 = bArr;
        this.f7694 = i;
    }
}
