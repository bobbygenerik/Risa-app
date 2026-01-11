package p196;

import com.bumptech.glide.ʽ;
import java.util.Locale;
import p127.C2145;
import p127.C2177;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.C3732;
import p411.AbstractC4892;

/* renamed from: ˎʾ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2891 implements InterfaceC2889 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f10857 = -9223372036854775807L;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f10858 = 0;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f10859 = -1;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public InterfaceC2639 f10860;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2177 f10861;

    public C2891(C2177 c2177) {
        this.f10861 = c2177;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ʽ */
    public final void mo6391(long j) {
        this.f10857 = j;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ˈ */
    public final void mo6392(InterfaceC2646 interfaceC2646, int i) {
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(i, 1);
        this.f10860 = mo1138;
        mo1138.mo4108(this.f10861.f8527);
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ⁱˊ */
    public final void mo6393(long j, long j2) {
        this.f10857 = j;
        this.f10858 = j2;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ﹳٴ */
    public final void mo6394(C3732 c3732, long j, int i, boolean z) {
        int m5097;
        this.f10860.getClass();
        int i2 = this.f10859;
        if (i2 != -1 && i != (m5097 = C2145.m5097(i2))) {
            String str = AbstractC3712.f14481;
            Locale locale = Locale.US;
            AbstractC4892.m9681("Received RTP packet with unexpected sequence number. Expected: ", m5097, "; received: ", i, ".");
        }
        long j2 = ʽ.ᴵᵔ(this.f10861.f8530, this.f10858, j, this.f10857);
        int m7904 = c3732.m7904();
        this.f10860.mo4109(m7904, c3732);
        this.f10860.mo4112(j2, 1, m7904, 0, null);
        this.f10859 = i;
    }
}
