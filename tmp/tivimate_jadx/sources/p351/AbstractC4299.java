package p351;

import p059.AbstractC1524;
import p126.C2134;
import p126.InterfaceC2136;
import p240.C3231;
import p322.C3966;
import p340.C4233;
import ᴵʼ.ʽ;

/* renamed from: ᵎﾞ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4299 implements InterfaceC4297 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC1524 f15927;

    public AbstractC4299(AbstractC1524 abstractC1524) {
        this.f15927 = abstractC1524;
    }

    @Override // p351.InterfaceC4297
    /* renamed from: ʽ */
    public final boolean mo8705(C3231 c3231) {
        return mo8704(c3231) && mo8703(this.f15927.mo4328());
    }

    /* renamed from: ˈ */
    public abstract int mo8702();

    /* renamed from: ˑﹳ */
    public abstract boolean mo8703(Object obj);

    @Override // p351.InterfaceC4297
    /* renamed from: ⁱˊ */
    public final C4233 mo8706(C3966 c3966) {
        return new C4233(new ʽ(this, (InterfaceC2136) null, 3), C2134.f8324, -2, 1);
    }
}
