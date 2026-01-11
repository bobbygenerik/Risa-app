package p274;

import android.support.v4.media.session.AbstractC0001;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import j$.util.Objects;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p003.C0783;
import p012.C0894;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p017.C0956;
import p017.C0982;
import p035.AbstractC1220;
import p055.AbstractC1464;
import p055.C1474;
import p055.C1490;
import p055.C1495;
import p256.C3375;
import p266.InterfaceC3452;
import p266.InterfaceC3457;
import p266.InterfaceC3462;
import p291.AbstractC3615;
import p291.C3612;
import p291.C3620;
import p291.C3622;
import p291.C3625;
import p291.C3628;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p307.AbstractC3740;
import p364.C4443;
import p364.InterfaceC4442;
import p366.C4472;
import p372.AbstractC4525;
import p372.C4523;
import p372.C4527;
import p372.InterfaceC4521;
import p392.C4664;
import p392.C4680;
import p395.C4715;
import p395.InterfaceC4734;
import p420.C4936;
import p420.C4955;
import p420.C4976;
import p420.C4992;
import p420.InterfaceC4945;
import p420.InterfaceC4946;
import p420.InterfaceC4947;
import p420.InterfaceC4956;
import p420.InterfaceC4967;
import p428.InterfaceC5067;
import ˈˊ.ˉˆ;
import ˋⁱ.ﾞᴵ;
import ˏˆ.ﹳٴ;

/* renamed from: ـᵢ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3497 implements InterfaceC4945, InterfaceC4946, InterfaceC4521 {

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public static final Pattern f13769 = Pattern.compile("CC([1-4])=(.+)");

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public static final Pattern f13770 = Pattern.compile("([1-4])=lang:(\\w+)(,.+)?");

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC3457 f13772;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f13773;

    /* renamed from: ʿ, reason: contains not printable characters */
    public long f13774;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final C3491 f13775;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final ʽﹳ f13776;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final InterfaceC4734 f13777;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public int f13778;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final InterfaceC4442 f13780;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final ﹳٴ f13781;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public InterfaceC4967 f13783;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final C4715 f13784;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public C4992 f13785;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C4936 f13786;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final long f13787;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ʽﹳ f13788;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public List f13789;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C0894 f13790;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C3498[] f13791;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C4443 f13792;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C4472 f13793;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public C3612 f13795;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public boolean f13779 = true;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public C4523[] f13782 = new C4523[0];

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public C3499[] f13771 = new C3499[0];

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final IdentityHashMap f13794 = new IdentityHashMap();

    /* JADX WARN: Multi-variable type inference failed */
    public C3497(int i, C3612 c3612, ﹳٴ r25, int i2, ʽﹳ r27, InterfaceC3457 interfaceC3457, InterfaceC4734 interfaceC4734, C4715 c4715, C0894 c0894, ʽﹳ r32, long j, InterfaceC4442 interfaceC4442, C4443 c4443, C4472 c4472, C3500 c3500, C0783 c0783) {
        int i3;
        int i4;
        int[][] iArr;
        boolean[] zArr;
        C1495[][] c1495Arr;
        C1495[] c1495Arr2;
        C3628 m7437;
        Integer num;
        InterfaceC4734 interfaceC47342 = interfaceC4734;
        this.f13773 = i;
        this.f13795 = c3612;
        this.f13781 = r25;
        this.f13778 = i2;
        this.f13788 = r27;
        this.f13772 = interfaceC3457;
        this.f13777 = interfaceC47342;
        this.f13784 = c4715;
        this.f13790 = c0894;
        this.f13776 = r32;
        this.f13787 = j;
        this.f13780 = interfaceC4442;
        this.f13792 = c4443;
        this.f13793 = c4472;
        boolean z = true;
        this.f13775 = new C3491(c3612, c3500, c4443);
        int i5 = 0;
        c4472.getClass();
        C0982 c0982 = AbstractC0993.f3977;
        C0956 c0956 = C0956.f3901;
        this.f13785 = new C4992(c0956, c0956);
        C3622 m7575 = c3612.m7575(i2);
        List list = m7575.f14174;
        this.f13789 = list;
        List list2 = m7575.f14173;
        int size = list2.size();
        HashMap hashMap = new HashMap(AbstractC1004.m3294(size));
        ArrayList arrayList = new ArrayList(size);
        SparseArray sparseArray = new SparseArray(size);
        for (int i6 = 0; i6 < size; i6++) {
            hashMap.put(Long.valueOf(((C3625) list2.get(i6)).f14187), Integer.valueOf(i6));
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(Integer.valueOf(i6));
            arrayList.add(arrayList2);
            sparseArray.put(i6, arrayList2);
        }
        int i7 = 0;
        while (i7 < size) {
            C3625 c3625 = (C3625) list2.get(i7);
            List list3 = c3625.f14185;
            List list4 = c3625.f14188;
            boolean z2 = z;
            C3628 m74372 = m7437("http://dashif.org/guidelines/trickmode", list3);
            m74372 = m74372 == null ? m7437("http://dashif.org/guidelines/trickmode", list4) : m74372;
            int intValue = (m74372 == null || (num = (Integer) hashMap.get(Long.valueOf(Long.parseLong(m74372.f14194)))) == null || !m7440(c3625, (C3625) list2.get(num.intValue()))) ? i7 : num.intValue();
            if (intValue == i7 && (m7437 = m7437("urn:mpeg:dash:adaptation-set-switching:2016", list4)) != null) {
                String str = m7437.f14194;
                String str2 = AbstractC3712.f14481;
                String[] split = str.split(",", -1);
                int length = split.length;
                for (int i8 = i5; i8 < length; i8++) {
                    Integer num2 = (Integer) hashMap.get(Long.valueOf(Long.parseLong(split[i8])));
                    if (num2 != null && m7440(c3625, (C3625) list2.get(num2.intValue()))) {
                        intValue = Math.min(intValue, num2.intValue());
                    }
                }
            }
            if (intValue != i7) {
                List list5 = (List) sparseArray.get(i7);
                List list6 = (List) sparseArray.get(intValue);
                list6.addAll(list5);
                sparseArray.put(i7, list6);
                arrayList.remove(list5);
            }
            i7++;
            z = z2;
            i5 = 0;
        }
        boolean z3 = z;
        int size2 = arrayList.size();
        int[][] iArr2 = new int[size2];
        for (int i9 = 0; i9 < size2; i9++) {
            int[] iArr3 = ˉˆ.ˊʻ((Collection) arrayList.get(i9));
            iArr2[i9] = iArr3;
            Arrays.sort(iArr3);
        }
        boolean[] zArr2 = new boolean[size2];
        C1495[][] c1495Arr3 = new C1495[size2];
        int i10 = 0;
        int i11 = 0;
        while (i10 < size2) {
            int[] iArr4 = iArr2[i10];
            int length2 = iArr4.length;
            int i12 = 0;
            while (true) {
                if (i12 >= length2) {
                    iArr = iArr2;
                    break;
                }
                List list7 = ((C3625) list2.get(iArr4[i12])).f14183;
                iArr = iArr2;
                for (int i13 = 0; i13 < list7.size(); i13++) {
                    if (!((AbstractC3615) list7.get(i13)).f14149.isEmpty()) {
                        zArr2[i10] = z3;
                        i11++;
                        break;
                    }
                }
                i12++;
                iArr2 = iArr;
            }
            int[] iArr5 = iArr[i10];
            int length3 = iArr5.length;
            int i14 = 0;
            while (true) {
                if (i14 >= length3) {
                    zArr = zArr2;
                    c1495Arr = c1495Arr3;
                    c1495Arr2 = new C1495[0];
                    break;
                }
                int i15 = iArr5[i14];
                C3625 c36252 = (C3625) list2.get(i15);
                List list8 = ((C3625) list2.get(i15)).f14184;
                int[] iArr6 = iArr5;
                int i16 = 0;
                while (i16 < list8.size()) {
                    C3628 c3628 = (C3628) list8.get(i16);
                    zArr = zArr2;
                    c1495Arr = c1495Arr3;
                    if ("urn:scte:dash:cc:cea-608:2015".equals(c3628.f14195)) {
                        C1490 c1490 = new C1490();
                        c1490.f5861 = AbstractC1464.m4251("application/cea-608");
                        c1490.f5884 = AbstractC0001.m8(new StringBuilder(), c36252.f14187, ":cea608");
                        c1495Arr2 = m7439(c3628, f13769, new C1495(c1490));
                        break;
                    }
                    if ("urn:scte:dash:cc:cea-708:2015".equals(c3628.f14195)) {
                        C1490 c14902 = new C1490();
                        c14902.f5861 = AbstractC1464.m4251("application/cea-708");
                        c14902.f5884 = AbstractC0001.m8(new StringBuilder(), c36252.f14187, ":cea708");
                        c1495Arr2 = m7439(c3628, f13770, new C1495(c14902));
                        break;
                    }
                    i16++;
                    c1495Arr3 = c1495Arr;
                    zArr2 = zArr;
                }
                i14++;
                iArr5 = iArr6;
            }
            c1495Arr[i10] = c1495Arr2;
            if (c1495Arr2.length != 0) {
                i11++;
            }
            i10++;
            c1495Arr3 = c1495Arr;
            iArr2 = iArr;
            zArr2 = zArr;
        }
        int[][] iArr7 = iArr2;
        boolean[] zArr3 = zArr2;
        C1495[][] c1495Arr4 = c1495Arr3;
        int size3 = list.size() + i11 + size2;
        C1474[] c1474Arr = new C1474[size3];
        C3498[] c3498Arr = new C3498[size3];
        int i17 = 0;
        int i18 = 0;
        while (i18 < size2) {
            int[] iArr8 = iArr7[i18];
            ArrayList arrayList3 = new ArrayList();
            for (int i19 : iArr8) {
                arrayList3.addAll(((C3625) list2.get(i19)).f14183);
            }
            int size4 = arrayList3.size();
            C1495[] c1495Arr5 = new C1495[size4];
            int i20 = 0;
            while (i20 < size4) {
                int i21 = size2;
                C1495 c1495 = ((AbstractC3615) arrayList3.get(i20)).f14148;
                int i22 = i17;
                C1490 m4300 = c1495.m4300();
                m4300.f5879 = interfaceC47342.mo8997(c1495);
                c1495Arr5[i20] = new C1495(m4300);
                i20++;
                size2 = i21;
                i17 = i22;
            }
            int i23 = size2;
            int i24 = i17;
            C3625 c36253 = (C3625) list2.get(iArr8[0]);
            long j2 = c36253.f14187;
            String l = j2 != -1 ? Long.toString(j2) : AbstractC3740.m7932(i18, "unset:");
            int i25 = i24 + 1;
            if (zArr3[i18]) {
                i3 = i24 + 2;
            } else {
                i3 = i25;
                i25 = -1;
            }
            if (c1495Arr4[i18].length != 0) {
                i4 = i3 + 1;
            } else {
                i4 = i3;
                i3 = -1;
            }
            m7438(r27, c1495Arr5);
            List list9 = list2;
            c1474Arr[i24] = new C1474(l, c1495Arr5);
            int i26 = c36253.f14186;
            C0982 c09822 = AbstractC0993.f3977;
            C0956 c09562 = C0956.f3901;
            C3498 c3498 = new C3498(i26, 0, iArr8, i24, i25, i3, -1, c09562);
            int[] iArr9 = iArr8;
            int i27 = i24;
            c3498Arr[i27] = c3498;
            int i28 = -1;
            if (i25 != -1) {
                String m3791 = AbstractC1220.m3791(l, ":emsg");
                C1490 c14903 = new C1490();
                c14903.f5884 = m3791;
                c14903.f5861 = AbstractC1464.m4251("application/x-emsg");
                C1495[] c1495Arr6 = new C1495[z3];
                c1495Arr6[0] = new C1495(c14903);
                c1474Arr[i25] = new C1474(m3791, c1495Arr6);
                C3498 c34982 = new C3498(5, 1, iArr9, i27, -1, -1, -1, c09562);
                iArr9 = iArr9;
                i27 = i27;
                c3498Arr[i25] = c34982;
                i28 = -1;
            }
            if (i3 != i28) {
                String m37912 = AbstractC1220.m3791(l, ":cc");
                c3498Arr[i3] = new C3498(3, 1, iArr9, i27, -1, -1, -1, AbstractC0993.m3267(c1495Arr4[i18]));
                m7438(r27, c1495Arr4[i18]);
                c1474Arr[i3] = new C1474(m37912, c1495Arr4[i18]);
            }
            i18++;
            size2 = i23;
            interfaceC47342 = interfaceC4734;
            i17 = i4;
            list2 = list9;
            z3 = true;
        }
        int i29 = 0;
        while (i29 < list.size()) {
            C3620 c3620 = (C3620) list.get(i29);
            C1490 c14904 = new C1490();
            c14904.f5884 = c3620.m7600();
            c14904.f5861 = AbstractC1464.m4251("application/x-emsg");
            c1474Arr[i17] = new C1474(c3620.m7600() + ":" + i29, new C1495(c14904));
            C0982 c09823 = AbstractC0993.f3977;
            c3498Arr[i17] = new C3498(5, 2, new int[0], -1, -1, -1, i29, C0956.f3901);
            i29++;
            i17++;
        }
        Pair create = Pair.create(new C4936(c1474Arr), c3498Arr);
        this.f13786 = (C4936) create.first;
        this.f13791 = (C3498[]) create.second;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C3628 m7437(String str, List list) {
        for (int i = 0; i < list.size(); i++) {
            C3628 c3628 = (C3628) list.get(i);
            if (str.equals(c3628.f14195)) {
                return c3628;
            }
        }
        return null;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static void m7438(ʽﹳ r6, C1495[] c1495Arr) {
        for (int i = 0; i < c1495Arr.length; i++) {
            C1495 c1495 = c1495Arr[i];
            ar.tvplayer.core.domain.ʽﹳ r2 = (ar.tvplayer.core.domain.ʽﹳ) r6.ˈٴ;
            if (r2.ʾˋ && ((ﾞᴵ) r2.ᴵˊ).ﹳٴ(c1495)) {
                C1490 m4300 = c1495.m4300();
                String str = c1495.f5924;
                m4300.f5861 = AbstractC1464.m4251("application/x-media3-cues");
                m4300.f5874 = ((ﾞᴵ) r2.ᴵˊ).ᵎﹶ(c1495);
                StringBuilder sb = new StringBuilder();
                sb.append(c1495.f5930);
                sb.append(str != null ? " ".concat(str) : "");
                m4300.f5857 = sb.toString();
                m4300.f5885 = Long.MAX_VALUE;
                c1495 = new C1495(m4300);
            }
            c1495Arr[i] = c1495;
        }
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static C1495[] m7439(C3628 c3628, Pattern pattern, C1495 c1495) {
        String str = c3628.f14194;
        if (str == null) {
            return new C1495[]{c1495};
        }
        String str2 = AbstractC3712.f14481;
        String[] split = str.split(";", -1);
        C1495[] c1495Arr = new C1495[split.length];
        for (int i = 0; i < split.length; i++) {
            Matcher matcher = pattern.matcher(split[i]);
            if (!matcher.matches()) {
                return new C1495[]{c1495};
            }
            int parseInt = Integer.parseInt(matcher.group(1));
            C1490 m4300 = c1495.m4300();
            m4300.f5884 = c1495.f5937 + ":" + parseInt;
            m4300.f5869 = parseInt;
            m4300.f5859 = matcher.group(2);
            c1495Arr[i] = new C1495(m4300);
        }
        return c1495Arr;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m7440(C3625 c3625, C3625 c36252) {
        int i = c3625.f14186;
        List list = c3625.f14183;
        int i2 = c36252.f14186;
        List list2 = c36252.f14183;
        if (i == i2) {
            if (list.isEmpty() || list2.isEmpty()) {
                return true;
            }
            C1495 c1495 = ((AbstractC3615) list.get(0)).f14148;
            C1495 c14952 = ((AbstractC3615) list2.get(0)).f14148;
            int i3 = c1495.f5940 & (-16385);
            int i4 = c14952.f5940 & (-16385);
            if (Objects.equals(c1495.f5910, c14952.f5910) && i3 == i4) {
                return true;
            }
        }
        return false;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ʻٴ */
    public final void mo5121(long j) {
        int i;
        C4523[] c4523Arr = this.f13782;
        int length = c4523Arr.length;
        int i2 = 0;
        while (i2 < length) {
            C4523 c4523 = c4523Arr[i2];
            if (!c4523.f16937.m8979()) {
                long m7574 = this.f13795.m7574(this.f13778);
                C4976 c4976 = c4523.f16920;
                AbstractC3731.m7857(!c4523.f16937.m8979());
                if (!c4523.m9098() && m7574 != -9223372036854775807L && !c4523.f16936.isEmpty()) {
                    AbstractC4525 m9096 = c4523.m9096();
                    long j2 = m9096.f16946;
                    if (j2 == -9223372036854775807L) {
                        j2 = m9096.f16902;
                    }
                    if (j2 > m7574) {
                        long m9829 = c4976.m9829();
                        if (m9829 > m7574) {
                            c4976.m9832(Math.max(m7574, c4976.m9831() + 1));
                            C4976[] c4976Arr = c4523.f16939;
                            int length2 = c4976Arr.length;
                            int i3 = 0;
                            while (i3 < length2) {
                                C4976 c49762 = c4976Arr[i3];
                                c49762.m9832(Math.max(m7574, c49762.m9831() + 1));
                                i3++;
                                i2 = i2;
                            }
                            i = i2;
                            c4523.f16932.ˊʻ(c4523.f16918, m7574, m9829);
                            i2 = i + 1;
                        }
                    }
                }
            }
            i = i2;
            i2 = i + 1;
        }
        this.f13785.mo5121(j);
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ʼˎ */
    public final void mo5122(InterfaceC4967 interfaceC4967, long j) {
        this.f13783 = interfaceC4967;
        interfaceC4967.mo9347(this);
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ʼᐧ */
    public final void mo5123() {
        this.f13780.mo7443();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r30v0 */
    /* JADX WARN: Type inference failed for: r30v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r30v2 */
    /* JADX WARN: Type inference failed for: r33v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r9v10, types: [ʼʻ.ᵎⁱ] */
    @Override // p420.InterfaceC4945
    /* renamed from: ˆʾ */
    public final long mo5124(InterfaceC5067[] interfaceC5067Arr, boolean[] zArr, InterfaceC4956[] interfaceC4956Arr, boolean[] zArr2, long j) {
        int i;
        boolean z;
        int[] iArr;
        int[] iArr2;
        int i2;
        int i3;
        int i4;
        C1474 c1474;
        C0956 c0956;
        int i5;
        C3495 c3495;
        boolean z2;
        int[] iArr3 = new int[interfaceC5067Arr.length];
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i = -1;
            if (i7 >= interfaceC5067Arr.length) {
                break;
            }
            InterfaceC5067 interfaceC5067 = interfaceC5067Arr[i7];
            if (interfaceC5067 != null) {
                iArr3[i7] = this.f13786.m9740(interfaceC5067.mo9758());
            } else {
                iArr3[i7] = -1;
            }
            i7++;
        }
        for (int i8 = 0; i8 < interfaceC5067Arr.length; i8++) {
            if (interfaceC5067Arr[i8] == null || !zArr[i8]) {
                ?? r3 = interfaceC4956Arr[i8];
                if (r3 instanceof C4523) {
                    ((C4523) r3).m9090(this);
                } else if (r3 instanceof C4527) {
                    C4527 c4527 = (C4527) r3;
                    C4523 c4523 = c4527.f16953;
                    boolean[] zArr3 = c4523.f16922;
                    int i9 = c4527.f16949;
                    AbstractC3731.m7857(zArr3[i9]);
                    c4523.f16922[i9] = false;
                }
                interfaceC4956Arr[i8] = 0;
            }
        }
        int i10 = 0;
        while (true) {
            z = true;
            if (i10 >= interfaceC5067Arr.length) {
                break;
            }
            ?? r32 = interfaceC4956Arr[i10];
            if ((r32 instanceof C4955) || (r32 instanceof C4527)) {
                int m7441 = m7441(iArr3, i10);
                if (m7441 == -1) {
                    z2 = interfaceC4956Arr[i10] instanceof C4955;
                } else {
                    ?? r7 = interfaceC4956Arr[i10];
                    z2 = (r7 instanceof C4527) && ((C4527) r7).f16950 == interfaceC4956Arr[m7441];
                }
                if (!z2) {
                    ?? r33 = interfaceC4956Arr[i10];
                    if (r33 instanceof C4527) {
                        C4527 c45272 = (C4527) r33;
                        C4523 c45232 = c45272.f16953;
                        boolean[] zArr4 = c45232.f16922;
                        int i11 = c45272.f16949;
                        AbstractC3731.m7857(zArr4[i11]);
                        c45232.f16922[i11] = false;
                    }
                    interfaceC4956Arr[i10] = 0;
                }
            }
            i10++;
        }
        int i12 = 0;
        while (i12 < interfaceC5067Arr.length) {
            InterfaceC5067 interfaceC50672 = interfaceC5067Arr[i12];
            if (interfaceC50672 == null) {
                iArr2 = iArr3;
                i2 = i6;
                i3 = i12;
            } else {
                ?? r34 = interfaceC4956Arr[i12];
                if (r34 == 0) {
                    zArr2[i12] = z;
                    C3498 c3498 = this.f13791[iArr3[i12]];
                    int i13 = c3498.f13796;
                    if (i13 == 0) {
                        int i14 = c3498.f13803;
                        ?? r30 = i14 != i ? z ? 1 : 0 : i6;
                        if (r30 != 0) {
                            c1474 = this.f13786.m9741(i14);
                            i4 = z ? 1 : 0;
                        } else {
                            i4 = i6;
                            c1474 = null;
                        }
                        int i15 = c3498.f13799;
                        if (i15 != i) {
                            c0956 = this.f13791[i15].f13800;
                        } else {
                            C0982 c0982 = AbstractC0993.f3977;
                            c0956 = C0956.f3901;
                        }
                        int size = c0956.size() + i4;
                        C1495[] c1495Arr = new C1495[size];
                        int[] iArr4 = new int[size];
                        if (r30 != 0) {
                            c1495Arr[i6] = c1474.f5767[i6];
                            iArr4[i6] = 5;
                            i5 = z ? 1 : 0;
                        } else {
                            i5 = i6;
                        }
                        ArrayList arrayList = new ArrayList();
                        for (int i16 = i6; i16 < c0956.size(); i16++) {
                            C1495 c1495 = (C1495) c0956.get(i16);
                            c1495Arr[i5] = c1495;
                            iArr4[i5] = 3;
                            arrayList.add(c1495);
                            i5 += z ? 1 : 0;
                        }
                        if (!this.f13795.f14127 || r30 == 0) {
                            c3495 = null;
                        } else {
                            C3491 c3491 = this.f13775;
                            c3495 = new C3495(c3491, c3491.f13696);
                        }
                        ʽﹳ r72 = this.f13788;
                        InterfaceC4442 interfaceC4442 = this.f13780;
                        C3612 c3612 = this.f13795;
                        ﹳٴ r13 = this.f13781;
                        int i17 = this.f13778;
                        int[] iArr5 = c3498.f13802;
                        int i18 = c3498.f13801;
                        iArr2 = iArr3;
                        long j2 = this.f13787;
                        InterfaceC3457 interfaceC3457 = this.f13772;
                        InterfaceC3462 mo624 = ((InterfaceC3452) r72.ʽʽ).mo624();
                        if (interfaceC3457 != null) {
                            mo624.mo5139(interfaceC3457);
                        }
                        C3495 c34952 = c3495;
                        i2 = 0;
                        i3 = i12;
                        C4523 c45233 = new C4523(c3498.f13801, iArr4, c1495Arr, new C3493((ar.tvplayer.core.domain.ʽﹳ) r72.ˈٴ, interfaceC4442, c3612, r13, i17, iArr5, interfaceC50672, i18, mo624, j2, r72.ᴵˊ, r30, arrayList, c3495), this, this.f13792, j, this.f13777, this.f13784, this.f13790, this.f13776, this.f13779);
                        synchronized (this) {
                            this.f13794.put(c45233, c34952);
                        }
                        interfaceC4956Arr[i3] = c45233;
                    } else {
                        iArr2 = iArr3;
                        i2 = i6;
                        i3 = i12;
                        if (i13 == 2) {
                            interfaceC4956Arr[i3] = new C3499((C3620) this.f13789.get(c3498.f13797), interfaceC50672.mo9758().f5767[i2], this.f13795.f14127);
                        }
                    }
                } else {
                    iArr2 = iArr3;
                    i2 = i6;
                    i3 = i12;
                    if (r34 instanceof C4523) {
                        ((C3493) ((C4523) r34).f16935).f13716 = interfaceC50672;
                    }
                }
            }
            i12 = i3 + 1;
            i6 = i2;
            iArr3 = iArr2;
            i = -1;
            z = true;
        }
        int[] iArr6 = iArr3;
        ?? r332 = i6;
        int i19 = r332 == true ? 1 : 0;
        while (i19 < interfaceC5067Arr.length) {
            if (interfaceC4956Arr[i19] != 0 || interfaceC5067Arr[i19] == null) {
                iArr = iArr6;
            } else {
                C3498 c34982 = this.f13791[iArr6[i19]];
                if (c34982.f13796 == 1) {
                    iArr = iArr6;
                    int m74412 = m7441(iArr, i19);
                    if (m74412 != -1) {
                        C4523 c45234 = (C4523) interfaceC4956Arr[m74412];
                        int i20 = c34982.f13801;
                        boolean[] zArr5 = c45234.f16922;
                        C4976[] c4976Arr = c45234.f16939;
                        for (int i21 = r332 == true ? 1 : 0; i21 < c4976Arr.length; i21++) {
                            if (c45234.f16933[i21] == i20) {
                                AbstractC3731.m7857(!zArr5[i21]);
                                zArr5[i21] = true;
                                c4976Arr[i21].m9816(true, j);
                                interfaceC4956Arr[i19] = new C4527(c45234, c45234, c4976Arr[i21], i21);
                            }
                        }
                        throw new IllegalStateException();
                    }
                    interfaceC4956Arr[i19] = new Object();
                    i19++;
                    iArr6 = iArr;
                } else {
                    iArr = iArr6;
                }
            }
            i19++;
            iArr6 = iArr;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int length = interfaceC4956Arr.length;
        for (int i22 = r332 == true ? 1 : 0; i22 < length; i22++) {
            ?? r73 = interfaceC4956Arr[i22];
            if (r73 instanceof C4523) {
                arrayList2.add((C4523) r73);
            } else if (r73 instanceof C3499) {
                arrayList3.add((C3499) r73);
            }
        }
        C4523[] c4523Arr = new C4523[arrayList2.size()];
        this.f13782 = c4523Arr;
        arrayList2.toArray(c4523Arr);
        C3499[] c3499Arr = new C3499[arrayList3.size()];
        this.f13771 = c3499Arr;
        arrayList3.toArray(c3499Arr);
        C4472 c4472 = this.f13793;
        AbstractList m3280 = AbstractC1004.m3280(arrayList2, new C3375(27));
        c4472.getClass();
        this.f13785 = new C4992(arrayList2, m3280);
        if (this.f13779) {
            this.f13779 = r332;
            this.f13774 = j;
        }
        return j;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˈ */
    public final boolean mo5125() {
        return this.f13785.mo5125();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˉʿ */
    public final long mo5126() {
        C4523[] c4523Arr = this.f13782;
        int length = c4523Arr.length;
        for (int i = 0; i < length; i++) {
            C4523 c4523 = c4523Arr[i];
            c4523.getClass();
            try {
                if (c4523.f16924) {
                    return this.f13774;
                }
            } finally {
                c4523.f16924 = false;
            }
        }
        return -9223372036854775807L;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˉˆ */
    public final long mo5127() {
        return this.f13785.mo5127();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˏי */
    public final void mo5128(long j) {
        for (C4523 c4523 : this.f13782) {
            c4523.m9094(j);
        }
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ٴﹶ */
    public final boolean mo5129(C4664 c4664) {
        return this.f13785.mo5129(c4664);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int m7441(int[] iArr, int i) {
        int i2 = iArr[i];
        if (i2 != -1) {
            C3498[] c3498Arr = this.f13791;
            int i3 = c3498Arr[i2].f13798;
            for (int i4 = 0; i4 < iArr.length; i4++) {
                int i5 = iArr[i4];
                if (i5 == i3 && c3498Arr[i5].f13796 == 0) {
                    return i4;
                }
            }
        }
        return -1;
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ᵔʾ */
    public final C4936 mo5131() {
        return this.f13786;
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ⁱˊ */
    public final long mo5132(long j, C4680 c4680) {
        for (C4523 c4523 : this.f13782) {
            if (c4523.f16918 == 2) {
                return c4523.f16935.mo7006(j, c4680);
            }
        }
        return j;
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ﹳᐧ */
    public final long mo5133(long j) {
        for (C4523 c4523 : this.f13782) {
            c4523.m9093(j);
        }
        for (C3499 c3499 : this.f13771) {
            int m7808 = AbstractC3712.m7808(c3499.f13804, j, true);
            c3499.f13809 = m7808;
            c3499.f13807 = (c3499.f13806 && m7808 == c3499.f13804.length) ? j : -9223372036854775807L;
        }
        return j;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ﾞʻ */
    public final long mo5134() {
        return this.f13785.mo5134();
    }

    @Override // p420.InterfaceC4946
    /* renamed from: ﾞᴵ */
    public final void mo6998(InterfaceC4947 interfaceC4947) {
        this.f13783.mo6998(this);
    }
}
