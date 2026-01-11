package p340;

import p089.AbstractC1757;
import p089.AbstractC1769;
import p126.InterfaceC2136;
import p324.C4030;

/* renamed from: ᵎˈ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4252 extends AbstractC1757 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C4030 f15808;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long f15809;

    @Override // p089.AbstractC1757
    /* renamed from: ⁱˊ */
    public final InterfaceC2136[] mo4716(AbstractC1769 abstractC1769) {
        long j = this.f15809;
        this.f15809 = -1L;
        this.f15808 = null;
        return ((C4234) abstractC1769).m8630(j);
    }

    @Override // p089.AbstractC1757
    /* renamed from: ﹳٴ */
    public final boolean mo4717(AbstractC1769 abstractC1769) {
        C4234 c4234 = (C4234) abstractC1769;
        if (this.f15809 >= 0) {
            return false;
        }
        long j = c4234.f15738;
        if (j < c4234.f15739) {
            c4234.f15739 = j;
        }
        this.f15809 = j;
        return true;
    }
}
