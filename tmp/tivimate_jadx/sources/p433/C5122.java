package p433;

import android.net.Uri;
import android.os.Looper;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p003.C0783;
import p012.C0894;
import p017.AbstractC0993;
import p047.C1354;
import p047.C1356;
import p047.C1363;
import p047.C1364;
import p047.C1368;
import p047.C1371;
import p055.AbstractC1449;
import p055.C1444;
import p055.C1452;
import p055.C1473;
import p055.C1480;
import p266.C3456;
import p266.InterfaceC3452;
import p266.InterfaceC3457;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p364.C4441;
import p364.C4443;
import p364.C4449;
import p366.C4472;
import p395.C4715;
import p395.InterfaceC4734;
import p395.InterfaceC4735;
import p420.AbstractC4990;
import p420.C4973;
import p420.C4987;
import p420.InterfaceC4945;
import ᐧﹳ.ʽ;

/* renamed from: ﹶˎ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5122 extends AbstractC4990 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public C1480 f19254;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final boolean f19255;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final C1356 f19256;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C5121 f19257;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public InterfaceC3457 f19258;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public C1452 f19259;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final long f19260;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C4472 f19261;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final InterfaceC4734 f19262;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final ʽ f19263;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C0894 f19264;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final int f19265;

    static {
        AbstractC1449.m4241("media3.exoplayer.hls");
    }

    public C5122(C1480 c1480, ʽ r2, C5121 c5121, C4472 c4472, InterfaceC4734 interfaceC4734, C0894 c0894, C1356 c1356, long j, boolean z, int i) {
        this.f19254 = c1480;
        this.f19259 = c1480.f5778;
        this.f19263 = r2;
        this.f19257 = c5121;
        this.f19261 = c4472;
        this.f19262 = interfaceC4734;
        this.f19264 = c0894;
        this.f19256 = c1356;
        this.f19260 = j;
        this.f19255 = z;
        this.f19265 = i;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static C1364 m10067(long j, List list) {
        C1364 c1364 = null;
        for (int i = 0; i < list.size(); i++) {
            C1364 c13642 = (C1364) list.get(i);
            long j2 = c13642.f5234;
            if (j2 > j || !c13642.f5276) {
                if (j2 > j) {
                    break;
                }
            } else {
                c1364 = c13642;
            }
        }
        return c1364;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m10068(C1371 c1371) {
        long j;
        C4973 c4973;
        long j2;
        long j3;
        long j4;
        boolean z = c1371.f5375;
        boolean z2 = c1371.f5386;
        AbstractC0993 abstractC0993 = c1371.f5390;
        long j5 = c1371.f5376;
        long j6 = c1371.f5382;
        int i = c1371.f5378;
        long j7 = c1371.f5388;
        long m7755 = z ? AbstractC3712.m7755(j7) : -9223372036854775807L;
        long j8 = (i == 2 || i == 1) ? m7755 : -9223372036854775807L;
        C1356 c1356 = this.f19256;
        c1356.f5218.getClass();
        C4472 c4472 = new C4472(7);
        long j9 = 0;
        if (c1356.f5214) {
            C1363 c1363 = c1371.f5373;
            long j10 = j7 - c1356.f5225;
            boolean z3 = c1371.f5380;
            long j11 = z3 ? j10 + j5 : -9223372036854775807L;
            long m7757 = c1371.f5375 ? AbstractC3712.m7757(AbstractC3712.m7761(this.f19260)) - (j7 + j5) : 0L;
            long j12 = this.f19259.f5651;
            if (j12 != -9223372036854775807L) {
                j3 = AbstractC3712.m7757(j12);
            } else {
                if (j6 != -9223372036854775807L) {
                    j2 = j5 - j6;
                } else {
                    j2 = c1363.f5271;
                    if (j2 == -9223372036854775807L || c1371.f5387 == -9223372036854775807L) {
                        j2 = c1363.f5270;
                        if (j2 == -9223372036854775807L) {
                            j2 = 3 * c1371.f5379;
                        }
                    }
                }
                j3 = j2 + m7757;
            }
            long j13 = j5 + m7757;
            long m7767 = AbstractC3712.m7767(j3, m7757, j13);
            C1452 c1452 = mo5105().f5778;
            boolean z4 = c1452.f5648 == -3.4028235E38f && c1452.f5649 == -3.4028235E38f && c1363.f5270 == -9223372036854775807L && c1363.f5271 == -9223372036854775807L;
            C1473 c1473 = new C1473();
            c1473.f5765 = AbstractC3712.m7755(m7767);
            c1473.f5762 = z4 ? 1.0f : this.f19259.f5648;
            c1473.f5763 = z4 ? 1.0f : this.f19259.f5649;
            C1452 c14522 = new C1452(c1473);
            this.f19259 = c14522;
            if (j6 == -9223372036854775807L) {
                j6 = j13 - AbstractC3712.m7757(c14522.f5651);
            }
            if (z2) {
                j9 = j6;
            } else {
                C1364 m10067 = m10067(j6, c1371.f5383);
                if (m10067 != null) {
                    j4 = m10067.f5234;
                } else if (!abstractC0993.isEmpty()) {
                    C1354 c1354 = (C1354) abstractC0993.get(AbstractC3712.m7806(abstractC0993, Long.valueOf(j6), true));
                    C1364 m100672 = m10067(j6, c1354.f5206);
                    j4 = m100672 != null ? m100672.f5234 : c1354.f5234;
                }
                j9 = j4;
            }
            c4973 = new C4973(j8, m7755, j11, c1371.f5376, j10, j9, true, !z3, i == 2 && c1371.f5392, c4472, mo5105(), this.f19259);
        } else {
            if (j6 == -9223372036854775807L || abstractC0993.isEmpty()) {
                j = 0;
            } else {
                if (!z2 && j6 != j5) {
                    j6 = ((C1354) abstractC0993.get(AbstractC3712.m7806(abstractC0993, Long.valueOf(j6), true))).f5234;
                }
                j = j6;
            }
            long j14 = c1371.f5376;
            c4973 = new C4973(j8, m7755, j14, j14, 0L, j, true, false, true, c4472, mo5105(), null);
        }
        m9840(c4973);
    }

    @Override // p420.AbstractC4990
    /* renamed from: ʾᵎ */
    public final void mo5098() {
        C1356 c1356 = this.f19256;
        c1356.f5222 = null;
        c1356.f5224 = null;
        c1356.f5218 = null;
        c1356.f5225 = -9223372036854775807L;
        c1356.f5219.m8980(null);
        c1356.f5219 = null;
        HashMap hashMap = c1356.f5215;
        Iterator it = hashMap.values().iterator();
        while (it.hasNext()) {
            ((C1368) it.next()).f5367.m8980(null);
        }
        c1356.f5216.removeCallbacksAndMessages(null);
        c1356.f5216 = null;
        hashMap.clear();
        this.f19262.mo9000();
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˈ */
    public final void mo5099() {
        C1356 c1356 = this.f19256;
        C4441 c4441 = c1356.f5219;
        if (c4441 != null) {
            c4441.mo7443();
        }
        Uri uri = c1356.f5222;
        if (uri != null) {
            C1368 c1368 = (C1368) c1356.f5215.get(uri);
            c1368.f5367.mo7443();
            IOException iOException = c1368.f5365;
            if (iOException != null) {
                throw iOException;
            }
        }
    }

    @Override // p420.AbstractC4990
    /* renamed from: ˏי */
    public final void mo5100(InterfaceC3457 interfaceC3457) {
        this.f19258 = interfaceC3457;
        Looper myLooper = Looper.myLooper();
        myLooper.getClass();
        C0783 c0783 = this.f18641;
        AbstractC3731.m7868(c0783);
        InterfaceC4734 interfaceC4734 = this.f19262;
        interfaceC4734.mo8990(myLooper, c0783);
        interfaceC4734.mo8998();
        ʽﹳ m9841 = m9841(null);
        C1444 c1444 = mo5105().f5781;
        c1444.getClass();
        Uri uri = c1444.f5629;
        C1356 c1356 = this.f19256;
        c1356.getClass();
        c1356.f5216 = AbstractC3712.m7759(null);
        c1356.f5217 = m9841;
        c1356.f5223 = this;
        Map map = Collections.EMPTY_MAP;
        AbstractC3731.m7851(uri, "The uri must be set.");
        C4449 c4449 = new C4449(((InterfaceC3452) c1356.f5213.ᴵˊ).mo624(), new C3456(uri, 1, null, map, 0L, -1L, null, 1), 4, c1356.f5220.mo4050());
        AbstractC3731.m7857(c1356.f5219 == null);
        C4441 c4441 = new C4441("DefaultHlsPlaylistTracker:MultivariantPlaylist");
        c1356.f5219 = c4441;
        c4441.m8983(c4449, c1356, c1356.f5212.m3145(c4449.f16658));
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˑﹳ */
    public final void mo5101(InterfaceC4945 interfaceC4945) {
        C5119 c5119 = (C5119) interfaceC4945;
        c5119.f19236.f5221.remove(c5119);
        for (C5125 c5125 : c5119.f19233) {
            if (c5125.f19299) {
                for (C5129 c5129 : c5125.f19291) {
                    c5129.m9822();
                    InterfaceC4735 interfaceC4735 = c5129.f18557;
                    if (interfaceC4735 != null) {
                        interfaceC4735.mo9462(c5129.f18548);
                        c5129.f18557 = null;
                        c5129.f18555 = null;
                    }
                }
            }
            C5128 c5128 = c5125.f19290;
            C1368 c1368 = (C1368) c5128.f19342.f5215.get(c5128.f19339[c5128.f19348.mo9754()]);
            if (c1368 != null) {
                c1368.f5369 = false;
            }
            c5128.f19343 = null;
            c5125.f19308.m8980(c5125);
            c5125.f19295.removeCallbacksAndMessages(null);
            c5125.f19307 = true;
            c5125.f19279.clear();
        }
        c5119.f19231 = null;
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ᵔʾ */
    public final synchronized void mo5102(C1480 c1480) {
        this.f19254 = c1480;
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ⁱˊ */
    public final InterfaceC4945 mo5104(C4987 c4987, C4443 c4443, long j) {
        ʽﹳ m9841 = m9841(c4987);
        C4715 c4715 = new C4715(this.f18639.f17808, 0, c4987);
        InterfaceC3457 interfaceC3457 = this.f19258;
        C0783 c0783 = this.f18641;
        AbstractC3731.m7868(c0783);
        return new C5119(this.f19257, this.f19256, this.f19263, interfaceC3457, this.f19262, c4715, this.f19264, m9841, c4443, this.f19261, this.f19255, this.f19265, c0783);
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ﹳٴ */
    public final synchronized C1480 mo5105() {
        return this.f19254;
    }
}
