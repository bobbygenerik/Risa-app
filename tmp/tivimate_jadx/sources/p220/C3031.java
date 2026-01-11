package p220;

import androidx.leanback.widget.RunnableC0142;
import java.util.concurrent.Executor;
import p179.RunnableC2689;

/* renamed from: ˏـ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3031 implements InterfaceC3036, InterfaceC3030, InterfaceC3028, InterfaceC3034 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f11556;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f11557;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Object f11558;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Executor f11559;

    public C3031(Executor executor, InterfaceC3026 interfaceC3026) {
        this.f11557 = 1;
        this.f11556 = new Object();
        this.f11559 = executor;
        this.f11558 = interfaceC3026;
    }

    public C3031(Executor executor, InterfaceC3028 interfaceC3028) {
        this.f11557 = 2;
        this.f11556 = new Object();
        this.f11559 = executor;
        this.f11558 = interfaceC3028;
    }

    public C3031(Executor executor, InterfaceC3030 interfaceC3030) {
        this.f11557 = 3;
        this.f11556 = new Object();
        this.f11559 = executor;
        this.f11558 = interfaceC3030;
    }

    public C3031(Executor executor, InterfaceC3034 interfaceC3034) {
        this.f11557 = 0;
        this.f11556 = new Object();
        this.f11559 = executor;
        this.f11558 = interfaceC3034;
    }

    public C3031(Executor executor, InterfaceC3037 interfaceC3037, C3029 c3029) {
        this.f11557 = 4;
        this.f11559 = executor;
        this.f11556 = interfaceC3037;
        this.f11558 = c3029;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m6574(C3029 c3029) {
        if (c3029.m6567() || c3029.f11551) {
            return;
        }
        synchronized (this.f11556) {
        }
        this.f11559.execute(new RunnableC2689(this, 5, c3029));
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    private final void m6575(C3029 c3029) {
        if (c3029.m6567()) {
            synchronized (this.f11556) {
            }
            this.f11559.execute(new RunnableC2689(this, 6, c3029));
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    private final void m6576(C3029 c3029) {
        synchronized (this.f11556) {
        }
        this.f11559.execute(new RunnableC2689(this, 4, c3029));
    }

    @Override // p220.InterfaceC3030
    /* renamed from: יـ */
    public void mo6555(Object obj) {
        ((C3029) this.f11558).m6562(obj);
    }

    @Override // p220.InterfaceC3028
    /* renamed from: ٴʼ */
    public void mo4588(Exception exc) {
        ((C3029) this.f11558).m6560(exc);
    }

    @Override // p220.InterfaceC3034
    /* renamed from: ᵔﹳ */
    public void mo6556() {
        ((C3029) this.f11558).m6566();
    }

    @Override // p220.InterfaceC3036
    /* renamed from: ﹳٴ */
    public final void mo6559(C3029 c3029) {
        switch (this.f11557) {
            case 0:
                if (c3029.f11551) {
                    synchronized (this.f11556) {
                    }
                    this.f11559.execute(new RunnableC0142(22, this));
                    return;
                }
                return;
            case 1:
                m6576(c3029);
                return;
            case 2:
                m6574(c3029);
                return;
            case 3:
                m6575(c3029);
                return;
            default:
                this.f11559.execute(new RunnableC2689(this, 7, c3029));
                return;
        }
    }
}
