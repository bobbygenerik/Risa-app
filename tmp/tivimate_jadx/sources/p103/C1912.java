package p103;

import p134.C2209;
import p134.InterfaceC2206;
import p204.C2919;
import p285.C3574;
import p285.C3575;
import ʽⁱ.ᵎﹶ;
import ˑי.ʽ;

/* renamed from: ˆˏ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1912 extends AbstractC1916 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC2206[] f7629;

    public C1912(InterfaceC1918 interfaceC1918) {
        super(interfaceC1918);
        this.f7629 = ((C2209) ((ʽ) ((ᵎﹶ) interfaceC1918).ʾˋ).ʾˋ).f8675;
    }

    @Override // p103.InterfaceC1918
    /* renamed from: ʾˋ */
    public final void mo4856(C2919 c2919, Object obj, Iterable iterable) {
        InterfaceC2206[] interfaceC2206Arr = this.f7629;
        if (interfaceC2206Arr != null) {
            for (InterfaceC2206 interfaceC2206 : interfaceC2206Arr) {
                ʽ r4 = (ʽ) ((ᵎﹶ) this).ʾˋ;
                ((C3575) interfaceC2206).getClass();
                if (!C3575.m7528(((C2209) r4.ʾˋ).f8668, new C3574(obj), r4, obj)) {
                    return;
                }
            }
        }
        this.f7631.mo4856(c2919, obj, iterable);
    }
}
