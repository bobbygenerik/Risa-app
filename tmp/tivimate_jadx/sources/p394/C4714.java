package p394;

import p164.C2580;
import p164.C2586;
import p164.C2599;
import p164.InterfaceC2588;
import p164.InterfaceC2592;
import p208.AbstractC2960;
import p208.C2968;

/* renamed from: ⁱᐧ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4714 extends AbstractC2960 implements InterfaceC2588 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f17806;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2968 f17807;

    public C4714(C2968 c2968, long j) {
        this.f17807 = c2968;
        this.f17806 = j;
    }

    @Override // p208.AbstractC2960, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // p208.AbstractC2960
    /* renamed from: ʽ */
    public final long mo4066() {
        return this.f17806;
    }

    @Override // p208.AbstractC2960
    /* renamed from: ˉˆ */
    public final InterfaceC2592 mo4067() {
        return new C2586(this);
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ˑﹳ */
    public final C2580 mo5762() {
        return C2580.f9797;
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ٴﹶ */
    public final long mo5763(C2599 c2599, long j) {
        throw new IllegalStateException("Unreadable ResponseBody! These Response objects have bodies that are stripped:\n * Response.cacheResponse\n * Response.networkResponse\n * Response.priorResponse\n * EventSourceListener\n * WebSocketListener\n(It is safe to call contentType() and contentLength() on these response bodies.)");
    }

    @Override // p208.AbstractC2960
    /* renamed from: ᵎﹶ */
    public final C2968 mo4068() {
        return this.f17807;
    }
}
