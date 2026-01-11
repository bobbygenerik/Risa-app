package p392;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.util.Pair;
import android.view.accessibility.CaptioningManager;
import com.parse.ʼᐧ;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import p017.AbstractC0951;
import p017.AbstractC0993;
import p017.AbstractC1000;
import p017.AbstractC1004;
import p017.C0956;
import p017.C0963;
import p017.C0966;
import p017.C0968;
import p017.C0982;
import p017.C0989;
import p017.C0995;
import p042.C1318;
import p055.AbstractC1445;
import p055.C1453;
import p055.C1454;
import p055.C1474;
import p055.C1493;
import p131.C2196;
import p188.C2845;
import p188.C2860;
import p283.C3569;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p307.AbstractC3740;
import p364.C4443;
import p364.InterfaceC4440;
import p420.C4936;
import p420.C4941;
import p420.C4966;
import p420.C4987;
import p420.InterfaceC4956;
import p428.AbstractC5060;
import p428.AbstractC5070;
import p428.C5056;
import p428.C5057;
import p428.C5063;
import p428.C5065;
import p428.C5069;
import p428.C5071;
import p428.C5074;
import p428.C5076;
import p428.C5077;
import p428.C5078;
import p428.InterfaceC5066;
import p428.InterfaceC5067;
import ˈˊ.ˉˆ;

/* renamed from: ⁱי.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4675 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean[] f17528;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public long f17529;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC4956[] f17530;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final AbstractC4671[] f17531;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f17532;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C4675 f17533;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public C5057 f17534;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f17535;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final AbstractC5070 f17536;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C4684 f17537;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public C4936 f17538;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f17539;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f17540;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f17541;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C2845 f17542;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f17543;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [ﹳᵢ.ʽ] */
    public C4675(AbstractC4671[] abstractC4671Arr, long j, AbstractC5070 abstractC5070, C4443 c4443, C2845 c2845, C4684 c4684, C5057 c5057) {
        this.f17531 = abstractC4671Arr;
        this.f17529 = j;
        this.f17536 = abstractC5070;
        this.f17542 = c2845;
        C4987 c4987 = c4684.f17660;
        this.f17540 = c4987.f18631;
        this.f17537 = c4684;
        this.f17538 = C4936.f18384;
        this.f17534 = c5057;
        this.f17530 = new InterfaceC4956[abstractC4671Arr.length];
        this.f17528 = new boolean[abstractC4671Arr.length];
        long j2 = c4684.f17659;
        long j3 = c4684.f17655;
        boolean z = c4684.f17661;
        c2845.getClass();
        Object obj = c4987.f18631;
        int i = C4679.f17556;
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        C4987 m9839 = c4987.m9839(pair.second);
        C4660 c4660 = (C4660) ((HashMap) c2845.f10684).get(obj2);
        c4660.getClass();
        ((HashSet) c2845.f10687).add(c4660);
        C4695 c4695 = (C4695) ((HashMap) c2845.f10686).get(c4660);
        if (c4695 != null) {
            c4695.f17733.mo9797(c4695.f17732);
        }
        c4660.f17472.add(m9839);
        C4966 mo5104 = c4660.f17476.mo5104(m9839, c4443, j2);
        ((IdentityHashMap) c2845.f10683).put(mo5104, c4660);
        c2845.m6335();
        this.f17541 = j3 != -9223372036854775807L ? new C4941(mo5104, !z, 0L, j3) : mo5104;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ﹳᵢ.ʾᵎ] */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m9278() {
        m9286();
        ?? r0 = this.f17541;
        try {
            boolean z = r0 instanceof C4941;
            C2845 c2845 = this.f17542;
            if (z) {
                c2845.m6338(((C4941) r0).f18405);
            } else {
                c2845.m6338(r0);
            }
        } catch (RuntimeException e) {
            AbstractC3731.m7863("MediaPeriodHolder", "Period release failed.", e);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m9279() {
        if (this.f17533 != null) {
            return;
        }
        int i = 0;
        while (true) {
            C5057 c5057 = this.f17534;
            if (i >= c5057.f19031) {
                return;
            }
            boolean m9961 = c5057.m9961(i);
            InterfaceC5067 interfaceC5067 = this.f17534.f19027[i];
            if (m9961 && interfaceC5067 != null) {
                interfaceC5067.mo9763();
            }
            i++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11, types: [ʼʻ.ˊʻ, ʼʻ.ʽʽ] */
    /* JADX WARN: Type inference failed for: r4v68 */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C5057 m9280(float f, AbstractC1445 abstractC1445, boolean z) {
        final C5063 c5063;
        boolean z2;
        final String str;
        C1474 c1474;
        Pair pair;
        Object obj;
        boolean z3;
        boolean z4;
        C0956 c0956;
        int i;
        boolean z5;
        int i2;
        C0956 c09562;
        AbstractC5060 c5076;
        double[] dArr;
        int[] iArr;
        C1474 c14742;
        Object obj2;
        int i3;
        int[] iArr2;
        int[][] iArr3;
        int[] iArr4;
        CaptioningManager captioningManager;
        Locale locale;
        Context context;
        int[] iArr5;
        AbstractC5070 abstractC5070 = this.f17536;
        AbstractC4671[] abstractC4671Arr = this.f17531;
        C4936 c4936 = this.f17538;
        abstractC5070.getClass();
        int i4 = 1;
        int[] iArr6 = new int[abstractC4671Arr.length + 1];
        int length = abstractC4671Arr.length + 1;
        C1474[][] c1474Arr = new C1474[length];
        int[][][] iArr7 = new int[abstractC4671Arr.length + 1][];
        for (int i5 = 0; i5 < length; i5++) {
            int i6 = c4936.f18387;
            c1474Arr[i5] = new C1474[i6];
            iArr7[i5] = new int[i6];
        }
        int length2 = abstractC4671Arr.length;
        final int[] iArr8 = new int[length2];
        for (int i7 = 0; i7 < length2; i7++) {
            iArr8[i7] = abstractC4671Arr[i7].mo774();
        }
        int i8 = 0;
        while (i8 < c4936.f18387) {
            C1474 m9741 = c4936.m9741(i8);
            int i9 = m9741.f5766 == 5 ? i4 : 0;
            int length3 = abstractC4671Arr.length;
            int i10 = i4;
            int i11 = 0;
            int i12 = 0;
            while (i12 < abstractC4671Arr.length) {
                AbstractC4671 abstractC4671 = abstractC4671Arr[i12];
                AbstractC5070 abstractC50702 = abstractC5070;
                C4936 c49362 = c4936;
                int i13 = i4;
                int i14 = 0;
                for (int i15 = 0; i15 < m9741.f5770; i15++) {
                    i14 = Math.max(i14, abstractC4671.mo762(m9741.f5767[i15]) & 7);
                }
                int i16 = iArr6[i12] == 0 ? i13 : 0;
                if (i14 > i11 || (i14 == i11 && i9 != 0 && i10 == 0 && i16 != 0)) {
                    i11 = i14;
                    i10 = i16;
                    length3 = i12;
                }
                i12++;
                i4 = i13;
                abstractC5070 = abstractC50702;
                c4936 = c49362;
            }
            AbstractC5070 abstractC50703 = abstractC5070;
            C4936 c49363 = c4936;
            int i17 = i4;
            if (length3 == abstractC4671Arr.length) {
                iArr5 = new int[m9741.f5770];
            } else {
                AbstractC4671 abstractC46712 = abstractC4671Arr[length3];
                int[] iArr9 = new int[m9741.f5770];
                for (int i18 = 0; i18 < m9741.f5770; i18++) {
                    iArr9[i18] = abstractC46712.mo762(m9741.f5767[i18]);
                }
                iArr5 = iArr9;
            }
            int i19 = iArr6[length3];
            c1474Arr[length3][i19] = m9741;
            iArr7[length3][i19] = iArr5;
            iArr6[length3] = i19 + 1;
            i8++;
            i4 = i17;
            abstractC5070 = abstractC50703;
            c4936 = c49363;
        }
        AbstractC5070 abstractC50704 = abstractC5070;
        int i20 = i4;
        int i21 = 0;
        int i22 = 7;
        C4936[] c4936Arr = new C4936[abstractC4671Arr.length];
        String[] strArr = new String[abstractC4671Arr.length];
        int[] iArr10 = new int[abstractC4671Arr.length];
        for (int i23 = 0; i23 < abstractC4671Arr.length; i23++) {
            int i24 = iArr6[i23];
            c4936Arr[i23] = new C4936((C1474[]) AbstractC3712.m7807(i24, c1474Arr[i23]));
            iArr7[i23] = (int[][]) AbstractC3712.m7807(i24, iArr7[i23]);
            strArr[i23] = abstractC4671Arr[i23].mo764();
            iArr10[i23] = abstractC4671Arr[i23].f17515;
        }
        C5056 c5056 = new C5056(iArr10, c4936Arr, iArr8, iArr7, new C4936((C1474[]) AbstractC3712.m7807(iArr6[abstractC4671Arr.length], c1474Arr[abstractC4671Arr.length])));
        C5078 c5078 = (C5078) abstractC50704;
        synchronized (c5078.f19133) {
            c5078.f19137 = Thread.currentThread();
            c5063 = c5078.f19136;
        }
        if (c5078.f19135 == null && (context = c5078.f19134) != null) {
            c5078.f19135 = Boolean.valueOf(AbstractC3712.m7778(context));
        }
        if (c5063.f19064 && Build.VERSION.SDK_INT >= 32 && c5078.f19131 == null) {
            c5078.f19131 = new C5065(c5078.f19134, c5078, c5078.f19135);
        }
        int i25 = c5056.f19025;
        Context context2 = c5078.f19134;
        C5069[] c5069Arr = new C5069[i25];
        int i26 = 0;
        while (true) {
            if (i26 >= c5056.f19025) {
                z2 = 0;
                break;
            }
            if (2 == iArr10[i26] && c4936Arr[i26].f18387 > 0) {
                z2 = i20;
                break;
            }
            i26++;
        }
        Pair m9979 = C5078.m9979(i20, c5056, iArr7, new C1318(z2, c5078, c5063, iArr8), new ʼᐧ(20));
        if (m9979 != null) {
            c5069Arr[((Integer) m9979.second).intValue()] = (C5069) m9979.first;
        }
        if (m9979 == null) {
            str = null;
        } else {
            C5069 c5069 = (C5069) m9979.first;
            str = c5069.f19076.f5767[c5069.f19075[0]].f5910;
        }
        c5063.f5710.getClass();
        final Point m7764 = (!c5063.f5715 || context2 == null) ? null : AbstractC3712.m7764(context2);
        int i27 = 32;
        Pair m99792 = C5078.m9979(2, c5056, iArr7, new InterfaceC5066() { // from class: ﹶʽ.ˈ
            /* JADX WARN: Removed duplicated region for block: B:24:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:36:0x005a  */
            @Override // p428.InterfaceC5066
            /* renamed from: ﾞᴵ */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final p017.C0956 mo3946(int r17, p055.C1474 r18, int[] r19) {
                /*
                    Method dump skipped, instructions count: 199
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p428.C5064.mo3946(int, ʽⁱ.ـˏ, int[]):ʼʻ.ʿᵢ");
            }
        }, new ʼᐧ(19));
        int i28 = 4;
        if (m99792 == null) {
            c1474 = null;
            pair = C5078.m9979(4, c5056, iArr7, new C3569(29, c5063), new ʼᐧ(18));
        } else {
            c1474 = null;
            pair = null;
        }
        if (pair != null) {
            c5069Arr[((Integer) pair.second).intValue()] = (C5069) pair.first;
        } else if (m99792 != null) {
            c5069Arr[((Integer) m99792.second).intValue()] = (C5069) m99792.first;
        }
        if (!c5063.f5718 || context2 == null || (captioningManager = (CaptioningManager) context2.getSystemService("captioning")) == null || !captioningManager.isEnabled() || (locale = captioningManager.getLocale()) == null) {
            obj = c1474;
        } else {
            String str2 = AbstractC3712.f14481;
            obj = locale.toLanguageTag();
        }
        int i29 = 3;
        Pair m99793 = C5078.m9979(3, c5056, iArr7, new C2196(c5063, str, obj, i22), new ʼᐧ(21));
        if (m99793 != null) {
            c5069Arr[((Integer) m99793.second).intValue()] = (C5069) m99793.first;
        }
        int i30 = 0;
        while (i30 < i25) {
            int i31 = iArr10[i30];
            if (i31 == 2 || i31 == 1 || i31 == i29 || i31 == i28) {
                i3 = i30;
                iArr2 = iArr10;
            } else {
                C4936 c49364 = c4936Arr[i30];
                int[][] iArr11 = iArr7[i30];
                int i32 = i21;
                int i33 = i32;
                C1474 c14743 = c1474;
                C1474 c14744 = c14743;
                while (i32 < c49364.f18387) {
                    C1474 m97412 = c49364.m9741(i32);
                    int[] iArr12 = iArr11[i32];
                    int i34 = i30;
                    C4936 c49365 = c49364;
                    C5074 c5074 = c14744;
                    int i35 = i33;
                    C1474 c14745 = c14743;
                    int i36 = i21;
                    while (i36 < m97412.f5770) {
                        int i37 = i36;
                        if (AbstractC3740.m7940(iArr12[i36], c5063.f19058)) {
                            iArr3 = iArr11;
                            C5074 c50742 = new C5074(m97412.f5767[i37], iArr12[i37]);
                            if (c5074 != 0) {
                                iArr4 = iArr10;
                                if (AbstractC1000.f3990.mo3225(c50742.f19094, c5074.f19094).mo3225(c50742.f19093, c5074.f19093).mo3227() <= 0) {
                                }
                            } else {
                                iArr4 = iArr10;
                            }
                            c5074 = c50742;
                            c14745 = m97412;
                            i35 = i37;
                        } else {
                            iArr3 = iArr11;
                            iArr4 = iArr10;
                        }
                        i36 = i37 + 1;
                        iArr11 = iArr3;
                        iArr10 = iArr4;
                        c5074 = c5074;
                    }
                    i32++;
                    c14743 = c14745;
                    i33 = i35;
                    c49364 = c49365;
                    c14744 = c5074;
                    i30 = i34;
                }
                i3 = i30;
                iArr2 = iArr10;
                c5069Arr[i3] = c14743 == null ? c1474 : new C5069(i21, c14743, new int[]{i33});
            }
            i30 = i3 + 1;
            iArr10 = iArr2;
            i21 = 0;
            i29 = 3;
            i28 = 4;
        }
        int i38 = c5056.f19025;
        C4936[] c4936Arr2 = c5056.f19021;
        HashMap hashMap = new HashMap();
        for (int i39 = 0; i39 < i38; i39++) {
            C5078.m9980(c4936Arr2[i39], c5063, hashMap);
        }
        C5078.m9980(c5056.f19026, c5063, hashMap);
        for (int i40 = 0; i40 < i38; i40++) {
            C1493 c1493 = (C1493) hashMap.get(Integer.valueOf(c5056.f19024[i40]));
            if (c1493 != null) {
                C1474 c14746 = c1493.f5897;
                AbstractC0993 abstractC0993 = c1493.f5896;
                c5069Arr[i40] = (abstractC0993.isEmpty() || c4936Arr2[i40].m9740(c14746) == -1) ? c1474 : new C5069(0, c14746, ˉˆ.ˊʻ(abstractC0993));
            }
        }
        int i41 = c5056.f19025;
        for (int i42 = 0; i42 < i41; i42++) {
            C4936 c49366 = c5056.f19021[i42];
            Map map = (Map) c5063.f19060.get(i42);
            if (map != null && map.containsKey(c49366)) {
                Map map2 = (Map) c5063.f19060.get(i42);
                C5071 c5071 = map2 != null ? (C5071) map2.get(c49366) : c1474;
                if (c5071 != 0) {
                    int[] iArr13 = c5071.f19080;
                    if (iArr13.length != 0) {
                        obj2 = new C5069(0, c49366.m9741(c5071.f19081), iArr13);
                        c5069Arr[i42] = obj2;
                    }
                }
                obj2 = c1474;
                c5069Arr[i42] = obj2;
            }
        }
        for (int i43 = 0; i43 < i25; i43++) {
            int i44 = c5056.f19024[i43];
            if (c5063.f19063.get(i43) || c5063.f5706.contains(Integer.valueOf(i44))) {
                c5069Arr[i43] = c1474;
            }
        }
        C2860 c2860 = c5078.f19138;
        InterfaceC4440 interfaceC4440 = c5078.f19078;
        AbstractC3731.m7868(interfaceC4440);
        c2860.getClass();
        ArrayList arrayList = new ArrayList();
        int i45 = 0;
        while (i45 < c5069Arr.length) {
            C5069 c50692 = c5069Arr[i45];
            if (c50692 == 0 || c50692.f19075.length <= 1) {
                c14742 = c1474;
                arrayList.add(c14742);
            } else {
                C0968 m3261 = AbstractC0993.m3261();
                m3261.m3239(new C5077(0L, 0L));
                arrayList.add(m3261);
                c14742 = c1474;
            }
            i45++;
            c1474 = c14742;
        }
        int length4 = c5069Arr.length;
        long[][] jArr = new long[length4];
        for (int i46 = 0; i46 < c5069Arr.length; i46++) {
            C5069 c50693 = c5069Arr[i46];
            if (c50693 == 0) {
                jArr[i46] = new long[0];
            } else {
                int[] iArr14 = c50693.f19075;
                jArr[i46] = new long[iArr14.length];
                int i47 = 0;
                while (i47 < iArr14.length) {
                    int[] iArr15 = iArr14;
                    long j = c50693.f19076.f5767[iArr14[i47]].f5908;
                    long[] jArr2 = jArr[i46];
                    if (j == -1) {
                        j = 0;
                    }
                    jArr2[i47] = j;
                    i47++;
                    iArr14 = iArr15;
                }
                Arrays.sort(jArr[i46]);
            }
        }
        int[] iArr16 = new int[length4];
        long[] jArr3 = new long[length4];
        for (int i48 = 0; i48 < length4; i48++) {
            long[] jArr4 = jArr[i48];
            jArr3[i48] = jArr4.length == 0 ? 0L : jArr4[0];
        }
        C5076.m9976(arrayList, jArr3);
        AbstractC1004.m3282(2, "expectedValuesPerKey");
        TreeMap treeMap = new TreeMap(C0966.f3922);
        C0963 c0963 = new C0963();
        C0989 c0989 = new C0989(treeMap);
        c0989.f3969 = c0963;
        int i49 = 0;
        while (i49 < length4) {
            long[] jArr5 = jArr[i49];
            InterfaceC4440 interfaceC44402 = interfaceC4440;
            int i50 = length4;
            if (jArr5.length <= 1) {
                iArr = iArr16;
            } else {
                int length5 = jArr5.length;
                double[] dArr2 = new double[length5];
                int i51 = 0;
                while (true) {
                    long[] jArr6 = jArr[i49];
                    dArr = dArr2;
                    double d = 0.0d;
                    if (i51 >= jArr6.length) {
                        break;
                    }
                    int[] iArr17 = iArr16;
                    long j2 = jArr6[i51];
                    if (j2 != -1) {
                        d = Math.log(j2);
                    }
                    dArr[i51] = d;
                    i51++;
                    dArr2 = dArr;
                    iArr16 = iArr17;
                }
                iArr = iArr16;
                int i52 = length5 - 1;
                double d2 = dArr[i52] - dArr[0];
                int i53 = 0;
                while (i53 < i52) {
                    double d3 = dArr[i53];
                    i53++;
                    int i54 = i52;
                    Double valueOf = Double.valueOf(d2 == 0.0d ? 1.0d : (((d3 + dArr[i53]) * 0.5d) - dArr[0]) / d2);
                    double d4 = d2;
                    Integer valueOf2 = Integer.valueOf(i49);
                    Map map3 = c0989.f3968;
                    int i55 = i49;
                    Collection collection = (Collection) map3.get(valueOf);
                    if (collection == null) {
                        Collection m3257 = c0989.m3257();
                        if (!m3257.add(valueOf2)) {
                            throw new AssertionError("New Collection violated the Collection spec");
                        }
                        c0989.f3970++;
                        map3.put(valueOf, m3257);
                    } else if (collection.add(valueOf2)) {
                        c0989.f3970++;
                    }
                    i52 = i54;
                    d2 = d4;
                    i49 = i55;
                }
            }
            i49++;
            length4 = i50;
            interfaceC4440 = interfaceC44402;
            iArr16 = iArr;
        }
        InterfaceC4440 interfaceC44403 = interfaceC4440;
        int[] iArr18 = iArr16;
        Collection collection2 = c0989.f3920;
        if (collection2 == null) {
            collection2 = new C0995(0, c0989);
            c0989.f3920 = collection2;
        }
        AbstractC0993 m3264 = AbstractC0993.m3264(collection2);
        for (int i56 = 0; i56 < m3264.size(); i56++) {
            int intValue = ((Integer) m3264.get(i56)).intValue();
            int i57 = iArr18[intValue] + 1;
            iArr18[intValue] = i57;
            jArr3[intValue] = jArr[intValue][i57];
            C5076.m9976(arrayList, jArr3);
        }
        for (int i58 = 0; i58 < c5069Arr.length; i58++) {
            if (arrayList.get(i58) != null) {
                jArr3[i58] = jArr3[i58] * 2;
            }
        }
        C5076.m9976(arrayList, jArr3);
        C0968 m32612 = AbstractC0993.m3261();
        for (int i59 = 0; i59 < arrayList.size(); i59++) {
            C0968 c0968 = (C0968) arrayList.get(i59);
            m32612.m3239(c0968 == null ? C0956.f3901 : c0968.m3249());
        }
        C0956 m3249 = m32612.m3249();
        InterfaceC5067[] interfaceC5067Arr = new InterfaceC5067[c5069Arr.length];
        int i60 = 0;
        while (i60 < c5069Arr.length) {
            C5069 c50694 = c5069Arr[i60];
            if (c50694 != 0) {
                int[] iArr19 = c50694.f19075;
                if (iArr19.length != 0) {
                    if (iArr19.length == 1) {
                        c5076 = new AbstractC5060(c50694.f19076, new int[]{iArr19[0]});
                        c09562 = m3249;
                    } else {
                        long j3 = 25000;
                        c09562 = m3249;
                        c5076 = new C5076(c50694.f19076, iArr19, interfaceC44403, c2860.f10741, j3, j3, c2860.f10740, (AbstractC0993) m3249.get(i60));
                    }
                    interfaceC5067Arr[i60] = c5076;
                    i60++;
                    m3249 = c09562;
                }
            }
            c09562 = m3249;
            i60++;
            m3249 = c09562;
        }
        C4678[] c4678Arr = new C4678[i25];
        for (int i61 = 0; i61 < i25; i61++) {
            c4678Arr[i61] = (c5063.f19063.get(i61) || c5063.f5706.contains(Integer.valueOf(c5056.f19024[i61])) || (c5056.f19024[i61] != -2 && interfaceC5067Arr[i61] == null)) ? null : C4678.f17553;
        }
        if (c5063.f19062) {
            int i62 = 0;
            int i63 = -1;
            int i64 = -1;
            while (i62 < c5056.f19025) {
                int i65 = c5056.f19024[i62];
                InterfaceC5067 interfaceC5067 = interfaceC5067Arr[i62];
                if ((i65 == 1 || i65 == 2) && interfaceC5067 != null) {
                    int[][] iArr20 = iArr7[i62];
                    int m9740 = c5056.f19021[i62].m9740(interfaceC5067.mo9758());
                    int i66 = 0;
                    while (i66 < interfaceC5067.length()) {
                        i2 = i27;
                        if ((iArr20[m9740][interfaceC5067.mo9774(i66)] & 32) == i2) {
                            i66++;
                            i27 = i2;
                        }
                    }
                    i2 = i27;
                    if (i65 == 1) {
                        i = -1;
                        if (i64 != -1) {
                            z5 = false;
                            break;
                        }
                        i64 = i62;
                        i62++;
                        i27 = i2;
                    } else {
                        i = -1;
                        if (i63 != -1) {
                            z5 = false;
                            break;
                        }
                        i63 = i62;
                        i62++;
                        i27 = i2;
                    }
                } else {
                    i2 = i27;
                }
                i62++;
                i27 = i2;
            }
            i = -1;
            z5 = true;
            if (z5 & ((i64 == i || i63 == i) ? false : true)) {
                C4678 c4678 = new C4678(0, true);
                c4678Arr[i64] = c4678;
                c4678Arr[i63] = c4678;
            }
        }
        c5063.f5710.getClass();
        Pair create = Pair.create(c4678Arr, interfaceC5067Arr);
        InterfaceC5067[] interfaceC5067Arr2 = (InterfaceC5067[]) create.second;
        List[] listArr = new List[interfaceC5067Arr2.length];
        for (int i67 = 0; i67 < interfaceC5067Arr2.length; i67++) {
            InterfaceC5067 interfaceC50672 = interfaceC5067Arr2[i67];
            if (interfaceC50672 != null) {
                c0956 = AbstractC0993.m3260(interfaceC50672);
            } else {
                C0982 c0982 = AbstractC0993.f3977;
                c0956 = C0956.f3901;
            }
            listArr[i67] = c0956;
        }
        ?? abstractC0951 = new AbstractC0951(4);
        int i68 = 0;
        while (true) {
            int i69 = c5056.f19025;
            C4936[] c4936Arr3 = c5056.f19021;
            if (i68 >= i69) {
                break;
            }
            C4936 c49367 = c4936Arr3[i68];
            List list = listArr[i68];
            int i70 = 0;
            while (i70 < c49367.f18387) {
                C1474 m97413 = c49367.m9741(i70);
                int i71 = c4936Arr3[i68].m9741(i70).f5770;
                int[] iArr21 = new int[i71];
                int i72 = 0;
                int i73 = 0;
                while (i72 < i71) {
                    List[] listArr2 = listArr;
                    if (c5056.m9960(i68, i70, i72) == 4) {
                        iArr21[i73] = i72;
                        i73++;
                    }
                    i72++;
                    listArr = listArr2;
                }
                List[] listArr3 = listArr;
                int[] copyOf = Arrays.copyOf(iArr21, i73);
                C4936 c49368 = c49367;
                int i74 = 16;
                String str3 = null;
                int i75 = 0;
                boolean z6 = false;
                int i76 = 0;
                while (i75 < copyOf.length) {
                    String str4 = c4936Arr3[i68].m9741(i70).f5767[copyOf[i75]].f5930;
                    int i77 = i76 + 1;
                    if (i76 == 0) {
                        str3 = str4;
                    } else {
                        z6 = (!Objects.equals(str3, str4)) | z6;
                    }
                    i74 = Math.min(i74, c5056.f19023[i68][i70][i75] & 24);
                    i75++;
                    i76 = i77;
                }
                if (z6) {
                    i74 = Math.min(i74, c5056.f19022[i68]);
                }
                boolean z7 = i74 != 0;
                int i78 = m97413.f5770;
                int[] iArr22 = new int[i78];
                boolean[] zArr = new boolean[i78];
                for (int i79 = 0; i79 < m97413.f5770; i79++) {
                    iArr22[i79] = c5056.m9960(i68, i70, i79);
                    int i80 = 0;
                    while (true) {
                        if (i80 >= list.size()) {
                            z4 = false;
                            break;
                        }
                        InterfaceC5067 interfaceC50673 = (InterfaceC5067) list.get(i80);
                        if (interfaceC50673.mo9758().equals(m97413) && interfaceC50673.mo9757(i79) != -1) {
                            z4 = true;
                            break;
                        }
                        i80++;
                    }
                    zArr[i79] = z4;
                }
                abstractC0951.m3239(new C1453(m97413, z7, iArr22, zArr));
                i70++;
                listArr = listArr3;
                c49367 = c49368;
            }
            i68++;
        }
        C4936 c49369 = c5056.f19026;
        for (int i81 = 0; i81 < c49369.f18387; i81++) {
            C1474 m97414 = c49369.m9741(i81);
            int[] iArr23 = new int[m97414.f5770];
            Arrays.fill(iArr23, 0);
            abstractC0951.m3239(new C1453(m97414, false, iArr23, new boolean[m97414.f5770]));
        }
        C5057 c5057 = new C5057((C4678[]) create.first, (InterfaceC5067[]) create.second, new C1454(abstractC0951.m3249()), c5056);
        for (int i82 = 0; i82 < c5057.f19031; i82++) {
            if (c5057.m9961(i82)) {
                if (c5057.f19027[i82] == null && this.f17531[i82].f17515 != -2) {
                    z3 = false;
                    AbstractC3731.m7857(z3);
                }
                z3 = true;
                AbstractC3731.m7857(z3);
            } else {
                AbstractC3731.m7857(c5057.f19027[i82] == null);
            }
        }
        for (InterfaceC5067 interfaceC50674 : c5057.f19027) {
            if (interfaceC50674 != null) {
                interfaceC50674.mo9769(f);
                interfaceC50674.mo9771(z);
            }
        }
        return c5057;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [ﹳᵢ.ʿᵢ, java.lang.Object] */
    /* renamed from: ˈ, reason: contains not printable characters */
    public final long m9281() {
        if (!this.f17535) {
            return this.f17537.f17659;
        }
        long mo5127 = this.f17543 ? this.f17541.mo5127() : Long.MIN_VALUE;
        return mo5127 == Long.MIN_VALUE ? this.f17537.f17656 : mo5127;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long m9282() {
        return this.f17537.f17659 + this.f17529;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m9283() {
        Object obj = this.f17541;
        if (obj instanceof C4941) {
            long j = this.f17537.f17655;
            if (j == -9223372036854775807L) {
                j = Long.MIN_VALUE;
            }
            C4941 c4941 = (C4941) obj;
            c4941.f18410 = 0L;
            c4941.f18407 = j;
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [ﹳᵢ.ʿᵢ, java.lang.Object] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m9284() {
        if (this.f17535) {
            return !this.f17543 || this.f17541.mo5127() == Long.MIN_VALUE;
        }
        return false;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m9285() {
        if (this.f17535) {
            return m9284() || m9281() - this.f17537.f17659 >= -9223372036854775807L;
        }
        return false;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9286() {
        if (this.f17533 != null) {
            return;
        }
        int i = 0;
        while (true) {
            C5057 c5057 = this.f17534;
            if (i >= c5057.f19031) {
                return;
            }
            boolean m9961 = c5057.m9961(i);
            InterfaceC5067 interfaceC5067 = this.f17534.f19027[i];
            if (m9961 && interfaceC5067 != null) {
                interfaceC5067.mo9768();
            }
            i++;
        }
    }

    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, ﹳᵢ.ʾᵎ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long m9287(C5057 c5057, long j, boolean z, boolean[] zArr) {
        AbstractC4671[] abstractC4671Arr;
        Object[] objArr;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= c5057.f19031) {
                break;
            }
            if (z || !c5057.m9962(this.f17534, i)) {
                z2 = false;
            }
            this.f17528[i] = z2;
            i++;
        }
        int i2 = 0;
        while (true) {
            abstractC4671Arr = this.f17531;
            int length = abstractC4671Arr.length;
            objArr = this.f17530;
            if (i2 >= length) {
                break;
            }
            if (abstractC4671Arr[i2].f17515 == -2) {
                objArr[i2] = null;
            }
            i2++;
        }
        m9286();
        this.f17534 = c5057;
        m9279();
        long mo5124 = this.f17541.mo5124(c5057.f19027, this.f17528, this.f17530, zArr, j);
        for (int i3 = 0; i3 < abstractC4671Arr.length; i3++) {
            if (abstractC4671Arr[i3].f17515 == -2 && this.f17534.m9961(i3)) {
                objArr[i3] = new Object();
            }
        }
        this.f17543 = false;
        for (int i4 = 0; i4 < objArr.length; i4++) {
            if (objArr[i4] != null) {
                AbstractC3731.m7857(c5057.m9961(i4));
                if (abstractC4671Arr[i4].f17515 != -2) {
                    this.f17543 = true;
                }
            } else {
                AbstractC3731.m7857(c5057.f19027[i4] == null);
            }
        }
        return mo5124;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ﹳᵢ.ʾᵎ] */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m9288(float f, AbstractC1445 abstractC1445, boolean z) {
        this.f17535 = true;
        this.f17538 = this.f17541.mo5131();
        C5057 m9280 = m9280(f, abstractC1445, z);
        C4684 c4684 = this.f17537;
        long j = c4684.f17659;
        long j2 = c4684.f17656;
        if (j2 != -9223372036854775807L && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        long m9287 = m9287(m9280, j, false, new boolean[this.f17531.length]);
        long j3 = this.f17529;
        C4684 c46842 = this.f17537;
        this.f17529 = (c46842.f17659 - m9287) + j3;
        this.f17537 = c46842.m9384(m9287);
    }
}
