package p311;

import p164.InterfaceC2592;
import p208.AbstractC2960;
import p208.C2968;

/* renamed from: ᐧᵢ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3795 extends AbstractC2960 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f14710;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2968 f14711;

    public C3795(C2968 c2968, long j) {
        this.f14711 = c2968;
        this.f14710 = j;
    }

    @Override // p208.AbstractC2960
    /* renamed from: ʽ */
    public final long mo4066() {
        return this.f14710;
    }

    @Override // p208.AbstractC2960
    /* renamed from: ˉˆ */
    public final InterfaceC2592 mo4067() {
        throw new IllegalStateException("Cannot read raw response body of a converted body.");
    }

    @Override // p208.AbstractC2960
    /* renamed from: ᵎﹶ */
    public final C2968 mo4068() {
        return this.f14711;
    }
}
