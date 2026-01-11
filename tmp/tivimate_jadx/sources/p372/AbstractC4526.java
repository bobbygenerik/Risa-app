package p372;

import p055.C1495;
import p266.C3456;
import p266.InterfaceC3462;

/* renamed from: ᵢˋ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4526 extends AbstractC4519 {

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final long f16948;

    public AbstractC4526(InterfaceC3462 interfaceC3462, C3456 c3456, C1495 c1495, int i, Object obj, long j, long j2, long j3) {
        super(interfaceC3462, c3456, 1, c1495, i, obj, j, j2);
        c1495.getClass();
        this.f16948 = j3;
    }

    /* renamed from: ⁱˊ */
    public abstract boolean mo9087();

    /* renamed from: ﹳٴ */
    public long mo9088() {
        long j = this.f16948;
        if (j != -1) {
            return j + 1;
        }
        return -1L;
    }
}
