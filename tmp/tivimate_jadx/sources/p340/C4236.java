package p340;

import p324.C4030;
import p324.InterfaceC4041;

/* renamed from: ᵎˈ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4236 implements InterfaceC4041 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f15743;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4234 f15744;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C4030 f15745;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f15746;

    public C4236(C4234 c4234, long j, Object obj, C4030 c4030) {
        this.f15744 = c4234;
        this.f15746 = j;
        this.f15743 = obj;
        this.f15745 = c4030;
    }

    @Override // p324.InterfaceC4041
    /* renamed from: ﹳٴ */
    public final void mo4747() {
        C4234 c4234 = this.f15744;
        synchronized (c4234) {
            if (this.f15746 < c4234.m8633()) {
                return;
            }
            Object[] objArr = c4234.f15740;
            long j = this.f15746;
            if (objArr[((int) j) & (objArr.length - 1)] != this) {
                return;
            }
            AbstractC4240.m8643(objArr, j, AbstractC4240.f15759);
            c4234.m8626();
        }
    }
}
