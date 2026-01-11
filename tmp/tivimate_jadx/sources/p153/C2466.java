package p153;

import com.bumptech.glide.ʽ;
import p023.C1064;
import p126.C2134;
import p126.InterfaceC2138;
import p126.InterfaceC2139;
import p126.InterfaceC2142;
import p329.InterfaceC4087;

/* renamed from: ˊʽ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2466 implements InterfaceC2142 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2462 f9429;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f9430;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ThreadLocal f9431;

    public C2466(C1064 c1064, ThreadLocal threadLocal) {
        this.f9430 = c1064;
        this.f9431 = threadLocal;
        this.f9429 = new C2462(threadLocal);
    }

    @Override // p126.InterfaceC2142
    public final InterfaceC2138 getKey() {
        return this.f9429;
    }

    public final String toString() {
        return "ThreadLocal(value=" + this.f9430 + ", threadLocal = " + this.f9431 + ')';
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ʿᵢ */
    public final Object mo3418(Object obj, InterfaceC4087 interfaceC4087) {
        return interfaceC4087.mo3749(obj, this);
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ˊᵔ */
    public final InterfaceC2142 mo3419(InterfaceC2138 interfaceC2138) {
        if (this.f9429.equals(interfaceC2138)) {
            return this;
        }
        return null;
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ـˆ */
    public final InterfaceC2139 mo3420(InterfaceC2138 interfaceC2138) {
        return this.f9429.equals(interfaceC2138) ? C2134.f8324 : this;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object m5591(InterfaceC2139 interfaceC2139) {
        ThreadLocal threadLocal = this.f9431;
        Object obj = threadLocal.get();
        threadLocal.set(this.f9430);
        return obj;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5592(Object obj) {
        this.f9431.set(obj);
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ﹶᐧ */
    public final InterfaceC2139 mo3421(InterfaceC2139 interfaceC2139) {
        return ʽ.ˏי(this, interfaceC2139);
    }
}
