package p164;

import p430.AbstractC5096;

/* renamed from: ˊᐧ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2577 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f9778;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f9779;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f9780;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C2577 f9781;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f9782;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f9783;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C2577 f9784;

    public C2577() {
        this.f9783 = new byte[8192];
        this.f9780 = true;
        this.f9779 = false;
    }

    public C2577(byte[] bArr, int i, int i2, boolean z) {
        this.f9783 = bArr;
        this.f9782 = i;
        this.f9778 = i2;
        this.f9779 = z;
        this.f9780 = false;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2577 m5773() {
        this.f9779 = true;
        return new C2577(this.f9783, this.f9782, this.f9778, true);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m5774(C2577 c2577, int i) {
        boolean z = c2577.f9780;
        byte[] bArr = c2577.f9783;
        if (!z) {
            throw new IllegalStateException("only owner can write");
        }
        int i2 = c2577.f9778;
        int i3 = i2 + i;
        if (i3 > 8192) {
            if (c2577.f9779) {
                throw new IllegalArgumentException();
            }
            int i4 = c2577.f9782;
            if (i3 - i4 > 8192) {
                throw new IllegalArgumentException();
            }
            AbstractC5096.m10001(i4, i2, bArr, bArr);
            c2577.f9778 -= c2577.f9782;
            c2577.f9782 = 0;
        }
        int i5 = c2577.f9778;
        int i6 = this.f9782;
        System.arraycopy(this.f9783, i6, bArr, i5, (i6 + i) - i6);
        c2577.f9778 += i;
        this.f9782 += i;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5775(C2577 c2577) {
        c2577.f9781 = this;
        c2577.f9784 = this.f9784;
        this.f9784.f9781 = c2577;
        this.f9784 = c2577;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2577 m5776() {
        C2577 c2577 = this.f9784;
        C2577 c25772 = c2577 != this ? c2577 : null;
        C2577 c25773 = this.f9781;
        c25773.f9784 = c2577;
        this.f9784.f9781 = c25773;
        this.f9784 = null;
        this.f9781 = null;
        return c25772;
    }
}
