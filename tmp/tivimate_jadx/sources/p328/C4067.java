package p328;

import p010.AbstractC0844;

/* renamed from: ᴵᵔ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4067 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f15485;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4075 f15486;

    public C4067(C4075 c4075, int i) {
        this.f15486 = c4075;
        this.f15485 = i;
    }

    public final String toString() {
        int i = this.f15485;
        StringBuilder m3017 = AbstractC0844.m3017(i == 0 ? "start" : i == 1 ? "delay ended" : "end", " ");
        m3017.append(this.f15486.f15531.toString());
        return m3017.toString();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long m8277() {
        C4075 c4075 = this.f15486;
        int i = this.f15485;
        if (i == 0) {
            return c4075.f15533;
        }
        if (i != 1) {
            return c4075.f15539;
        }
        long j = c4075.f15533;
        if (j == -1) {
            return -1L;
        }
        c4075.f15531.getClass();
        return j;
    }
}
