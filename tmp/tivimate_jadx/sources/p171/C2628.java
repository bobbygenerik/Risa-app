package p171;

import java.util.Arrays;
import p305.AbstractC3712;

/* renamed from: ˊﾞ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2628 implements InterfaceC2626 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long[] f9950;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long[] f9951;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long[] f9952;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int[] f9953;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f9954;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f9955;

    public C2628(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f9953 = iArr;
        this.f9950 = jArr;
        this.f9951 = jArr2;
        this.f9952 = jArr3;
        int length = iArr.length;
        this.f9954 = length;
        if (length > 0) {
            this.f9955 = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f9955 = 0L;
        }
    }

    public final String toString() {
        return "ChunkIndex(length=" + this.f9954 + ", sizes=" + Arrays.toString(this.f9953) + ", offsets=" + Arrays.toString(this.f9950) + ", timeUs=" + Arrays.toString(this.f9952) + ", durationsUs=" + Arrays.toString(this.f9951) + ")";
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˆʾ */
    public final C2647 mo2901(long j) {
        long[] jArr = this.f9952;
        int m7783 = AbstractC3712.m7783(jArr, j, true);
        long j2 = jArr[m7783];
        long[] jArr2 = this.f9950;
        C2641 c2641 = new C2641(j2, jArr2[m7783]);
        if (j2 >= j || m7783 == this.f9954 - 1) {
            return new C2647(c2641, c2641);
        }
        int i = m7783 + 1;
        return new C2647(c2641, new C2641(jArr[i], jArr2[i]));
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˉʿ */
    public final long mo2903() {
        return this.f9955;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ᵔᵢ */
    public final boolean mo2907() {
        return true;
    }
}
