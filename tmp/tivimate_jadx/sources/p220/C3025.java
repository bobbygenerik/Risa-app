package p220;

import java.util.concurrent.ExecutionException;

/* renamed from: ˏـ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3025 implements InterfaceC3030, InterfaceC3028, InterfaceC3034 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C3029 f11538;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f11539 = new Object();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f11540;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f11541;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f11542;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public Exception f11543;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f11544;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f11545;

    public C3025(int i, C3029 c3029) {
        this.f11544 = i;
        this.f11538 = c3029;
    }

    @Override // p220.InterfaceC3030
    /* renamed from: יـ, reason: contains not printable characters */
    public final void mo6555(Object obj) {
        synchronized (this.f11539) {
            this.f11540++;
            m6557();
        }
    }

    @Override // p220.InterfaceC3028
    /* renamed from: ٴʼ */
    public final void mo4588(Exception exc) {
        synchronized (this.f11539) {
            this.f11545++;
            this.f11543 = exc;
            m6557();
        }
    }

    @Override // p220.InterfaceC3034
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void mo6556() {
        synchronized (this.f11539) {
            this.f11542++;
            this.f11541 = true;
            m6557();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6557() {
        int i = this.f11540 + this.f11545 + this.f11542;
        int i2 = this.f11544;
        if (i == i2) {
            Exception exc = this.f11543;
            C3029 c3029 = this.f11538;
            if (exc == null) {
                if (this.f11541) {
                    c3029.m6566();
                    return;
                } else {
                    c3029.m6562(null);
                    return;
                }
            }
            c3029.m6560(new ExecutionException(this.f11545 + " out of " + i2 + " underlying tasks failed", this.f11543));
        }
    }
}
