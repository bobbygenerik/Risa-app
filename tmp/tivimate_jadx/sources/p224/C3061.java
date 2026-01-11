package p224;

import p305.AbstractC3731;

/* renamed from: ˏⁱ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3061 implements InterfaceC3066 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f11613;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f11614;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f11615;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f11616;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f11617;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f11618;

    public C3061(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f11617 = i;
        this.f11616 = i2;
        this.f11613 = i3;
        this.f11614 = i4;
        this.f11615 = i5;
        this.f11618 = i6;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m6610() {
        int i = this.f11617;
        if (i == 1935960438) {
            return 2;
        }
        if (i == 1935963489) {
            return 1;
        }
        if (i == 1937012852) {
            return 3;
        }
        AbstractC3731.m7850("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(i));
        return -1;
    }

    @Override // p224.InterfaceC3066
    /* renamed from: ﹳٴ */
    public final int mo6609() {
        return 1752331379;
    }
}
