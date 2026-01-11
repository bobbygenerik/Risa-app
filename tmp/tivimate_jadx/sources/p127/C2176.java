package p127;

import p307.AbstractC3740;
import p364.C4441;
import p420.C4976;

/* renamed from: ˈـ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2176 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4976 f8521;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f8522;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f8523;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4441 f8524;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2172 f8525;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final /* synthetic */ C2161 f8526;

    public C2176(C2161 c2161, C2143 c2143, int i, InterfaceC2153 interfaceC2153) {
        this.f8526 = c2161;
        this.f8524 = new C4441(AbstractC3740.m7932(i, "ExoPlayer:RtspMediaPeriod:RtspLoaderWrapper "));
        C4976 c4976 = new C4976(c2161.f8403, null, null);
        this.f8521 = c4976;
        this.f8525 = new C2172(c2161, c2143, i, c4976, interfaceC2153);
        c4976.f18564 = c2161.f8402;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5165() {
        if (this.f8522) {
            return;
        }
        this.f8525.f8499.f8537 = true;
        this.f8522 = true;
        C2161.m5120(this.f8526);
    }
}
