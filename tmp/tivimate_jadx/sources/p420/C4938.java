package p420;

import android.net.Uri;
import android.os.Looper;
import p003.C0783;
import p012.C0894;
import p055.AbstractC1445;
import p055.C1444;
import p055.C1480;
import p055.C1495;
import p127.C2159;
import p171.InterfaceC2626;
import p171.InterfaceC2650;
import p266.InterfaceC3452;
import p266.InterfaceC3457;
import p266.InterfaceC3462;
import p283.C3569;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p364.C4443;
import p395.C4715;
import p395.InterfaceC4734;
import p395.InterfaceC4735;
import ˑי.ʽ;

/* renamed from: ﹳᵢ.ʼˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4938 extends AbstractC4990 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public C1480 f18388;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final C1495 f18389;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final InterfaceC3452 f18391;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public InterfaceC3457 f18392;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public boolean f18393;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public boolean f18394;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final InterfaceC4734 f18395;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C0894 f18396;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C3569 f18397;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final int f18398;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f18399 = true;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public long f18390 = -9223372036854775807L;

    public C4938(C1480 c1480, InterfaceC3452 interfaceC3452, C3569 c3569, InterfaceC4734 interfaceC4734, C0894 c0894, int i, C1495 c1495) {
        this.f18388 = c1480;
        this.f18391 = interfaceC3452;
        this.f18397 = c3569;
        this.f18395 = interfaceC4734;
        this.f18396 = c0894;
        this.f18398 = i;
        this.f18389 = c1495;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m9742(long j, InterfaceC2626 interfaceC2626, boolean z) {
        if (j == -9223372036854775807L) {
            j = this.f18390;
        }
        boolean mo2907 = interfaceC2626.mo2907();
        if (!this.f18399 && this.f18390 == j && this.f18394 == mo2907 && this.f18393 == z) {
            return;
        }
        this.f18390 = j;
        this.f18394 = mo2907;
        this.f18393 = z;
        this.f18399 = false;
        m9743();
    }

    @Override // p420.AbstractC4990
    /* renamed from: ʾᵎ */
    public final void mo5098() {
        this.f18395.mo9000();
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˈ */
    public final void mo5099() {
    }

    @Override // p420.AbstractC4990
    /* renamed from: ˏי */
    public final void mo5100(InterfaceC3457 interfaceC3457) {
        this.f18392 = interfaceC3457;
        Looper myLooper = Looper.myLooper();
        myLooper.getClass();
        C0783 c0783 = this.f18641;
        AbstractC3731.m7868(c0783);
        InterfaceC4734 interfaceC4734 = this.f18395;
        interfaceC4734.mo8990(myLooper, c0783);
        interfaceC4734.mo8998();
        m9743();
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˑﹳ */
    public final void mo5101(InterfaceC4945 interfaceC4945) {
        C4961 c4961 = (C4961) interfaceC4945;
        if (c4961.f18475) {
            for (C4976 c4976 : c4961.f18466) {
                c4976.m9822();
                InterfaceC4735 interfaceC4735 = c4976.f18557;
                if (interfaceC4735 != null) {
                    interfaceC4735.mo9462(c4976.f18548);
                    c4976.f18557 = null;
                    c4976.f18555 = null;
                }
            }
        }
        c4961.f18481.m8980(c4961);
        c4961.f18462.removeCallbacksAndMessages(null);
        c4961.f18460 = null;
        c4961.f18477 = true;
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ᵔʾ */
    public final synchronized void mo5102(C1480 c1480) {
        this.f18388 = c1480;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final void m9743() {
        AbstractC1445 c4973 = new C4973(this.f18390, this.f18394, this.f18393, mo5105());
        if (this.f18399) {
            c4973 = new C2159(c4973, 1);
        }
        m9840(c4973);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, ˑי.ʽ] */
    @Override // p420.InterfaceC4975
    /* renamed from: ⁱˊ */
    public final InterfaceC4945 mo5104(C4987 c4987, C4443 c4443, long j) {
        InterfaceC3462 mo624 = this.f18391.mo624();
        InterfaceC3457 interfaceC3457 = this.f18392;
        if (interfaceC3457 != null) {
            mo624.mo5139(interfaceC3457);
        }
        C1444 c1444 = mo5105().f5781;
        c1444.getClass();
        Uri uri = c1444.f5629;
        AbstractC3731.m7868(this.f18641);
        InterfaceC2650 interfaceC2650 = (InterfaceC2650) this.f18397.f13957;
        ?? obj = new Object();
        ((ʽ) obj).ʾˋ = interfaceC2650;
        return new C4961(uri, mo624, obj, this.f18395, new C4715(this.f18639.f17808, 0, c4987), this.f18396, m9841(c4987), this, c4443, this.f18398, this.f18389, AbstractC3712.m7757(c1444.f5627), null);
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ﹳٴ */
    public final synchronized C1480 mo5105() {
        return this.f18388;
    }
}
