package androidx.media3.exoplayer.dash;

import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.util.List;
import p012.C0894;
import p055.C1444;
import p055.C1480;
import p075.C1652;
import p262.C3433;
import p266.InterfaceC3452;
import p274.C3496;
import p291.C3617;
import p305.AbstractC3731;
import p366.C4472;
import p395.InterfaceC4721;
import p420.InterfaceC4937;
import p420.InterfaceC4975;
import ˋⁱ.ﾞᴵ;

/* loaded from: classes.dex */
public final class DashMediaSource$Factory implements InterfaceC4937 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public InterfaceC4721 f1220;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C4472 f1221;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C0894 f1222;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long f1223;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC3452 f1224;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʽﹳ f1225;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f1226;

    public DashMediaSource$Factory(InterfaceC3452 interfaceC3452) {
        ʽﹳ r0 = new ʽﹳ(interfaceC3452);
        this.f1225 = r0;
        this.f1224 = interfaceC3452;
        this.f1220 = new C1652(3);
        this.f1222 = new C0894();
        this.f1226 = 30000L;
        this.f1223 = 5000000L;
        this.f1221 = new C4472(5);
        ((ar.tvplayer.core.domain.ʽﹳ) r0.ˈٴ).ʾˋ = true;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC4975 mo788(C1480 c1480) {
        C1444 c1444 = c1480.f5781;
        c1444.getClass();
        C3617 c3617 = new C3617();
        List list = c1444.f5625;
        return new C3496(c1480, this.f1224, !list.isEmpty() ? new C3433(c3617, 23, list) : c3617, this.f1225, this.f1221, this.f1220.mo4513(c1480), this.f1222, this.f1226, this.f1223);
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC4937 mo789(InterfaceC4721 interfaceC4721) {
        AbstractC3731.m7862(interfaceC4721, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f1220 = interfaceC4721;
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final InterfaceC4937 mo790(C0894 c0894) {
        AbstractC3731.m7862(c0894, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f1222 = c0894;
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC4937 mo791() {
        ((ar.tvplayer.core.domain.ʽﹳ) this.f1225.ˈٴ).getClass();
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC4937 mo792(boolean z) {
        ((ar.tvplayer.core.domain.ʽﹳ) this.f1225.ˈٴ).ʾˋ = z;
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final InterfaceC4937 mo793(ﾞᴵ r2) {
        ar.tvplayer.core.domain.ʽﹳ r0 = (ar.tvplayer.core.domain.ʽﹳ) this.f1225.ˈٴ;
        r0.getClass();
        r0.ᴵˊ = r2;
        return this;
    }
}
