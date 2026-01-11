package p238;

import p010.C0843;

/* renamed from: ˑٴ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3204 extends C0843 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f12255;

    public C3204(int i) {
        super(i);
        this.f12255 = new Object();
    }

    @Override // p010.C0843, p238.InterfaceC3203
    /* renamed from: ˑﹳ */
    public final boolean mo3014(Object obj) {
        boolean mo3014;
        synchronized (this.f12255) {
            mo3014 = super.mo3014(obj);
        }
        return mo3014;
    }

    @Override // p010.C0843, p238.InterfaceC3203
    /* renamed from: ﾞᴵ */
    public final Object mo3016() {
        Object mo3016;
        synchronized (this.f12255) {
            mo3016 = super.mo3016();
        }
        return mo3016;
    }
}
