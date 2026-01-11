package androidx.media3.exoplayer.rtsp;

import com.google.android.gms.internal.measurement.ˏʻ;
import javax.net.SocketFactory;
import p012.C0894;
import p055.C1444;
import p055.C1480;
import p127.C2149;
import p395.InterfaceC4721;
import p420.InterfaceC4937;
import p420.InterfaceC4975;
import ˋⁱ.ﾞᴵ;
import ﹳˋ.ʼˎ;

/* loaded from: classes.dex */
public final class RtspMediaSource$Factory implements InterfaceC4937 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final SocketFactory f1246 = SocketFactory.getDefault();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p420.InterfaceC4937
    /* renamed from: ʽ */
    public final InterfaceC4975 mo788(C1480 c1480) {
        C1444 c1444 = c1480.f5781;
        c1444.getClass();
        c1444.getClass();
        String scheme = c1444.f5629.getScheme();
        return new C2149(c1480, (scheme == null || !ˏʻ.ᵎﹶ("rtspt", scheme)) ? new Object() : new ʼˎ(13), this.f1246);
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ˈ */
    public final InterfaceC4937 mo789(InterfaceC4721 interfaceC4721) {
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ˑﹳ */
    public final InterfaceC4937 mo790(C0894 c0894) {
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
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ﾞᴵ */
    public final InterfaceC4937 mo793(ﾞᴵ r1) {
        return this;
    }
}
