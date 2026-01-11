package p196;

import androidx.media3.common.ParserException;
import com.bumptech.glide.ʽ;
import p012.C0881;
import p017.AbstractC0996;
import p127.C2145;
import p127.C2177;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;
import p307.AbstractC3740;

/* renamed from: ˎʾ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2899 implements InterfaceC2889 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public InterfaceC2639 f10925;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f10926;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f10927;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f10928;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public long f10929;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f10930;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2177 f10931;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f10932;

    public C2899(C2177 c2177) {
        this.f10931 = c2177;
        try {
            this.f10930 = m6399(c2177.f8528);
            this.f10926 = -9223372036854775807L;
            this.f10927 = -1;
            this.f10932 = 0;
            this.f10928 = 0L;
            this.f10929 = -9223372036854775807L;
        } catch (ParserException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int m6399(AbstractC0996 abstractC0996) {
        String str = (String) abstractC0996.get("config");
        int i = 0;
        i = 0;
        if (str != null && str.length() % 2 == 0) {
            byte[] m7762 = AbstractC3712.m7762(str);
            C0881 c0881 = new C0881(m7762.length, m7762);
            int m3097 = c0881.m3097(1);
            if (m3097 != 0) {
                throw new ParserException(AbstractC3740.m7932(m3097, "unsupported audio mux version: "), null, true, 0);
            }
            AbstractC3731.m7843("Only supports allStreamsSameTimeFraming.", c0881.m3097(1) == 1);
            int m30972 = c0881.m3097(6);
            AbstractC3731.m7843("Only suppors one program.", c0881.m3097(4) == 0);
            AbstractC3731.m7843("Only suppors one layer.", c0881.m3097(3) == 0);
            i = m30972;
        }
        return i + 1;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ʽ */
    public final void mo6391(long j) {
        AbstractC3731.m7857(this.f10926 == -9223372036854775807L);
        this.f10926 = j;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ˈ */
    public final void mo6392(InterfaceC2646 interfaceC2646, int i) {
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(i, 2);
        this.f10925 = mo1138;
        String str = AbstractC3712.f14481;
        mo1138.mo4108(this.f10931.f8527);
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ⁱˊ */
    public final void mo6393(long j, long j2) {
        this.f10926 = j;
        this.f10932 = 0;
        this.f10928 = j2;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ﹳٴ */
    public final void mo6394(C3732 c3732, long j, int i, boolean z) {
        AbstractC3731.m7868(this.f10925);
        int m5097 = C2145.m5097(this.f10927);
        if (this.f10932 > 0 && m5097 < i) {
            InterfaceC2639 interfaceC2639 = this.f10925;
            interfaceC2639.getClass();
            interfaceC2639.mo4112(this.f10929, 1, this.f10932, 0, null);
            this.f10932 = 0;
            this.f10929 = -9223372036854775807L;
        }
        for (int i2 = 0; i2 < this.f10930; i2++) {
            int i3 = 0;
            while (c3732.f14533 < c3732.f14532) {
                int m7874 = c3732.m7874();
                i3 += m7874;
                if (m7874 != 255) {
                    break;
                }
            }
            this.f10925.mo4109(i3, c3732);
            this.f10932 += i3;
        }
        this.f10929 = ʽ.ᴵᵔ(this.f10931.f8530, this.f10928, j, this.f10926);
        if (z) {
            InterfaceC2639 interfaceC26392 = this.f10925;
            interfaceC26392.getClass();
            interfaceC26392.mo4112(this.f10929, 1, this.f10932, 0, null);
            this.f10932 = 0;
            this.f10929 = -9223372036854775807L;
        }
        this.f10927 = i;
    }
}
