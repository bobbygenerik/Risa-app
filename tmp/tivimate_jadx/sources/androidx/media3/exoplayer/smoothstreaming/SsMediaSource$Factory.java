package androidx.media3.exoplayer.smoothstreaming;

import java.util.List;
import p012.C0894;
import p055.C1444;
import p055.C1480;
import p075.C1652;
import p231.C3187;
import p262.C3433;
import p266.InterfaceC3452;
import p305.AbstractC3731;
import p366.C4472;
import p395.InterfaceC4721;
import p420.InterfaceC4937;
import p420.InterfaceC4975;
import ˉˆ.ʿ;
import ˋⁱ.ﾞᴵ;
import ٴʽ.יـ;

/* loaded from: classes.dex */
public final class SsMediaSource$Factory implements InterfaceC4937 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4472 f1247;

    /* renamed from: ˈ, reason: contains not printable characters */
    public InterfaceC4721 f1248;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C0894 f1249;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC3452 f1250;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final יـ f1251;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f1252;

    public SsMediaSource$Factory(InterfaceC3452 interfaceC3452) {
        יـ r0 = new יـ(interfaceC3452);
        this.f1251 = r0;
        this.f1250 = interfaceC3452;
        this.f1248 = new C1652(3);
        this.f1249 = new C0894();
        this.f1252 = 30000L;
        this.f1247 = new C4472(5);
        r0.ﹳٴ = true;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ʽ */
    public final InterfaceC4975 mo788(C1480 c1480) {
        C1444 c1444 = c1480.f5781;
        c1444.getClass();
        C3433 c3433 = new ʿ(14);
        List list = c1444.f5625;
        return new C3187(c1480, this.f1250, !list.isEmpty() ? new C3433(c3433, 23, list) : c3433, this.f1251, this.f1247, this.f1248.mo4513(c1480), this.f1249, this.f1252);
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ˈ */
    public final InterfaceC4937 mo789(InterfaceC4721 interfaceC4721) {
        AbstractC3731.m7862(interfaceC4721, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f1248 = interfaceC4721;
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ˑﹳ */
    public final InterfaceC4937 mo790(C0894 c0894) {
        AbstractC3731.m7862(c0894, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f1249 = c0894;
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ⁱˊ */
    public final InterfaceC4937 mo791() {
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ﹳٴ */
    public final InterfaceC4937 mo792(boolean z) {
        this.f1251.ﹳٴ = z;
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ﾞᴵ */
    public final InterfaceC4937 mo793(ﾞᴵ r2) {
        this.f1251.ʽ = r2;
        return this;
    }
}
