package p220;

import p296.AbstractC3659;
import ˉˆ.ʿ;
import ˊⁱ.ˑﹳ;

/* renamed from: ˏـ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3032 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3029 f11560 = new C3029();

    public C3032() {
    }

    public C3032(ˑﹳ r4) {
        ʿ r0 = new ʿ(19, this);
        r4.getClass();
        ((C3029) r4.ᴵˊ).m6570(AbstractC3033.f11562, new ˑﹳ(6, r0));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6577(Object obj) {
        this.f11560.m6572(obj);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6578(Exception exc) {
        C3029 c3029 = this.f11560;
        c3029.getClass();
        AbstractC3659.m7683(exc, "Exception must not be null");
        synchronized (c3029.f11554) {
            try {
                if (c3029.f11550) {
                    return;
                }
                c3029.f11550 = true;
                c3029.f11555 = exc;
                c3029.f11553.m1593(c3029);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
