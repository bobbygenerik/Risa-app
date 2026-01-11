package p248;

import p164.C2580;
import p164.C2591;
import p164.C2599;
import p164.InterfaceC2576;
import p164.InterfaceC2590;

/* renamed from: יʾ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3297 implements InterfaceC2576 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C3296 f12691;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2591 f12692;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f12693;

    public C3297(C3296 c3296) {
        this.f12691 = c3296;
        this.f12692 = new C2591(c3296.f12686.mo5737());
    }

    @Override // p164.InterfaceC2576, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final synchronized void close() {
        if (this.f12693) {
            return;
        }
        this.f12693 = true;
        this.f12691.f12686.mo5739("0\r\n\r\n");
        C2591 c2591 = this.f12692;
        C2580 c2580 = c2591.f9821;
        c2591.f9821 = C2580.f9797;
        c2580.mo5783();
        c2580.mo5782();
        this.f12691.f12687 = 3;
    }

    @Override // p164.InterfaceC2576, java.io.Flushable
    public final synchronized void flush() {
        if (this.f12693) {
            return;
        }
        this.f12691.f12686.flush();
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ˑﹳ */
    public final C2580 mo5737() {
        return this.f12692;
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ᵔי */
    public final void mo5741(C2599 c2599, long j) {
        InterfaceC2590 interfaceC2590 = this.f12691.f12686;
        if (this.f12693) {
            throw new IllegalStateException("closed");
        }
        if (j == 0) {
            return;
        }
        interfaceC2590.mo5732(j);
        interfaceC2590.mo5739("\r\n");
        interfaceC2590.mo5741(c2599, j);
        interfaceC2590.mo5739("\r\n");
    }
}
