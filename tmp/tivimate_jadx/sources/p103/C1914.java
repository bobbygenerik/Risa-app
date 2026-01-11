package p103;

import java.util.Iterator;
import p204.C2919;
import ʽⁱ.ᵎﹶ;
import ˑי.ʽ;

/* renamed from: ˆˏ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1914 extends ᵎﹶ implements InterfaceC1918 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC1913 f7630;

    public C1914(ʽ r1, InterfaceC1913 interfaceC1913) {
        super(r1);
        this.f7630 = interfaceC1913;
    }

    @Override // p103.InterfaceC1918
    /* renamed from: ʾˋ */
    public final void mo4856(C2919 c2919, Object obj, Iterable iterable) {
        c2919.f11042 = true;
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.f7630.mo4855(it.next(), obj, c2919);
        }
    }
}
