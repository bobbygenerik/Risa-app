package p438;

import com.parse.ʽˑ;
import p000.C0754;
import p150.InterfaceC2417;
import p152.AbstractC2444;
import p246.InterfaceC3291;

/* renamed from: ﹶٴ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5171 implements InterfaceC3291 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5174 f19466;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC3291 f19467;

    public C5171(InterfaceC3291 interfaceC3291) {
        this.f19467 = interfaceC3291;
        this.f19466 = new C5174(interfaceC3291.mo4337());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C5171.class == obj.getClass() && AbstractC2444.m5562(this.f19467, ((C5171) obj).f19467);
    }

    public final int hashCode() {
        return this.f19467.hashCode();
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ʽ */
    public final Object mo4336(ʽˑ r2) {
        if (r2.ˏי()) {
            return r2.ـˆ(this.f19467);
        }
        return null;
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ˈ */
    public final InterfaceC2417 mo4337() {
        return this.f19466;
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ﹳٴ */
    public final void mo4339(C0754 c0754, Object obj) {
        if (obj != null) {
            c0754.m2752(this.f19467, obj);
        } else {
            c0754.m2748();
        }
    }
}
