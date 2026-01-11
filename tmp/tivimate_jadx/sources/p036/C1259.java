package p036;

import p152.AbstractC2444;
import p229.C3131;
import p430.C5109;

/* renamed from: ʽ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1259 implements InterfaceC1253 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3131 f4883;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C1254 f4884;

    public C1259(C1254 c1254, C3131 c3131) {
        this.f4884 = c1254;
        this.f4883 = c3131;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [ᴵⁱ.ﹳٴ, ˊʼ.ʼˎ] */
    @Override // p036.InterfaceC1253
    public final void cancel() {
        C1254 c1254 = this.f4884;
        C5109 c5109 = c1254.f4870;
        C3131 c3131 = this.f4883;
        c5109.remove(c3131);
        if (AbstractC2444.m5562(c1254.f4866, c3131)) {
            c3131.m6863();
            c1254.f4866 = null;
        }
        c3131.f11964.remove(this);
        ?? r0 = c3131.f11962;
        if (r0 != 0) {
            r0.mo716();
        }
        c3131.f11962 = null;
    }
}
