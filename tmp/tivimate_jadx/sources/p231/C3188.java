package p231;

import android.net.Uri;
import android.os.SystemClock;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import ar.tvplayer.core.domain.ʽﹳ;
import com.google.android.gms.internal.measurement.ˏʻ;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p004.C0797;
import p004.C0800;
import p004.C0802;
import p012.C0894;
import p017.C0956;
import p022.C1047;
import p027.C1090;
import p055.C1495;
import p200.C2905;
import p200.C2910;
import p200.C2911;
import p266.C3456;
import p266.InterfaceC3462;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p364.C4448;
import p364.InterfaceC4442;
import p372.AbstractC4519;
import p372.AbstractC4526;
import p372.C4516;
import p372.C4517;
import p372.InterfaceC4514;
import p372.InterfaceC4518;
import p392.C4664;
import p392.C4680;
import p428.InterfaceC5067;
import ˋⁱ.ﾞᴵ;

/* renamed from: ˑˆ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3188 implements InterfaceC4514 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4517[] f12190;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC3462 f12191;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public InterfaceC5067 f12192;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f12193;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public BehindLiveWindowException f12194;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f12195;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC4442 f12196;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C2905 f12197;

    public C3188(InterfaceC4442 interfaceC4442, C2905 c2905, int i, InterfaceC5067 interfaceC5067, InterfaceC3462 interfaceC3462, ﾞᴵ r30, boolean z) {
        C0797[] c0797Arr;
        this.f12196 = interfaceC4442;
        this.f12197 = c2905;
        this.f12195 = i;
        this.f12192 = interfaceC5067;
        this.f12191 = interfaceC3462;
        C2910 c2910 = c2905.f10950[i];
        this.f12190 = new C4517[interfaceC5067.length()];
        for (int i2 = 0; i2 < this.f12190.length; i2++) {
            int mo9774 = interfaceC5067.mo9774(i2);
            C1495 c1495 = c2910.f10984[mo9774];
            if (c1495.f5938 != null) {
                C2911 c2911 = c2905.f10945;
                c2911.getClass();
                c0797Arr = c2911.f10997;
            } else {
                c0797Arr = null;
            }
            C0797[] c0797Arr2 = c0797Arr;
            int i3 = c2910.f10994;
            int i4 = i3 == 2 ? 4 : 0;
            long j = c2910.f10983;
            long j2 = c2905.f10946;
            this.f12190[i2] = new C4517(new C0800(r30, !z ? 35 : 3, null, new C0802(mo9774, i3, j, -9223372036854775807L, j2, j2, c1495, 0, c0797Arr2, i4, null, null), C0956.f3901, null), c2910.f10994, c1495);
        }
    }

    @Override // p372.InterfaceC4514
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo7001() {
        BehindLiveWindowException behindLiveWindowException = this.f12194;
        if (behindLiveWindowException != null) {
            throw behindLiveWindowException;
        }
        this.f12196.mo7443();
    }

    @Override // p372.InterfaceC4514
    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean mo7002(AbstractC4519 abstractC4519, boolean z, C1090 c1090, C0894 c0894) {
        C4448 c4448 = ˏʻ.ⁱˊ(this.f12192);
        c0894.getClass();
        C1047 m3142 = C0894.m3142(c4448, c1090);
        if (!z || m3142 == null || m3142.f4127 != 2) {
            return false;
        }
        InterfaceC5067 interfaceC5067 = this.f12192;
        return interfaceC5067.mo9761(interfaceC5067.mo9755(abstractC4519.f16901), m3142.f4128);
    }

    @Override // p372.InterfaceC4514
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo7003(C4664 c4664, long j, List list, ʽﹳ r48) {
        List list2;
        int mo9088;
        long m6437;
        if (this.f12194 != null) {
            return;
        }
        C2910[] c2910Arr = this.f12197.f10950;
        int i = this.f12195;
        C2910 c2910 = c2910Arr[i];
        int i2 = c2910.f10989;
        long[] jArr = c2910.f10987;
        if (i2 == 0) {
            r48.ʾˋ = !r4.f10944;
            return;
        }
        if (list.isEmpty()) {
            mo9088 = AbstractC3712.m7783(jArr, j, true);
            list2 = list;
        } else {
            list2 = list;
            mo9088 = (int) (((AbstractC4526) list2.get(list.size() - 1)).mo9088() - this.f12193);
            if (mo9088 < 0) {
                this.f12194 = new BehindLiveWindowException();
                return;
            }
        }
        if (mo9088 >= c2910.f10989) {
            r48.ʾˋ = !this.f12197.f10944;
            return;
        }
        long j2 = c4664.f17482;
        long j3 = j - j2;
        C2905 c2905 = this.f12197;
        if (c2905.f10944) {
            C2910 c29102 = c2905.f10950[i];
            int i3 = c29102.f10989 - 1;
            m6437 = (c29102.m6437(i3) + c29102.f10987[i3]) - j2;
        } else {
            m6437 = -9223372036854775807L;
        }
        int length = this.f12192.length();
        InterfaceC4518[] interfaceC4518Arr = new InterfaceC4518[length];
        for (int i4 = 0; i4 < length; i4++) {
            this.f12192.mo9774(i4);
            interfaceC4518Arr[i4] = new C3189(c2910, mo9088);
        }
        this.f12192.mo9765(j2, j3, m6437, list2, interfaceC4518Arr);
        long j4 = jArr[mo9088];
        long m64372 = c2910.m6437(mo9088) + j4;
        long j5 = list.isEmpty() ? j : -9223372036854775807L;
        int i5 = this.f12193 + mo9088;
        int mo9767 = this.f12192.mo9767();
        C4517 c4517 = this.f12190[mo9767];
        int mo9774 = this.f12192.mo9774(mo9767);
        List list3 = c2910.f10991;
        C1495[] c1495Arr = c2910.f10984;
        AbstractC3731.m7857(c1495Arr != null);
        AbstractC3731.m7857(list3 != null);
        AbstractC3731.m7857(mo9088 < list3.size());
        String num = Integer.toString(c1495Arr[mo9774].f5908);
        String l = ((Long) list3.get(mo9088)).toString();
        Uri m7858 = AbstractC3731.m7858(c2910.f10995, c2910.f10986.replace("{bitrate}", num).replace("{Bitrate}", num).replace("{start time}", l).replace("{start_time}", l));
        SystemClock.elapsedRealtime();
        C1495 mo9773 = this.f12192.mo9773();
        int mo9760 = this.f12192.mo9760();
        Object mo9772 = this.f12192.mo9772();
        Map map = Collections.EMPTY_MAP;
        AbstractC3731.m7851(m7858, "The uri must be set.");
        r48.ᴵˊ = new C4516(this.f12191, new C3456(m7858, 1, null, map, 0L, -1L, null, 0), mo9773, mo9760, mo9772, j4, m64372, j5, -9223372036854775807L, i5, 1, j4, c4517);
    }

    @Override // p372.InterfaceC4514
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean mo7004(long j, AbstractC4519 abstractC4519, List list) {
        if (this.f12194 != null) {
            return false;
        }
        return this.f12192.mo9770(j, abstractC4519, list);
    }

    @Override // p372.InterfaceC4514
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo7005(AbstractC4519 abstractC4519) {
    }

    @Override // p372.InterfaceC4514
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long mo7006(long j, C4680 c4680) {
        C2910 c2910 = this.f12197.f10950[this.f12195];
        int m7783 = AbstractC3712.m7783(c2910.f10987, j, true);
        long[] jArr = c2910.f10987;
        long j2 = jArr[m7783];
        return c4680.m9292(j, j2, (j2 >= j || m7783 >= c2910.f10989 - 1) ? j2 : jArr[m7783 + 1]);
    }

    @Override // p372.InterfaceC4514
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo7007() {
        for (C4517 c4517 : this.f12190) {
            c4517.f16890.mo2909();
        }
    }

    @Override // p372.InterfaceC4514
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int mo7008(long j, List list) {
        return (this.f12194 != null || this.f12192.length() < 2) ? list.size() : this.f12192.mo9766(j, list);
    }
}
