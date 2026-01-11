package p159;

import p023.InterfaceC1069;
import p034.InterfaceC1192;
import p316.AbstractC3902;
import p329.InterfaceC4087;
import ˉˆ.ʿ;

/* renamed from: ˊˎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2546 implements InterfaceC1069 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ʿ f9653;

    public C2546(ʿ r1) {
        this.f9653 = r1;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        ((InterfaceC1192) this.f9653.ᴵˊ).close();
    }

    @Override // p023.InterfaceC1069
    /* renamed from: ʼʼ */
    public final Object mo3412(boolean z, InterfaceC4087 interfaceC4087, AbstractC3902 abstractC3902) {
        InterfaceC1192 interfaceC1192 = (InterfaceC1192) this.f9653.ᴵˊ;
        interfaceC1192.getClass();
        return interfaceC4087.mo3749(new C2543(new C2547(interfaceC1192.mo3702())), abstractC3902);
    }
}
