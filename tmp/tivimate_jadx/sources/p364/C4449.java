package p364;

import android.net.Uri;
import p266.C3446;
import p266.C3454;
import p266.C3456;
import p266.InterfaceC3462;
import p305.AbstractC3712;
import p420.C4991;

/* renamed from: ᵔⁱ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4449 implements InterfaceC4445 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f16658;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f16659 = C4991.f18644.getAndIncrement();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3446 f16660;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public volatile Object f16661;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3456 f16662;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final InterfaceC4437 f16663;

    public C4449(InterfaceC3462 interfaceC3462, C3456 c3456, int i, InterfaceC4437 interfaceC4437) {
        this.f16660 = new C3446(interfaceC3462);
        this.f16662 = c3456;
        this.f16658 = i;
        this.f16663 = interfaceC4437;
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽ */
    public final void mo5106() {
        this.f16660.f13541 = 0L;
        C3454 c3454 = new C3454(this.f16660, this.f16662);
        try {
            c3454.f13565.mo4684(c3454.f13567);
            c3454.f13566 = true;
            Uri mo4685 = this.f16660.f13540.mo4685();
            mo4685.getClass();
            this.f16661 = this.f16663.mo4043(mo4685, c3454);
        } finally {
            AbstractC3712.m7799(c3454);
        }
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽﹳ */
    public final void mo5107() {
    }
}
