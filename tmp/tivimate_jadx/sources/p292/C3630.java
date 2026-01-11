package p292;

import java.net.Proxy;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import p208.C2940;
import p208.C2967;
import p394.AbstractC4712;
import p430.C5097;
import ˉˆ.ʿ;

/* renamed from: ٴᵎ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3630 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3650 f14199;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f14200;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final List f14201;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Object f14202;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final ArrayList f14203;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ʿ f14204;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2967 f14205;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f14206;

    public C3630(C2967 c2967, ʿ r4, C3650 c3650, boolean z) {
        List m9446;
        this.f14205 = c2967;
        this.f14204 = r4;
        this.f14199 = c3650;
        this.f14200 = z;
        C5097 c5097 = C5097.f19202;
        this.f14201 = c5097;
        this.f14202 = c5097;
        this.f14203 = new ArrayList();
        C2940 c2940 = c2967.f11337;
        c3650.getClass();
        URI m6470 = c2940.m6470();
        if (m6470.getHost() == null) {
            m9446 = AbstractC4712.m9446(new Proxy[]{Proxy.NO_PROXY});
        } else {
            List<Proxy> select = c2967.f11336.select(m6470);
            m9446 = (select == null || select.isEmpty()) ? AbstractC4712.m9446(new Proxy[]{Proxy.NO_PROXY}) : AbstractC4712.m9443(select);
        }
        this.f14201 = m9446;
        this.f14206 = 0;
        c3650.getClass();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m7606() {
        return this.f14206 < this.f14201.size() || !this.f14203.isEmpty();
    }
}
