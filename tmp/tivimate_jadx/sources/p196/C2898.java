package p196;

import com.bumptech.glide.ʽ;
import com.google.android.gms.internal.measurement.ˏʻ;
import java.math.RoundingMode;
import p012.C0881;
import p127.C2177;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.C3732;

/* renamed from: ˎʾ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2898 implements InterfaceC2889 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long f10916;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f10917;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f10918;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f10919;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f10920;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public InterfaceC2639 f10921;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0881 f10922 = new C0881(4);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2177 f10923;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f10924;

    public C2898(C2177 c2177) {
        this.f10923 = c2177;
        this.f10917 = c2177.f8530;
        String str = (String) c2177.f8528.get("mode");
        str.getClass();
        if (ˏʻ.ᵎﹶ(str, "AAC-hbr")) {
            this.f10918 = 13;
            this.f10919 = 3;
        } else {
            if (!ˏʻ.ᵎﹶ(str, "AAC-lbr")) {
                throw new UnsupportedOperationException("AAC mode not supported");
            }
            this.f10918 = 6;
            this.f10919 = 2;
        }
        this.f10924 = this.f10919 + this.f10918;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ʽ */
    public final void mo6391(long j) {
        this.f10920 = j;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ˈ */
    public final void mo6392(InterfaceC2646 interfaceC2646, int i) {
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(i, 1);
        this.f10921 = mo1138;
        mo1138.mo4108(this.f10923.f8527);
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ⁱˊ */
    public final void mo6393(long j, long j2) {
        this.f10920 = j;
        this.f10916 = j2;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ﹳٴ */
    public final void mo6394(C3732 c3732, long j, int i, boolean z) {
        this.f10921.getClass();
        short m7873 = c3732.m7873();
        int i2 = m7873 / this.f10924;
        long j2 = ʽ.ᴵᵔ(this.f10917, this.f10916, j, this.f10920);
        C0881 c0881 = this.f10922;
        c0881.m3099(c3732);
        int i3 = this.f10919;
        int i4 = this.f10918;
        if (i2 == 1) {
            int m3097 = c0881.m3097(i4);
            c0881.m3095(i3);
            this.f10921.mo4109(c3732.m7904(), c3732);
            if (z) {
                this.f10921.mo4112(j2, 1, m3097, 0, null);
                return;
            }
            return;
        }
        c3732.m7900((m7873 + 7) / 8);
        long j3 = j2;
        for (int i5 = 0; i5 < i2; i5++) {
            int m30972 = c0881.m3097(i4);
            c0881.m3095(i3);
            this.f10921.mo4109(m30972, c3732);
            this.f10921.mo4112(j3, 1, m30972, 0, null);
            j3 += AbstractC3712.m7797(i2, 1000000L, this.f10917, RoundingMode.DOWN);
        }
    }
}
