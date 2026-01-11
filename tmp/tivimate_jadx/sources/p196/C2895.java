package p196;

import com.bumptech.glide.ʽ;
import com.google.android.gms.internal.play_billing.י;
import java.util.Locale;
import p055.C1495;
import p127.C2145;
import p127.C2177;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;
import p411.AbstractC4892;

/* renamed from: ˎʾ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2895 implements InterfaceC2889 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f10895;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f10896;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f10897;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Object f10898;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f10899;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f10900;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object f10901;

    public C2895(int i, int i2, C1495 c1495, int i3, Object obj, long j, long j2) {
        this.f10900 = i;
        this.f10899 = i2;
        this.f10901 = c1495;
        this.f10895 = i3;
        this.f10898 = obj;
        this.f10896 = j;
        this.f10897 = j2;
    }

    public C2895(C2177 c2177) {
        this.f10901 = c2177;
        this.f10896 = -9223372036854775807L;
        this.f10899 = -1;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ʽ */
    public void mo6391(long j) {
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ˈ */
    public void mo6392(InterfaceC2646 interfaceC2646, int i) {
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(i, 2);
        this.f10898 = mo1138;
        String str = AbstractC3712.f14481;
        mo1138.mo4108(((C2177) this.f10901).f8527);
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ⁱˊ */
    public void mo6393(long j, long j2) {
        this.f10896 = j;
        this.f10897 = j2;
        this.f10895 = 0;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ﹳٴ */
    public void mo6394(C3732 c3732, long j, int i, boolean z) {
        int i2;
        int m5097;
        AbstractC3731.m7868((InterfaceC2639) this.f10898);
        int i3 = this.f10899;
        if (i3 != -1 && i != (m5097 = C2145.m5097(i3))) {
            String str = AbstractC3712.f14481;
            Locale locale = Locale.US;
            AbstractC3731.m7850("RtpMpeg4Reader", AbstractC4892.m9681("Received RTP packet with unexpected sequence number. Expected: ", m5097, "; received: ", i, ". Dropping packet."));
        }
        int m7904 = c3732.m7904();
        ((InterfaceC2639) this.f10898).mo4109(m7904, c3732);
        if (this.f10895 == 0) {
            byte[] bArr = c3732.f14534;
            byte[] bArr2 = {0, 0, 1, -74};
            י.ᵔᵢ(bArr, "array");
            int i4 = 0;
            loop0: while (true) {
                if (i4 >= bArr.length - 3) {
                    i4 = -1;
                    break;
                }
                for (int i5 = 0; i5 < 4; i5++) {
                    if (bArr[i4 + i5] != bArr2[i5]) {
                        break;
                    }
                }
                break loop0;
                i4++;
            }
            if (i4 != -1) {
                c3732.m7896(i4 + 4);
                if ((c3732.m7901() >> 6) == 0) {
                    i2 = 1;
                    this.f10900 = i2;
                }
            }
            i2 = 0;
            this.f10900 = i2;
        }
        this.f10895 += m7904;
        if (z) {
            if (this.f10896 == -9223372036854775807L) {
                this.f10896 = j;
            }
            ((InterfaceC2639) this.f10898).mo4112(ʽ.ᴵᵔ(90000, this.f10897, j, this.f10896), this.f10900, this.f10895, 0, null);
            this.f10895 = 0;
        }
        this.f10899 = i;
    }
}
