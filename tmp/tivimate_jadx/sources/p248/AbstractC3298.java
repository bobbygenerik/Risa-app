package p248;

import java.io.IOException;
import p048.AbstractC1380;
import p164.C2580;
import p164.C2591;
import p164.C2599;
import p164.InterfaceC2588;
import p208.C2937;
import p208.C2940;
import p208.C2950;
import p208.InterfaceC2969;

/* renamed from: יʾ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3298 implements InterfaceC2588 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f12694;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2940 f12695;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C3296 f12696;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2591 f12697;

    public AbstractC3298(C3296 c3296, C2940 c2940) {
        this.f12696 = c3296;
        this.f12695 = c2940;
        this.f12697 = new C2591(c3296.f12685.mo5762());
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7108(C2950 c2950) {
        C2937 c2937;
        InterfaceC2969 interfaceC2969;
        C3296 c3296 = this.f12696;
        int i = c3296.f12687;
        if (i == 6) {
            return;
        }
        if (i != 5) {
            throw new IllegalStateException("state: " + c3296.f12687);
        }
        C2591 c2591 = this.f12697;
        C2580 c2580 = c2591.f9821;
        c2591.f9821 = C2580.f9797;
        c2580.mo5783();
        c2580.mo5782();
        c3296.f12687 = 6;
        if (c2950.size() <= 0 || (c2937 = c3296.f12689) == null || (interfaceC2969 = c2937.f11129) == null) {
            return;
        }
        AbstractC1380.m4073(interfaceC2969, this.f12695, c2950);
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ˑﹳ */
    public final C2580 mo5762() {
        return this.f12697;
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ٴﹶ */
    public long mo5763(C2599 c2599, long j) {
        C3296 c3296 = this.f12696;
        try {
            return c3296.f12685.mo5763(c2599, j);
        } catch (IOException e) {
            c3296.f12688.mo4053();
            m7108(C3296.f12684);
            throw e;
        }
    }
}
