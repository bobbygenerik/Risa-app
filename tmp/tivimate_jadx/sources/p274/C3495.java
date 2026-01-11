package p274;

import android.os.Handler;
import androidx.media3.common.ParserException;
import p001.C0766;
import p055.C1476;
import p055.C1495;
import p055.InterfaceC1455;
import p112.C1962;
import p171.C2634;
import p171.InterfaceC2639;
import p262.C3433;
import p305.AbstractC3712;
import p305.C3732;
import p364.C4443;
import p420.C4968;
import p420.C4976;

/* renamed from: ـᵢ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3495 implements InterfaceC2639 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ C3491 f13731;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4976 f13733;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3433 f13732 = new C3433(14);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1962 f13729 = new C1962();

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f13730 = -9223372036854775807L;

    public C3495(C3491 c3491, C4443 c4443) {
        this.f13731 = c3491;
        this.f13733 = new C4976(c4443, null, null);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ʽ */
    public final int mo4107(InterfaceC1455 interfaceC1455, int i, boolean z) {
        return mo4113(interfaceC1455, i, z);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ˈ */
    public final void mo4108(C1495 c1495) {
        this.f13733.mo4108(c1495);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ˑﹳ */
    public final void mo4109(int i, C3732 c3732) {
        mo4111(c3732, i, 0);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ⁱˊ */
    public final void mo4111(C3732 c3732, int i, int i2) {
        C4976 c4976 = this.f13733;
        c4976.getClass();
        c4976.mo4111(c3732, i, 0);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ﹳٴ */
    public final void mo4112(long j, int i, int i2, int i3, C2634 c2634) {
        long m9806;
        long j2;
        this.f13733.mo4112(j, i, i2, i3, c2634);
        while (this.f13733.m9811(false)) {
            C1962 c1962 = this.f13729;
            c1962.mo3629();
            if (this.f13733.m9808(this.f13732, c1962, 0, false) == -4) {
                c1962.m9845();
            } else {
                c1962 = null;
            }
            if (c1962 != null) {
                long j3 = c1962.f18671;
                C1476 c1476 = this.f13731.f13695.ﾞʻ(c1962);
                if (c1476 != null) {
                    C0766 c0766 = (C0766) c1476.f5773[0];
                    String str = c0766.f3159;
                    String str2 = c0766.f3158;
                    if ("urn:mpeg:dash:event:2012".equals(str) && ("1".equals(str2) || "2".equals(str2) || "3".equals(str2))) {
                        try {
                            j2 = AbstractC3712.m7772(AbstractC3712.m7804(c0766.f3157));
                        } catch (ParserException unused) {
                            j2 = -9223372036854775807L;
                        }
                        if (j2 != -9223372036854775807L) {
                            C3490 c3490 = new C3490(j3, j2);
                            Handler handler = this.f13731.f13697;
                            handler.sendMessage(handler.obtainMessage(1, c3490));
                        }
                    }
                }
            }
        }
        C4976 c4976 = this.f13733;
        C4968 c4968 = c4976.f18561;
        synchronized (c4976) {
            int i4 = c4976.f18549;
            m9806 = i4 == 0 ? -1L : c4976.m9806(i4);
        }
        c4968.m9794(m9806);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ﾞᴵ */
    public final int mo4113(InterfaceC1455 interfaceC1455, int i, boolean z) {
        C4976 c4976 = this.f13733;
        c4976.getClass();
        return c4976.mo4113(interfaceC1455, i, z);
    }
}
