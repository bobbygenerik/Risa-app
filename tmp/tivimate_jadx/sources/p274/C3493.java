package p274;

import android.os.SystemClock;
import androidx.media3.datasource.HttpDataSource$InvalidResponseCodeException;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import ar.tvplayer.core.domain.ʽﹳ;
import j$.util.Objects;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import p004.C0800;
import p012.C0894;
import p017.AbstractC0993;
import p022.C1047;
import p027.C1090;
import p040.C1293;
import p051.C1394;
import p055.AbstractC1464;
import p055.C1495;
import p079.C1681;
import p171.C2628;
import p171.InterfaceC2626;
import p171.InterfaceC2632;
import p231.C3189;
import p243.C3243;
import p266.C3456;
import p266.InterfaceC3462;
import p291.AbstractC3615;
import p291.C3612;
import p291.C3613;
import p291.C3624;
import p291.C3625;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p364.C4448;
import p364.InterfaceC4442;
import p366.C4472;
import p372.AbstractC4519;
import p372.AbstractC4526;
import p372.C4516;
import p372.C4517;
import p372.C4520;
import p372.C4522;
import p372.InterfaceC4514;
import p372.InterfaceC4518;
import p392.C4664;
import p428.InterfaceC5067;
import ˈˊ.ˉˆ;
import ˋⁱ.ﾞᴵ;
import ˏˆ.ﹳٴ;

/* renamed from: ـᵢ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3493 implements InterfaceC4514 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C3488[] f13714;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int[] f13715;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public InterfaceC5067 f13716;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f13717;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public BehindLiveWindowException f13718;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final InterfaceC3462 f13719;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public C3612 f13720;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f13721;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean f13722;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C3495 f13723;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ﹳٴ f13724;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC4442 f13725;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f13726;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f13727;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ـᵢ.ٴﹶ] */
    public C3493(ʽﹳ r21, InterfaceC4442 interfaceC4442, C3612 c3612, ﹳٴ r24, int i, int[] iArr, InterfaceC5067 interfaceC5067, int i2, InterfaceC3462 interfaceC3462, long j, int i3, boolean z, ArrayList arrayList, C3495 c3495) {
        C3488[] c3488Arr;
        int i4;
        C1495 c1495;
        AbstractC3615 abstractC3615;
        InterfaceC2632 c0800;
        C4517 c4517;
        ?? obj = new Object();
        obj.f13725 = interfaceC4442;
        obj.f13720 = c3612;
        obj.f13724 = r24;
        obj.f13715 = iArr;
        obj.f13716 = interfaceC5067;
        obj.f13717 = i2;
        obj.f13719 = interfaceC3462;
        obj.f13726 = i;
        obj.f13727 = j;
        obj.f13721 = i3;
        C3495 c34952 = c3495;
        obj.f13723 = c34952;
        long m7574 = c3612.m7574(i);
        ArrayList m7428 = obj.m7428();
        obj.f13714 = new C3488[interfaceC5067.length()];
        int i5 = 0;
        int i6 = 0;
        C3493 c3493 = obj;
        while (i6 < c3493.f13714.length) {
            AbstractC3615 abstractC36152 = (AbstractC3615) m7428.get(interfaceC5067.mo9774(i6));
            C3624 c3624 = r24.ᵔי(abstractC36152.f14150);
            C3488[] c3488Arr2 = c3493.f13714;
            C3624 c36242 = c3624 == null ? (C3624) abstractC36152.f14150.get(i5) : c3624;
            C1495 c14952 = abstractC36152.f14148;
            r21.getClass();
            String str = c14952.f5913;
            if (!AbstractC1464.m4260(str)) {
                if (str != null && (str.startsWith("video/webm") || str.startsWith("audio/webm") || str.startsWith("application/webm") || str.startsWith("video/x-matroska") || str.startsWith("audio/x-matroska") || str.startsWith("application/x-matroska"))) {
                    i4 = i6;
                    abstractC3615 = abstractC36152;
                    c1495 = c14952;
                    c3488Arr = c3488Arr2;
                    c0800 = new C3243((ﾞᴵ) r21.ᴵˊ, r21.ʾˋ ? 1 : 3);
                } else if (Objects.equals(str, "image/jpeg")) {
                    c0800 = new C1293(1);
                } else if (Objects.equals(str, "image/png")) {
                    c0800 = new C1293((byte) 0, 1);
                } else {
                    int i7 = z ? 4 : 0;
                    c3488Arr = c3488Arr2;
                    i4 = i6;
                    c1495 = c14952;
                    int i8 = r21.ʾˋ ? i7 : i7 | 32;
                    abstractC3615 = abstractC36152;
                    c0800 = new C0800((ﾞᴵ) r21.ᴵˊ, i8, null, null, arrayList, c34952);
                }
                c4517 = new C4517(c0800, i2, c1495);
                long j2 = m7574;
                c3488Arr[i4] = new C3488(j2, abstractC3615, c36242, c4517, 0L, abstractC3615.mo7577());
                i6 = i4 + 1;
                c3493 = this;
                c34952 = c3495;
                m7574 = j2;
                i5 = 0;
            } else if (r21.ʾˋ) {
                c0800 = new C1394(((ﾞᴵ) r21.ᴵˊ).ﹳᐧ(c14952), c14952);
            } else {
                c4517 = null;
                i4 = i6;
                abstractC3615 = abstractC36152;
                c3488Arr = c3488Arr2;
                long j22 = m7574;
                c3488Arr[i4] = new C3488(j22, abstractC3615, c36242, c4517, 0L, abstractC3615.mo7577());
                i6 = i4 + 1;
                c3493 = this;
                c34952 = c3495;
                m7574 = j22;
                i5 = 0;
            }
            i4 = i6;
            abstractC3615 = abstractC36152;
            c1495 = c14952;
            c3488Arr = c3488Arr2;
            c4517 = new C4517(c0800, i2, c1495);
            long j222 = m7574;
            c3488Arr[i4] = new C3488(j222, abstractC3615, c36242, c4517, 0L, abstractC3615.mo7577());
            i6 = i4 + 1;
            c3493 = this;
            c34952 = c3495;
            m7574 = j222;
            i5 = 0;
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ArrayList m7428() {
        List list = this.f13720.m7575(this.f13726).f14173;
        ArrayList arrayList = new ArrayList();
        for (int i : this.f13715) {
            arrayList.addAll(((C3625) list.get(i)).f14183);
        }
        return arrayList;
    }

    @Override // p372.InterfaceC4514
    /* renamed from: ʽ */
    public final void mo7001() {
        BehindLiveWindowException behindLiveWindowException = this.f13718;
        if (behindLiveWindowException != null) {
            throw behindLiveWindowException;
        }
        this.f13725.mo7443();
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C3488 m7429(int i) {
        C3488[] c3488Arr = this.f13714;
        C3488 c3488 = c3488Arr[i];
        C3624 c3624 = this.f13724.ᵔי(((AbstractC3615) c3488.f13686).f14150);
        if (c3624 == null || c3624.equals((C3624) c3488.f13690)) {
            return c3488;
        }
        C3488 c34882 = new C3488(c3488.f13688, (AbstractC3615) c3488.f13686, c3624, (C4517) c3488.f13685, c3488.f13684, (InterfaceC3486) c3488.f13687);
        c3488Arr[i] = c34882;
        return c34882;
    }

    @Override // p372.InterfaceC4514
    /* renamed from: ˈ */
    public final boolean mo7002(AbstractC4519 abstractC4519, boolean z, C1090 c1090, C0894 c0894) {
        long j;
        if (z) {
            C3495 c3495 = this.f13723;
            if (c3495 != null) {
                long j2 = c3495.f13730;
                boolean z2 = j2 != -9223372036854775807L && j2 < abstractC4519.f16904;
                C3491 c3491 = c3495.f13731;
                if (c3491.f13699.f14127) {
                    if (!c3491.f13698) {
                        if (z2) {
                            if (c3491.f13700) {
                                c3491.f13698 = true;
                                c3491.f13700 = false;
                                C3496 c3496 = c3491.f13701.f13812;
                                c3496.f13748.removeCallbacks(c3496.f13759);
                                c3496.m7434();
                                return true;
                            }
                        }
                    }
                    return true;
                }
            }
            boolean z3 = this.f13720.f14127;
            C3488[] c3488Arr = this.f13714;
            if (!z3 && (abstractC4519 instanceof AbstractC4526)) {
                IOException iOException = (IOException) c1090.f4252;
                if ((iOException instanceof HttpDataSource$InvalidResponseCodeException) && ((HttpDataSource$InvalidResponseCodeException) iOException).f1141 == 404) {
                    C3488 c3488 = c3488Arr[this.f13716.mo9755(abstractC4519.f16901)];
                    long m7420 = c3488.m7420();
                    if (m7420 != -1 && m7420 != 0) {
                        InterfaceC3486 interfaceC3486 = (InterfaceC3486) c3488.f13687;
                        AbstractC3731.m7868(interfaceC3486);
                        if (((AbstractC4526) abstractC4519).mo9088() > ((interfaceC3486.mo4573() + c3488.f13684) + m7420) - 1) {
                            this.f13722 = true;
                            return true;
                        }
                    }
                }
            }
            C3488 c34882 = c3488Arr[this.f13716.mo9755(abstractC4519.f16901)];
            AbstractC3615 abstractC3615 = (AbstractC3615) c34882.f13686;
            C3624 c3624 = (C3624) c34882.f13690;
            AbstractC0993 abstractC0993 = abstractC3615.f14150;
            ﹳٴ r4 = this.f13724;
            C3624 c36242 = r4.ᵔי(abstractC0993);
            if (c36242 == null || c3624.equals(c36242)) {
                InterfaceC5067 interfaceC5067 = this.f13716;
                AbstractC0993 abstractC09932 = ((AbstractC3615) c34882.f13686).f14150;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                int length = interfaceC5067.length();
                int i = 0;
                for (int i2 = 0; i2 < length; i2++) {
                    if (interfaceC5067.mo9756(i2, elapsedRealtime)) {
                        i++;
                    }
                }
                HashSet hashSet = new HashSet();
                for (int i3 = 0; i3 < abstractC09932.size(); i3++) {
                    hashSet.add(Integer.valueOf(((C3624) abstractC09932.get(i3)).f14179));
                }
                int size = hashSet.size();
                HashSet hashSet2 = new HashSet();
                ArrayList arrayList = r4.ˆʾ(abstractC09932);
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    hashSet2.add(Integer.valueOf(((C3624) arrayList.get(i4)).f14179));
                }
                C4448 c4448 = new C4448(size, size - hashSet2.size(), length, i);
                if (c4448.m9003(2) || c4448.m9003(1)) {
                    c0894.getClass();
                    C1047 m3142 = C0894.m3142(c4448, c1090);
                    if (m3142 != null) {
                        long j3 = m3142.f4128;
                        int i5 = m3142.f4127;
                        if (c4448.m9003(i5)) {
                            if (i5 == 2) {
                                InterfaceC5067 interfaceC50672 = this.f13716;
                                return interfaceC50672.mo9761(interfaceC50672.mo9755(abstractC4519.f16901), j3);
                            }
                            if (i5 == 1) {
                                long elapsedRealtime2 = SystemClock.elapsedRealtime() + j3;
                                String str = c3624.f14181;
                                HashMap hashMap = (HashMap) r4.ᴵˊ;
                                if (hashMap.containsKey(str)) {
                                    Long l = (Long) hashMap.get(str);
                                    String str2 = AbstractC3712.f14481;
                                    j = Math.max(elapsedRealtime2, l.longValue());
                                } else {
                                    j = elapsedRealtime2;
                                }
                                hashMap.put(str, Long.valueOf(j));
                                int i6 = c3624.f14179;
                                if (i6 != Integer.MIN_VALUE) {
                                    Integer valueOf = Integer.valueOf(i6);
                                    HashMap hashMap2 = (HashMap) r4.ʽʽ;
                                    if (hashMap2.containsKey(valueOf)) {
                                        Long l2 = (Long) hashMap2.get(valueOf);
                                        String str3 = AbstractC3712.f14481;
                                        elapsedRealtime2 = Math.max(elapsedRealtime2, l2.longValue());
                                    }
                                    hashMap2.put(valueOf, Long.valueOf(elapsedRealtime2));
                                }
                            }
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p372.InterfaceC4514
    /* renamed from: ˑﹳ */
    public final void mo7003(C4664 c4664, long j, List list, ʽﹳ r63) {
        long j2;
        long j3;
        List list2;
        AbstractC4526 abstractC4526;
        C3488[] c3488Arr;
        long j4;
        long j5;
        long j6;
        long j7;
        int i;
        long j8;
        long m7767;
        Object c4516;
        long m7757;
        long j9;
        long m77672;
        boolean z;
        if (this.f13718 != null) {
            return;
        }
        long j10 = c4664.f17482;
        long j11 = j - j10;
        long m77572 = AbstractC3712.m7757(this.f13720.m7575(this.f13726).f14175) + AbstractC3712.m7757(this.f13720.f14134) + j;
        int i2 = 0;
        C3495 c3495 = this.f13723;
        if (c3495 != null) {
            C3491 c3491 = c3495.f13731;
            C3612 c3612 = c3491.f13699;
            j3 = -9223372036854775807L;
            C3500 c3500 = c3491.f13701;
            if (!c3612.f14127) {
                j2 = j10;
                z = false;
            } else if (c3491.f13698) {
                j2 = j10;
                z = true;
            } else {
                j2 = j10;
                Map.Entry ceilingEntry = c3491.f13702.ceilingEntry(Long.valueOf(c3612.f14132));
                if (ceilingEntry == null || ((Long) ceilingEntry.getValue()).longValue() >= m77572) {
                    z = false;
                } else {
                    long longValue = ((Long) ceilingEntry.getKey()).longValue();
                    C3496 c3496 = c3500.f13812;
                    long j12 = c3496.f13755;
                    if (j12 == -9223372036854775807L || j12 < longValue) {
                        c3496.f13755 = longValue;
                    }
                    z = true;
                }
                if (z && c3491.f13700) {
                    c3491.f13698 = true;
                    c3491.f13700 = false;
                    C3496 c34962 = c3500.f13812;
                    c34962.f13748.removeCallbacks(c34962.f13759);
                    c34962.m7434();
                }
            }
            if (z) {
                return;
            }
        } else {
            j2 = j10;
            j3 = -9223372036854775807L;
        }
        long m77573 = AbstractC3712.m7757(AbstractC3712.m7761(this.f13727));
        C3612 c36122 = this.f13720;
        long j13 = c36122.f14134;
        long m77574 = j13 == j3 ? j3 : m77573 - AbstractC3712.m7757(j13 + c36122.m7575(this.f13726).f14175);
        if (list.isEmpty()) {
            list2 = list;
            abstractC4526 = null;
        } else {
            list2 = list;
            abstractC4526 = (AbstractC4526) list2.get(list.size() - 1);
        }
        int length = this.f13716.length();
        InterfaceC4518[] interfaceC4518Arr = new InterfaceC4518[length];
        int i3 = 0;
        while (true) {
            c3488Arr = this.f13714;
            if (i3 >= length) {
                break;
            }
            C3488 c3488 = c3488Arr[i3];
            int i4 = i2;
            InterfaceC3486 interfaceC3486 = (InterfaceC3486) c3488.f13687;
            C4472 c4472 = InterfaceC4518.f16898;
            if (interfaceC3486 == null) {
                interfaceC4518Arr[i3] = c4472;
                j9 = m77574;
            } else {
                long m7418 = c3488.m7418(m77573);
                long m7425 = c3488.m7425(m77573);
                if (abstractC4526 != null) {
                    m77672 = abstractC4526.mo9088();
                    j9 = m77574;
                } else {
                    InterfaceC3486 interfaceC34862 = (InterfaceC3486) c3488.f13687;
                    AbstractC3731.m7868(interfaceC34862);
                    j9 = m77574;
                    m77672 = AbstractC3712.m7767(interfaceC34862.mo4598(j, c3488.f13688) + c3488.f13684, m7418, m7425);
                }
                long j14 = m77672;
                if (j14 < m7418) {
                    interfaceC4518Arr[i3] = c4472;
                } else {
                    interfaceC4518Arr[i3] = new C3189(m7429(i3), j14, m7425);
                }
            }
            i3++;
            i2 = i4;
            m77574 = j9;
        }
        long j15 = m77574;
        int i5 = i2;
        if (!this.f13720.f14127 || c3488Arr[i5].m7420() == 0) {
            j4 = j11;
            j5 = 0;
            j6 = j3;
        } else {
            long m7421 = c3488Arr[i5].m7421(c3488Arr[i5].m7425(m77573));
            C3612 c36123 = this.f13720;
            long j16 = c36123.f14134;
            if (j16 == j3) {
                j4 = j11;
                m7757 = j3;
            } else {
                j4 = j11;
                m7757 = m77573 - AbstractC3712.m7757(j16 + c36123.m7575(this.f13726).f14175);
            }
            long min = Math.min(m7757, m7421) - j2;
            j5 = 0;
            j6 = Math.max(0L, min);
        }
        long j17 = j5;
        this.f13716.mo9765(j2, j4, j6, list2, interfaceC4518Arr);
        int mo9767 = this.f13716.mo9767();
        SystemClock.elapsedRealtime();
        C3488 m7429 = m7429(mo9767);
        long j18 = m7429.f13688;
        long j19 = m7429.f13684;
        InterfaceC3486 interfaceC34863 = (InterfaceC3486) m7429.f13687;
        C3624 c3624 = (C3624) m7429.f13690;
        C4517 c4517 = (C4517) m7429.f13685;
        AbstractC3615 abstractC3615 = (AbstractC3615) m7429.f13686;
        if (c4517 != null) {
            i = 1;
            C3613 c3613 = c4517.f16897 == null ? abstractC3615.f14151 : null;
            j7 = j19;
            C3613 mo7578 = interfaceC34863 == null ? abstractC3615.mo7578() : null;
            if (c3613 != null || mo7578 != null) {
                C1495 mo9773 = this.f13716.mo9773();
                int mo9760 = this.f13716.mo9760();
                Object mo9772 = this.f13716.mo9772();
                if (c3613 != null) {
                    C3613 m7576 = c3613.m7576(mo7578, c3624.f14182);
                    if (m7576 != null) {
                        c3613 = m7576;
                    }
                } else {
                    mo7578.getClass();
                    c3613 = mo7578;
                }
                r63.ᴵˊ = new C4520(this.f13719, ˉˆ.ʽ(abstractC3615, c3624.f14182, c3613, i5), mo9773, mo9760, mo9772, (C4517) m7429.f13685);
                return;
            }
        } else {
            j7 = j19;
            i = 1;
        }
        C3612 c36124 = this.f13720;
        int i6 = (c36124.f14127 && this.f13726 == c36124.f14128.size() + (-1)) ? i : i5;
        boolean z2 = (i6 == 0 || j18 != j3) ? i : i5;
        if (m7429.m7420() == j17) {
            r63.ʾˋ = z2;
            return;
        }
        long m74182 = m7429.m7418(m77573);
        long m74252 = m7429.m7425(m77573);
        boolean z3 = z2;
        if (i6 != 0) {
            long m74212 = m7429.m7421(m74252);
            z3 = (z2 ? 1 : 0) & ((m74212 - m7429.m7414(m74252)) + m74212 >= j18 ? i : i5);
        }
        if (abstractC4526 != null) {
            m7767 = abstractC4526.mo9088();
            j8 = m74252;
        } else {
            AbstractC3731.m7868(interfaceC34863);
            j8 = m74252;
            m7767 = AbstractC3712.m7767(interfaceC34863.mo4598(j, j18) + j7, m74182, j8);
        }
        long j20 = m7767;
        if (j20 < m74182) {
            this.f13718 = new BehindLiveWindowException();
            return;
        }
        if (j20 > j8 || (this.f13722 && j20 >= j8)) {
            r63.ʾˋ = z3;
            return;
        }
        if (z3 != 0 && m7429.m7414(j20) >= j18) {
            r63.ʾˋ = i;
            return;
        }
        int min2 = (int) Math.min(this.f13721, (j8 - j20) + 1);
        int i7 = 1;
        if (j18 != j3) {
            while (min2 > 1 && m7429.m7414((min2 + j20) - 1) >= j18) {
                min2--;
            }
        }
        long j21 = list.isEmpty() ? j : j3;
        C1495 mo97732 = this.f13716.mo9773();
        int mo97602 = this.f13716.mo9760();
        Object mo97722 = this.f13716.mo9772();
        long m7414 = m7429.m7414(j20);
        AbstractC3731.m7868(interfaceC34863);
        C3613 mo4575 = interfaceC34863.mo4575(j20 - j7);
        InterfaceC3462 interfaceC3462 = this.f13719;
        if (c4517 == null) {
            c4516 = new C4522(interfaceC3462, ˉˆ.ʽ(abstractC3615, c3624.f14182, mo4575, m7429.m7416(j20, j15) ? 0 : 8), mo97732, mo97602, mo97722, m7414, m7429.m7421(j20), j20, this.f13717, mo97732);
        } else {
            C3613 c36132 = mo4575;
            int i8 = 1;
            while (i7 < min2) {
                int i9 = min2;
                AbstractC3731.m7868(interfaceC34863);
                C3613 m75762 = c36132.m7576(interfaceC34863.mo4575((j20 + i7) - j7), c3624.f14182);
                if (m75762 == null) {
                    break;
                }
                i8++;
                i7++;
                c36132 = m75762;
                min2 = i9;
            }
            long j22 = (j20 + i8) - 1;
            long m74213 = m7429.m7421(j22);
            long j23 = (j18 == j3 || j18 > m74213) ? j3 : j18;
            C3456 c3456 = ˉˆ.ʽ(abstractC3615, c3624.f14182, c36132, m7429.m7416(j22, j15) ? 0 : 8);
            long j24 = -abstractC3615.f14147;
            if (AbstractC1464.m4255(mo97732.f5930)) {
                j24 += m7414;
            }
            c4516 = new C4516(interfaceC3462, c3456, mo97732, mo97602, mo97722, m7414, m74213, j21, j23, j20, i8, j24, (C4517) m7429.f13685);
        }
        r63.ᴵˊ = c4516;
    }

    @Override // p372.InterfaceC4514
    /* renamed from: ᵎﹶ */
    public final boolean mo7004(long j, AbstractC4519 abstractC4519, List list) {
        if (this.f13718 != null) {
            return false;
        }
        return this.f13716.mo9770(j, abstractC4519, list);
    }

    @Override // p372.InterfaceC4514
    /* renamed from: ᵔᵢ */
    public final void mo7005(AbstractC4519 abstractC4519) {
        if (abstractC4519 instanceof C4520) {
            int mo9755 = this.f13716.mo9755(((C4520) abstractC4519).f16901);
            C3488[] c3488Arr = this.f13714;
            C3488 c3488 = c3488Arr[mo9755];
            if (((InterfaceC3486) c3488.f13687) == null) {
                C4517 c4517 = (C4517) c3488.f13685;
                AbstractC3731.m7868(c4517);
                InterfaceC2626 interfaceC2626 = c4517.f16892;
                C2628 c2628 = interfaceC2626 instanceof C2628 ? (C2628) interfaceC2626 : null;
                if (c2628 != null) {
                    AbstractC3615 abstractC3615 = (AbstractC3615) c3488.f13686;
                    c3488Arr[mo9755] = new C3488(c3488.f13688, abstractC3615, (C3624) c3488.f13690, (C4517) c3488.f13685, c3488.f13684, new C1681(c2628, abstractC3615.f14147, 6));
                }
            }
        }
        C3495 c3495 = this.f13723;
        if (c3495 != null) {
            long j = c3495.f13730;
            if (j == -9223372036854775807L || abstractC4519.f16902 > j) {
                c3495.f13730 = abstractC4519.f16902;
            }
            c3495.f13731.f13700 = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004d, code lost:
    
        if (r3 < (((r10.mo4573() + r8) + r11) - 1)) goto L15;
     */
    @Override // p372.InterfaceC4514
    /* renamed from: ⁱˊ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo7006(long r20, p392.C4680 r22) {
        /*
            r19 = this;
            r1 = r20
            r7 = r19
            ـᵢ.ˆʾ[] r0 = r7.f13714
            int r3 = r0.length
            r4 = 0
        L8:
            if (r4 >= r3) goto L64
            r5 = r0[r4]
            java.lang.Object r6 = r5.f13687
            ـᵢ.ʼˎ r6 = (p274.InterfaceC3486) r6
            long r8 = r5.f13684
            java.lang.Object r10 = r5.f13687
            ـᵢ.ʼˎ r10 = (p274.InterfaceC3486) r10
            if (r6 == 0) goto L5f
            long r11 = r5.m7420()
            r13 = 0
            int r6 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r6 != 0) goto L23
            goto L5f
        L23:
            p305.AbstractC3731.m7868(r10)
            long r3 = r5.f13688
            long r3 = r10.mo4598(r1, r3)
            long r3 = r3 + r8
            r13 = r3
            long r3 = r5.m7414(r13)
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 >= 0) goto L58
            r15 = -1
            int r0 = (r11 > r15 ? 1 : (r11 == r15 ? 0 : -1))
            r15 = 1
            if (r0 == 0) goto L4f
            p305.AbstractC3731.m7868(r10)
            long r17 = r10.mo4573()
            long r17 = r17 + r8
            long r17 = r17 + r11
            long r17 = r17 - r15
            int r0 = (r13 > r17 ? 1 : (r13 == r17 ? 0 : -1))
            if (r0 >= 0) goto L58
        L4f:
            long r8 = r13 + r15
            long r5 = r5.m7414(r8)
        L55:
            r0 = r22
            goto L5a
        L58:
            r5 = r3
            goto L55
        L5a:
            long r0 = r0.m9292(r1, r3, r5)
            return r0
        L5f:
            int r4 = r4 + 1
            r1 = r20
            goto L8
        L64:
            return r20
        */
        throw new UnsupportedOperationException("Method not decompiled: p274.C3493.mo7006(long, ⁱי.ᴵʼ):long");
    }

    @Override // p372.InterfaceC4514
    /* renamed from: ﹳٴ */
    public final void mo7007() {
        for (C3488 c3488 : this.f13714) {
            C4517 c4517 = (C4517) c3488.f13685;
            if (c4517 != null) {
                c4517.f16890.mo2909();
            }
        }
    }

    @Override // p372.InterfaceC4514
    /* renamed from: ﾞᴵ */
    public final int mo7008(long j, List list) {
        return (this.f13718 != null || this.f13716.length() < 2) ? list.size() : this.f13716.mo9766(j, list);
    }
}
