package p051;

import java.util.ArrayList;
import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p171.C2627;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: ʽᐧ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1394 implements InterfaceC2632 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long[] f5460;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayList f5461;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public long f5462;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f5465;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f5466;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1495 f5467;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC1398 f5468;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public InterfaceC2639 f5469;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public byte[] f5464 = AbstractC3712.f14480;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3732 f5463 = new C3732();

    public C1394(InterfaceC1398 interfaceC1398, C1495 c1495) {
        C1495 c14952;
        this.f5468 = interfaceC1398;
        if (c1495 != null) {
            C1490 m4300 = c1495.m4300();
            m4300.f5861 = AbstractC1464.m4251("application/x-media3-cues");
            m4300.f5857 = c1495.f5930;
            m4300.f5874 = interfaceC1398.mo4116();
            c14952 = new C1495(m4300);
        } else {
            c14952 = null;
        }
        this.f5467 = c14952;
        this.f5461 = new ArrayList();
        this.f5466 = 0;
        this.f5460 = AbstractC3712.f14473;
        this.f5462 = -9223372036854775807L;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        AbstractC3731.m7857(this.f5466 == 0);
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(0, 3);
        this.f5469 = mo1138;
        C1495 c1495 = this.f5467;
        if (c1495 != null) {
            mo1138.mo4108(c1495);
            interfaceC2646.mo1137();
            interfaceC2646.mo1133(new C2627(-9223372036854775807L, new long[]{0}, new long[]{0}));
        }
        this.f5466 = 1;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4115(C1399 c1399) {
        AbstractC3731.m7868(this.f5469);
        byte[] bArr = c1399.f5479;
        int length = bArr.length;
        C3732 c3732 = this.f5463;
        c3732.getClass();
        c3732.m7897(bArr.length, bArr);
        this.f5469.mo4109(length, c3732);
        this.f5469.mo4112(c1399.f5478, 1, length, 0, null);
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0077, code lost:
    
        if (r20.f5465 != r14) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007c, code lost:
    
        if (r2 == (-1)) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x007e, code lost:
    
        r4 = r20.f5462;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0082, code lost:
    
        if (r4 == (-9223372036854775807L)) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0084, code lost:
    
        r2 = new p051.C1393(true, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x008f, code lost:
    
        r20.f5468.mo4118(r20.f5464, 0, r20.f5465, r2, new ʻʿ.ˈ(15, r20));
        java.util.Collections.sort(r11);
        r20.f5460 = new long[r11.size()];
        r2 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00b6, code lost:
    
        if (r2 >= r11.size()) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00b8, code lost:
    
        r20.f5460[r2] = ((p051.C1399) r11.get(r2)).f5478;
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00c9, code lost:
    
        r20.f5464 = p305.AbstractC3712.f14480;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00cd, code lost:
    
        r20.f5466 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x008c, code lost:
    
        r2 = p051.C1393.f5457;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c7, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d6, code lost:
    
        throw androidx.media3.common.ParserException.m741(r0, "SubtitleParser failed.");
     */
    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo2904(p171.InterfaceC2622 r21, p055.C1468 r22) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p051.C1394.mo2904(ˊﾞ.ʼᐧ, ʽⁱ.ˏי):int");
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ᵎﹶ */
    public final List mo2905() {
        C0982 c0982 = AbstractC0993.f3977;
        return C0956.f3901;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ⁱˊ */
    public final void mo2908(long j, long j2) {
        int i = this.f5466;
        AbstractC3731.m7857((i == 0 || i == 5) ? false : true);
        this.f5462 = j2;
        if (this.f5466 == 2) {
            this.f5466 = 1;
        }
        if (this.f5466 == 4) {
            this.f5466 = 3;
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
        if (this.f5466 == 5) {
            return;
        }
        this.f5468.reset();
        this.f5466 = 5;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        return true;
    }
}
