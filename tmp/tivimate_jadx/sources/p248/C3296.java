package p248;

import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.io.EOFException;
import java.io.IOException;
import java.net.Proxy;
import p035.AbstractC1220;
import p048.AbstractC1380;
import p048.InterfaceC1374;
import p048.InterfaceC1375;
import p079.C1681;
import p152.AbstractC2444;
import p164.InterfaceC2576;
import p164.InterfaceC2588;
import p164.InterfaceC2590;
import p164.InterfaceC2592;
import p208.C2937;
import p208.C2940;
import p208.C2942;
import p208.C2945;
import p208.C2950;
import p208.C2959;
import p208.EnumC2956;
import p394.AbstractC4712;
import ˈˆ.ﾞᴵ;
import ᴵˋ.ˊʻ;

/* renamed from: יʾ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3296 implements InterfaceC1375 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C2950 f12684 = ﾞᴵ.ᵎˊ(new String[]{"OkHttp-Response-Body", "Truncated"});

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC2592 f12685;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC2590 f12686;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f12687;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC1374 f12688;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2937 f12689;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C1681 f12690;

    public C3296(C2937 c2937, InterfaceC1374 interfaceC1374, InterfaceC2592 interfaceC2592, InterfaceC2590 interfaceC2590) {
        this.f12689 = c2937;
        this.f12688 = interfaceC1374;
        this.f12685 = interfaceC2592;
        this.f12686 = interfaceC2590;
        this.f12690 = new C1681(interfaceC2592);
    }

    @Override // p048.InterfaceC1375
    public final void cancel() {
        this.f12688.cancel();
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ʼˎ */
    public final C2959 mo4055(boolean z) {
        C1681 c1681 = this.f12690;
        int i = this.f12687;
        if (i != 0 && i != 1 && i != 2 && i != 3) {
            throw new IllegalStateException(("state: " + this.f12687).toString());
        }
        try {
            String mo5797 = ((InterfaceC2592) c1681.f6827).mo5797(c1681.f6829);
            c1681.f6829 -= mo5797.length();
            ʽﹳ r1 = ˊʻ.ˊʻ(mo5797);
            int i2 = r1.ᴵˊ;
            C2959 c2959 = new C2959();
            c2959.f11298 = (EnumC2956) r1.ʽʽ;
            c2959.f11289 = i2;
            c2959.f11291 = (String) r1.ˈٴ;
            c2959.f11301 = c1681.m4596().m6482();
            if (z && i2 == 100) {
                return null;
            }
            if (i2 == 100) {
                this.f12687 = 3;
                return c2959;
            }
            if (102 > i2 || i2 >= 200) {
                this.f12687 = 4;
                return c2959;
            }
            this.f12687 = 3;
            return c2959;
        } catch (EOFException e) {
            throw new IOException(AbstractC1220.m3771("unexpected end of stream on ", this.f12688.mo4054().f11246.f11337.m6469()), e);
        }
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ʽ */
    public final void mo4056(C2945 c2945) {
        Proxy.Type type = this.f12688.mo4054().f11245.type();
        StringBuilder sb = new StringBuilder();
        sb.append(c2945.f11225);
        sb.append(' ');
        C2940 c2940 = c2945.f11226;
        if (AbstractC2444.m5562(c2940.f11166, "https") || type != Proxy.Type.HTTP) {
            String m6471 = c2940.m6471();
            String m6467 = c2940.m6467();
            if (m6467 != null) {
                m6471 = m6471 + '?' + m6467;
            }
            sb.append(m6471);
        } else {
            sb.append(c2940);
        }
        sb.append(" HTTP/1.1");
        m7107(c2945.f11222, sb.toString());
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C3294 m7106(C2940 c2940, long j) {
        if (this.f12687 == 4) {
            this.f12687 = 5;
            return new C3294(this, c2940, j);
        }
        throw new IllegalStateException(("state: " + this.f12687).toString());
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ˈ */
    public final void mo4057() {
        this.f12686.flush();
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ˑﹳ */
    public final boolean mo4058() {
        return this.f12687 == 6;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m7107(C2950 c2950, String str) {
        if (this.f12687 != 0) {
            throw new IllegalStateException(("state: " + this.f12687).toString());
        }
        InterfaceC2590 interfaceC2590 = this.f12686;
        interfaceC2590.mo5739(str).mo5739("\r\n");
        int size = c2950.size();
        for (int i = 0; i < size; i++) {
            interfaceC2590.mo5739(c2950.m6484(i)).mo5739(": ").mo5739(c2950.m6486(i)).mo5739("\r\n");
        }
        interfaceC2590.mo5739("\r\n");
        this.f12687 = 1;
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ᵎﹶ */
    public final InterfaceC1374 mo4059() {
        return this.f12688;
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ᵔᵢ */
    public final long mo4060(C2942 c2942) {
        if (!AbstractC1380.m4074(c2942)) {
            return 0L;
        }
        String m6485 = c2942.f11188.m6485("Transfer-Encoding");
        if (m6485 == null) {
            m6485 = null;
        }
        if ("chunked".equalsIgnoreCase(m6485)) {
            return -1L;
        }
        return AbstractC4712.m9445(c2942);
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ⁱˊ */
    public final InterfaceC2576 mo4061(C2945 c2945, long j) {
        if ("chunked".equalsIgnoreCase(c2945.f11222.m6485("Transfer-Encoding"))) {
            if (this.f12687 == 1) {
                this.f12687 = 2;
                return new C3297(this);
            }
            throw new IllegalStateException(("state: " + this.f12687).toString());
        }
        if (j == -1) {
            throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
        }
        if (this.f12687 == 1) {
            this.f12687 = 2;
            return new C3295(this);
        }
        throw new IllegalStateException(("state: " + this.f12687).toString());
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ﹳٴ */
    public final InterfaceC2588 mo4062(C2942 c2942) {
        C2945 c2945 = c2942.f11183;
        if (!AbstractC1380.m4074(c2942)) {
            return m7106(c2945.f11226, 0L);
        }
        String m6485 = c2942.f11188.m6485("Transfer-Encoding");
        if (m6485 == null) {
            m6485 = null;
        }
        if ("chunked".equalsIgnoreCase(m6485)) {
            C2940 c2940 = c2945.f11226;
            if (this.f12687 == 4) {
                this.f12687 = 5;
                return new C3293(this, c2940);
            }
            throw new IllegalStateException(("state: " + this.f12687).toString());
        }
        long m9445 = AbstractC4712.m9445(c2942);
        if (m9445 != -1) {
            return m7106(c2945.f11226, m9445);
        }
        C2940 c29402 = c2945.f11226;
        if (this.f12687 == 4) {
            this.f12687 = 5;
            this.f12688.mo4053();
            return new AbstractC3298(this, c29402);
        }
        throw new IllegalStateException(("state: " + this.f12687).toString());
    }

    @Override // p048.InterfaceC1375
    /* renamed from: ﾞᴵ */
    public final void mo4063() {
        this.f12686.flush();
    }
}
