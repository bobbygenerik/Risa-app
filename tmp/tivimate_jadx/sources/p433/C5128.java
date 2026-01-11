package p433;

import android.net.Uri;
import android.util.Pair;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p003.C0783;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p022.C1036;
import p047.AbstractC1357;
import p047.C1354;
import p047.C1356;
import p047.C1364;
import p047.C1371;
import p055.C1474;
import p055.C1495;
import p266.C3456;
import p266.InterfaceC3452;
import p266.InterfaceC3457;
import p266.InterfaceC3462;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p372.AbstractC4519;
import p372.InterfaceC4518;
import p384.C4603;
import p428.AbstractC5060;
import p428.InterfaceC5067;
import ˈˊ.ˉˆ;
import ᐧᵎ.ﹳﹳ;
import ᐧﹳ.ʽ;

/* renamed from: ﹶˎ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5128 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final List f19332;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public Uri f19333;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC3462 f19334;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C4603 f19336;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public Uri f19338;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Uri[] f19339;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C0783 f19341;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C1356 f19342;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public BehindLiveWindowException f19343;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C1474 f19344;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public boolean f19345;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC3462 f19346;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5121 f19347;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public InterfaceC5067 f19348;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean f19349;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C1495[] f19350;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C4603 f19335 = new C4603(10);

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public byte[] f19337 = AbstractC3712.f14480;

    /* renamed from: יـ, reason: contains not printable characters */
    public long f19340 = -9223372036854775807L;

    /* JADX WARN: Type inference failed for: r3v1, types: [ﹶʽ.ʽ, ﹶʽ.ˏי, ﹶˎ.ﾞᴵ] */
    public C5128(C5121 c5121, C1356 c1356, Uri[] uriArr, C1495[] c1495Arr, ʽ r5, InterfaceC3457 interfaceC3457, C4603 c4603, List list, C0783 c0783) {
        this.f19347 = c5121;
        this.f19342 = c1356;
        this.f19339 = uriArr;
        this.f19350 = c1495Arr;
        this.f19336 = c4603;
        this.f19332 = list;
        this.f19341 = c0783;
        InterfaceC3462 mo624 = ((InterfaceC3452) r5.ᴵˊ).mo624();
        this.f19346 = mo624;
        if (interfaceC3457 != null) {
            mo624.mo5139(interfaceC3457);
        }
        this.f19334 = ((InterfaceC3452) r5.ᴵˊ).mo624();
        this.f19344 = new C1474("", c1495Arr);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < uriArr.length; i++) {
            if ((c1495Arr[i].f5940 & 16384) == 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        C1474 c1474 = this.f19344;
        int[] iArr = ˉˆ.ˊʻ(arrayList);
        ?? abstractC5060 = new AbstractC5060(c1474, iArr);
        abstractC5060.f19407 = abstractC5060.mo9755(c1474.f5767[iArr[0]]);
        this.f19348 = abstractC5060;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static ﹳﹳ m10084(C1371 c1371, long j, int i) {
        long j2 = c1371.f5385;
        AbstractC0993 abstractC0993 = c1371.f5383;
        int i2 = (int) (j - j2);
        AbstractC0993 abstractC09932 = c1371.f5390;
        if (i2 == abstractC09932.size()) {
            if (i == -1) {
                i = 0;
            }
            if (i < abstractC0993.size()) {
                return new ﹳﹳ((AbstractC1357) abstractC0993.get(i), j, i);
            }
            return null;
        }
        C1354 c1354 = (C1354) abstractC09932.get(i2);
        if (i == -1) {
            return new ﹳﹳ(c1354, j, -1);
        }
        if (i < c1354.f5206.size()) {
            return new ﹳﹳ((AbstractC1357) c1354.f5206.get(i), j, i);
        }
        int i3 = i2 + 1;
        if (i3 < abstractC09932.size()) {
            return new ﹳﹳ((AbstractC1357) abstractC09932.get(i3), j + 1, -1);
        }
        if (abstractC0993.isEmpty()) {
            return null;
        }
        return new ﹳﹳ((AbstractC1357) abstractC0993.get(0), j + 1, 0);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Pair m10085(C5130 c5130, boolean z, C1371 c1371, long j, long j2) {
        boolean z2 = true;
        if (c5130 != null) {
            long j3 = c5130.f16948;
            int i = c5130.f19360;
            if (!z) {
                if (!c5130.f19370) {
                    return new Pair(Long.valueOf(j3), Integer.valueOf(i));
                }
                if (i == -1) {
                    j3 = c5130.mo9088();
                }
                return new Pair(Long.valueOf(j3), Integer.valueOf(i != -1 ? i + 1 : -1));
            }
        }
        long j4 = c1371.f5376;
        AbstractC0993 abstractC0993 = c1371.f5383;
        long j5 = c1371.f5385;
        AbstractC0993 abstractC09932 = c1371.f5390;
        long j6 = j4 + j;
        if (c5130 != null && !this.f19345) {
            j2 = c5130.f16904;
        }
        if (!c1371.f5380 && j2 >= j6) {
            return new Pair(Long.valueOf(j5 + abstractC09932.size()), -1);
        }
        long j7 = j2 - j;
        Long valueOf = Long.valueOf(j7);
        int i2 = 0;
        if (this.f19342.f5214 && c5130 != null) {
            z2 = false;
        }
        int m7806 = AbstractC3712.m7806(abstractC09932, valueOf, z2);
        long j8 = m7806 + j5;
        if (m7806 >= 0) {
            C1354 c1354 = (C1354) abstractC09932.get(m7806);
            AbstractC0993 abstractC09933 = j7 < c1354.f5234 + c1354.f5226 ? c1354.f5206 : abstractC0993;
            while (true) {
                if (i2 >= abstractC09933.size()) {
                    break;
                }
                C1364 c1364 = (C1364) abstractC09933.get(i2);
                if (j7 >= c1364.f5234 + c1364.f5226) {
                    i2++;
                } else if (c1364.f5276) {
                    j8 += abstractC09933 == abstractC0993 ? 1L : 0L;
                    r1 = i2;
                }
            }
        }
        return new Pair(Long.valueOf(j8), Integer.valueOf(r1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1, types: [ᵢˋ.ˑﹳ, ﹶˎ.ˈ] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C5123 m10086(Uri uri, int i, boolean z) {
        if (uri == null) {
            return null;
        }
        C4603 c4603 = this.f19335;
        byte[] bArr = (byte[]) ((C1036) c4603.f17126).remove(uri);
        if (bArr != null) {
            return null;
        }
        C3456 c3456 = new C3456(uri, 1, null, Collections.EMPTY_MAP, 0L, -1L, null, 1);
        C1495 c1495 = this.f19350[i];
        int mo9760 = this.f19348.mo9760();
        Object mo9772 = this.f19348.mo9772();
        byte[] bArr2 = this.f19337;
        ?? abstractC4519 = new AbstractC4519(this.f19334, c3456, 3, c1495, mo9760, mo9772, -9223372036854775807L, -9223372036854775807L);
        if (bArr2 == null) {
            bArr2 = AbstractC3712.f14480;
        }
        abstractC4519.f19266 = bArr2;
        return abstractC4519;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m10087(C5130 c5130) {
        int i = c5130.f19360;
        if (i == -1) {
            return 1;
        }
        C1371 m4026 = this.f19342.m4026(this.f19339[this.f19344.m4280(c5130.f16901)], false);
        m4026.getClass();
        AbstractC0993 abstractC0993 = m4026.f5390;
        int i2 = (int) (c5130.f16948 - m4026.f5385);
        if (i2 < 0) {
            return 1;
        }
        AbstractC0993 abstractC09932 = i2 < abstractC0993.size() ? ((C1354) abstractC0993.get(i2)).f5206 : m4026.f5383;
        if (i >= abstractC09932.size()) {
            return 2;
        }
        C1364 c1364 = (C1364) abstractC09932.get(i);
        if (c1364.f5275) {
            return 0;
        }
        return Objects.equals(Uri.parse(AbstractC3731.m7846(m4026.f5210, c1364.f5227)), c5130.f16905.f13577) ? 1 : 2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC4518[] m10088(C5130 c5130, long j) {
        List list;
        C5128 c5128 = this;
        C5130 c51302 = c5130;
        int m4280 = c51302 == null ? -1 : c5128.f19344.m4280(c51302.f16901);
        int length = c5128.f19348.length();
        InterfaceC4518[] interfaceC4518Arr = new InterfaceC4518[length];
        boolean z = false;
        int i = 0;
        while (i < length) {
            int mo9774 = c5128.f19348.mo9774(i);
            Uri uri = c5128.f19339[mo9774];
            C1356 c1356 = c5128.f19342;
            if (c1356.m4021(uri)) {
                C1371 m4026 = c1356.m4026(uri, z);
                m4026.getClass();
                long j2 = m4026.f5388 - c1356.f5225;
                Pair m10085 = c5128.m10085(c51302, mo9774 != m4280 ? true : z, m4026, j2, j);
                long longValue = ((Long) m10085.first).longValue();
                int intValue = ((Integer) m10085.second).intValue();
                long j3 = m4026.f5385;
                AbstractC0993 abstractC0993 = m4026.f5383;
                AbstractC0993 abstractC09932 = m4026.f5390;
                int i2 = (int) (longValue - j3);
                if (i2 < 0 || abstractC09932.size() < i2) {
                    C0982 c0982 = AbstractC0993.f3977;
                    list = C0956.f3901;
                } else {
                    ArrayList arrayList = new ArrayList();
                    if (i2 < abstractC09932.size()) {
                        if (intValue != -1) {
                            C1354 c1354 = (C1354) abstractC09932.get(i2);
                            if (intValue == 0) {
                                arrayList.add(c1354);
                            } else if (intValue < c1354.f5206.size()) {
                                AbstractC0993 abstractC09933 = c1354.f5206;
                                arrayList.addAll(abstractC09933.subList(intValue, abstractC09933.size()));
                            }
                            i2++;
                        }
                        arrayList.addAll(abstractC09932.subList(i2, abstractC09932.size()));
                        intValue = 0;
                    }
                    if (m4026.f5387 != -9223372036854775807L) {
                        if (intValue == -1) {
                            intValue = 0;
                        }
                        if (intValue < abstractC0993.size()) {
                            arrayList.addAll(abstractC0993.subList(intValue, abstractC0993.size()));
                        }
                    }
                    list = DesugarCollections.unmodifiableList(arrayList);
                }
                interfaceC4518Arr[i] = new C5126(j2, list);
            } else {
                interfaceC4518Arr[i] = InterfaceC4518.f16898;
            }
            i++;
            c5128 = this;
            c51302 = c5130;
            z = false;
        }
        return interfaceC4518Arr;
    }
}
