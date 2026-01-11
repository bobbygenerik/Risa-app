package p220;

import java.util.concurrent.Executor;
import p179.RunnableC2689;

/* renamed from: ˏـ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3027 implements InterfaceC3036, InterfaceC3030, InterfaceC3028, InterfaceC3034 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC3035 f11546;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f11547;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3029 f11548;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Executor f11549;

    public /* synthetic */ C3027(Executor executor, InterfaceC3035 interfaceC3035, C3029 c3029, int i) {
        this.f11547 = i;
        this.f11549 = executor;
        this.f11546 = interfaceC3035;
        this.f11548 = c3029;
    }

    @Override // p220.InterfaceC3030
    /* renamed from: יـ */
    public void mo6555(Object obj) {
        this.f11548.m6562(obj);
    }

    @Override // p220.InterfaceC3028
    /* renamed from: ٴʼ */
    public void mo4588(Exception exc) {
        this.f11548.m6560(exc);
    }

    @Override // p220.InterfaceC3034
    /* renamed from: ᵔﹳ */
    public void mo6556() {
        this.f11548.m6566();
    }

    @Override // p220.InterfaceC3036
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo6559(C3029 c3029) {
        switch (this.f11547) {
            case 0:
                this.f11549.execute(new RunnableC2689(this, 2, c3029));
                return;
            default:
                this.f11549.execute(new RunnableC2689(this, 3, c3029));
                return;
        }
    }
}
