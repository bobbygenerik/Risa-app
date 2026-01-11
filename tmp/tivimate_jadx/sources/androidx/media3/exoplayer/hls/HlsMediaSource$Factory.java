package androidx.media3.exoplayer.hls;

import java.util.List;
import p012.C0894;
import p047.C1356;
import p055.C1444;
import p055.C1480;
import p075.C1652;
import p266.InterfaceC3452;
import p305.AbstractC3731;
import p366.C4472;
import p395.InterfaceC4721;
import p395.InterfaceC4734;
import p404.C4790;
import p420.InterfaceC4937;
import p420.InterfaceC4975;
import p433.C5121;
import p433.C5122;
import ʻʿ.ᵔﹳ;
import ˋⁱ.ﾞᴵ;
import ᐧﹳ.ʽ;

/* loaded from: classes.dex */
public final class HlsMediaSource$Factory implements InterfaceC4937 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public ﾞᴵ f1229;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C5121 f1236;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʽ f1237;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public InterfaceC4721 f1235 = new C1652(3);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final ﾞᴵ f1232 = new Object();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ᵔﹳ f1239 = C1356.f5211;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C0894 f1228 = new C0894();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C4472 f1234 = new C4472(5);

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int f1233 = 1;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final long f1238 = -9223372036854775807L;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f1230 = true;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f1231 = true;

    /* JADX WARN: Type inference failed for: r3v2, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    public HlsMediaSource$Factory(InterfaceC3452 interfaceC3452) {
        this.f1237 = new ʽ(20, interfaceC3452);
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ʽ */
    public final InterfaceC4975 mo788(C1480 c1480) {
        C1444 c1444 = c1480.f5781;
        c1444.getClass();
        if (this.f1236 == null) {
            this.f1236 = new C5121(0);
        }
        ﾞᴵ r2 = this.f1229;
        if (r2 != null) {
            this.f1236.f19252 = r2;
        }
        C5121 c5121 = this.f1236;
        c5121.f19251 = this.f1231;
        List list = c1444.f5625;
        boolean isEmpty = list.isEmpty();
        C4790 c4790 = this.f1232;
        if (!isEmpty) {
            c4790 = new C4790(c4790, list, 8, false);
        }
        InterfaceC4734 mo4513 = this.f1235.mo4513(c1480);
        C0894 c0894 = this.f1228;
        this.f1239.getClass();
        ʽ r22 = this.f1237;
        return new C5122(c1480, r22, c5121, this.f1234, mo4513, c0894, new C1356(r22, c0894, c4790), this.f1238, this.f1230, this.f1233);
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ˈ */
    public final InterfaceC4937 mo789(InterfaceC4721 interfaceC4721) {
        AbstractC3731.m7862(interfaceC4721, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f1235 = interfaceC4721;
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ˑﹳ */
    public final InterfaceC4937 mo790(C0894 c0894) {
        AbstractC3731.m7862(c0894, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f1228 = c0894;
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
        this.f1231 = z;
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ﾞᴵ */
    public final InterfaceC4937 mo793(ﾞᴵ r1) {
        this.f1229 = r1;
        return this;
    }
}
