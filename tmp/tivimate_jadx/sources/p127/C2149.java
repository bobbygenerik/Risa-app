package p127;

import android.net.Uri;
import androidx.leanback.widget.ˉˆ;
import com.google.android.gms.internal.measurement.ˏʻ;
import java.util.ArrayList;
import javax.net.SocketFactory;
import p055.AbstractC1445;
import p055.AbstractC1449;
import p055.C1444;
import p055.C1480;
import p266.InterfaceC3457;
import p305.AbstractC3712;
import p364.C4443;
import p420.AbstractC4990;
import p420.C4973;
import p420.C4987;
import p420.InterfaceC4945;

/* renamed from: ˈـ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2149 extends AbstractC4990 {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f8357;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public boolean f8358;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final InterfaceC2153 f8359;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public C1480 f8360;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final Uri f8361;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final SocketFactory f8362;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final String f8363 = "AndroidXMedia3/1.8.0";

    /* renamed from: ᵔי, reason: contains not printable characters */
    public long f8364;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f8365;

    static {
        AbstractC1449.m4241("media3.exoplayer.rtsp");
    }

    public C2149(C1480 c1480, InterfaceC2153 interfaceC2153, SocketFactory socketFactory) {
        this.f8360 = c1480;
        this.f8359 = interfaceC2153;
        C1444 c1444 = c1480.f5781;
        c1444.getClass();
        Uri uri = c1444.f5629;
        String scheme = uri.getScheme();
        if (scheme != null && ˏʻ.ᵎﹶ("rtspt", scheme)) {
            uri = Uri.parse("rtsp" + uri.toString().substring(5));
        }
        this.f8361 = uri;
        this.f8362 = socketFactory;
        this.f8364 = -9223372036854775807L;
        this.f8358 = true;
    }

    @Override // p420.AbstractC4990
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void mo5098() {
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo5099() {
    }

    @Override // p420.AbstractC4990
    /* renamed from: ˏי, reason: contains not printable characters */
    public final void mo5100(InterfaceC3457 interfaceC3457) {
        m5103();
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo5101(InterfaceC4945 interfaceC4945) {
        C2161 c2161 = (C2161) interfaceC4945;
        ArrayList arrayList = c2161.f8417;
        for (int i = 0; i < arrayList.size(); i++) {
            C2176 c2176 = (C2176) arrayList.get(i);
            if (!c2176.f8523) {
                c2176.f8524.m8980(null);
                c2176.f8521.m9813();
                c2176.f8523 = true;
            }
        }
        AbstractC3712.m7799(c2161.f8406);
        c2161.f8410 = true;
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final synchronized void mo5102(C1480 c1480) {
        this.f8360 = c1480;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final void m5103() {
        AbstractC1445 c4973 = new C4973(this.f8364, this.f8357, this.f8365, mo5105());
        if (this.f8358) {
            c4973 = new C2159(c4973, 0);
        }
        m9840(c4973);
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC4945 mo5104(C4987 c4987, C4443 c4443, long j) {
        return new C2161(c4443, this.f8359, this.f8361, new ˉˆ(21, this), this.f8363, this.f8362);
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized C1480 mo5105() {
        return this.f8360;
    }
}
