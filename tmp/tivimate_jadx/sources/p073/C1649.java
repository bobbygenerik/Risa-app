package p073;

import p080.C1698;
import p080.InterfaceC1710;
import p087.C1740;

/* renamed from: ʾⁱ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1649 extends C1740 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public C1698 f6697;

    @Override // p087.C1740
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo4507(Object obj, Object obj2) {
        InterfaceC1710 interfaceC1710 = (InterfaceC1710) obj2;
        C1698 c1698 = this.f6697;
        if (c1698 == null || interfaceC1710 == null) {
            return;
        }
        c1698.f6939.ˆʾ(interfaceC1710, true);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m4508(int i) {
        long j;
        if (i >= 40) {
            m4692(0L);
        } else if (i >= 20 || i == 15) {
            synchronized (this) {
                j = this.f7095;
            }
            m4692(j / 2);
        }
    }

    @Override // p087.C1740
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int mo4509(Object obj) {
        InterfaceC1710 interfaceC1710 = (InterfaceC1710) obj;
        if (interfaceC1710 == null) {
            return 1;
        }
        return interfaceC1710.mo4405();
    }
}
