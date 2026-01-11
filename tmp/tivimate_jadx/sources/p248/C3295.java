package p248;

import p164.C2580;
import p164.C2591;
import p164.C2599;
import p164.InterfaceC2576;
import p394.AbstractC4710;

/* renamed from: יʾ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3295 implements InterfaceC2576 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C3296 f12681;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2591 f12682;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f12683;

    public C3295(C3296 c3296) {
        this.f12681 = c3296;
        this.f12682 = new C2591(c3296.f12686.mo5737());
    }

    @Override // p164.InterfaceC2576, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (this.f12683) {
            return;
        }
        this.f12683 = true;
        C2591 c2591 = this.f12682;
        C2580 c2580 = c2591.f9821;
        c2591.f9821 = C2580.f9797;
        c2580.mo5783();
        c2580.mo5782();
        this.f12681.f12687 = 3;
    }

    @Override // p164.InterfaceC2576, java.io.Flushable
    public final void flush() {
        if (this.f12683) {
            return;
        }
        this.f12681.f12686.flush();
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ˑﹳ */
    public final C2580 mo5737() {
        return this.f12682;
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ᵔי */
    public final void mo5741(C2599 c2599, long j) {
        if (this.f12683) {
            throw new IllegalStateException("closed");
        }
        AbstractC4710.m9438(c2599.f9835, 0L, j);
        this.f12681.f12686.mo5741(c2599, j);
    }
}
