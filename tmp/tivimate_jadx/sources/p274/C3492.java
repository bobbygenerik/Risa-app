package p274;

import java.util.List;
import p055.AbstractC1445;
import p055.C1448;
import p055.C1452;
import p055.C1466;
import p055.C1467;
import p055.C1480;
import p291.AbstractC3615;
import p291.C3612;
import p291.C3622;
import p291.C3625;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ـᵢ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3492 extends AbstractC1445 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C3612 f13704;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f13705;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C1480 f13706;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f13707;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f13708;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C1452 f13709;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long f13710;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final long f13711;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f13712;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f13713;

    public C3492(long j, long j2, long j3, int i, long j4, long j5, long j6, C3612 c3612, C1480 c1480, C1452 c1452) {
        AbstractC3731.m7857(c3612.f14127 == (c1452 != null));
        this.f13712 = j;
        this.f13705 = j2;
        this.f13707 = j3;
        this.f13708 = i;
        this.f13713 = j4;
        this.f13710 = j5;
        this.f13711 = j6;
        this.f13704 = c3612;
        this.f13706 = c1480;
        this.f13709 = c1452;
    }

    @Override // p055.AbstractC1445
    /* renamed from: ˉʿ */
    public final C1466 mo4221(int i, C1466 c1466, long j) {
        boolean z;
        long j2;
        long j3;
        long j4;
        InterfaceC3486 mo7577;
        AbstractC3731.m7860(i, 1);
        C3612 c3612 = this.f13704;
        boolean z2 = c3612.f14127;
        long j5 = this.f13711;
        if (z2 && c3612.f14129 != -9223372036854775807L && c3612.f14133 == -9223372036854775807L) {
            long j6 = 0;
            if (j > 0) {
                j5 += j;
                if (j5 > this.f13710) {
                    z = true;
                    j3 = -9223372036854775807L;
                    j2 = -9223372036854775807L;
                    Object obj = C1466.f5726;
                    c1466.m4266(this.f13706, c3612, this.f13712, this.f13705, this.f13707, true, (c3612.f14127 || c3612.f14129 == j2 || c3612.f14133 != j2) ? false : z, this.f13709, j3, this.f13710, mo4227() - 1, this.f13713);
                    return c1466;
                }
            }
            long j7 = this.f13713 + j5;
            long m7574 = c3612.m7574(0);
            int i2 = 0;
            while (i2 < c3612.f14128.size() - 1 && j7 >= m7574) {
                j7 -= m7574;
                i2++;
                m7574 = c3612.m7574(i2);
            }
            C3622 m7575 = c3612.m7575(i2);
            List list = m7575.f14173;
            z = true;
            int size = list.size();
            j2 = -9223372036854775807L;
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    j4 = j6;
                    i3 = -1;
                    break;
                }
                j4 = j6;
                if (((C3625) list.get(i3)).f14186 == 2) {
                    break;
                }
                i3++;
                j6 = j4;
            }
            if (i3 != -1 && (mo7577 = ((AbstractC3615) ((C3625) m7575.f14173.get(i3)).f14183.get(0)).mo7577()) != null && mo7577.mo4591(m7574) != j4) {
                j5 = (mo7577.mo4574(mo7577.mo4598(j7, m7574)) + j5) - j7;
            }
        } else {
            z = true;
            j2 = -9223372036854775807L;
        }
        j3 = j5;
        Object obj2 = C1466.f5726;
        c1466.m4266(this.f13706, c3612, this.f13712, this.f13705, this.f13707, true, (c3612.f14127 || c3612.f14129 == j2 || c3612.f14133 != j2) ? false : z, this.f13709, j3, this.f13710, mo4227() - 1, this.f13713);
        return c1466;
    }

    @Override // p055.AbstractC1445
    /* renamed from: ˉˆ */
    public final int mo4222() {
        return 1;
    }

    @Override // p055.AbstractC1445
    /* renamed from: ᵔᵢ */
    public final int mo4227() {
        return this.f13704.f14128.size();
    }

    @Override // p055.AbstractC1445
    /* renamed from: ⁱˊ */
    public final int mo4228(Object obj) {
        int intValue;
        if ((obj instanceof Integer) && (intValue = ((Integer) obj).intValue() - this.f13708) >= 0 && intValue < mo4227()) {
            return intValue;
        }
        return -1;
    }

    @Override // p055.AbstractC1445
    /* renamed from: ﾞʻ */
    public final Object mo4230(int i) {
        AbstractC3731.m7860(i, mo4227());
        return Integer.valueOf(this.f13708 + i);
    }

    @Override // p055.AbstractC1445
    /* renamed from: ﾞᴵ */
    public final C1467 mo4231(int i, C1467 c1467, boolean z) {
        AbstractC3731.m7860(i, mo4227());
        C3612 c3612 = this.f13704;
        String str = z ? c3612.m7575(i).f14176 : null;
        Integer valueOf = z ? Integer.valueOf(this.f13708 + i) : null;
        long m7574 = c3612.m7574(i);
        long m7757 = AbstractC3712.m7757(c3612.m7575(i).f14175 - c3612.m7575(0).f14175) - this.f13713;
        c1467.getClass();
        c1467.m4272(str, valueOf, 0, m7574, m7757, C1448.f5640, false);
        return c1467;
    }
}
