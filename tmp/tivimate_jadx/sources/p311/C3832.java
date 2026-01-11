package p311;

import java.io.IOException;
import p164.C2586;
import p164.InterfaceC2592;
import p208.AbstractC2960;
import p208.C2968;

/* renamed from: ᐧᵢ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3832 extends AbstractC2960 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2586 f14834;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public IOException f14835;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final AbstractC2960 f14836;

    public C3832(AbstractC2960 abstractC2960) {
        this.f14836 = abstractC2960;
        this.f14834 = new C2586(new C3788(this, abstractC2960.mo4067()));
    }

    @Override // p208.AbstractC2960, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f14836.close();
    }

    @Override // p208.AbstractC2960
    /* renamed from: ʽ */
    public final long mo4066() {
        return this.f14836.mo4066();
    }

    @Override // p208.AbstractC2960
    /* renamed from: ˉˆ */
    public final InterfaceC2592 mo4067() {
        return this.f14834;
    }

    @Override // p208.AbstractC2960
    /* renamed from: ᵎﹶ */
    public final C2968 mo4068() {
        return this.f14836.mo4068();
    }
}
