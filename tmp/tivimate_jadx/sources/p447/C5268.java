package p447;

import com.google.android.gms.internal.measurement.C0299;
import com.google.android.gms.internal.measurement.C0310;
import com.google.android.gms.internal.measurement.C0313;
import com.google.android.gms.internal.measurement.C0322;
import com.google.android.gms.internal.measurement.C0352;
import com.google.android.gms.internal.measurement.C0358;
import com.google.android.gms.internal.measurement.C0366;
import com.google.android.gms.internal.measurement.C0409;
import com.google.android.gms.internal.measurement.C0469;
import com.google.android.gms.internal.measurement.C0470;
import com.google.android.gms.internal.measurement.C0503;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p255.C3359;
import p255.C3366;
import p255.C3368;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5268 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C0299 f19886;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final BitSet f19887;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final BitSet f19888;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C3359 f19889;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final /* synthetic */ C5226 f19890;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f19891;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f19892;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C3359 f19893;

    /* JADX WARN: Type inference failed for: r1v4, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r1v5, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    public C5268(C5226 c5226, String str) {
        this.f19890 = c5226;
        this.f19892 = str;
        this.f19891 = true;
        this.f19887 = new BitSet();
        this.f19888 = new BitSet();
        this.f19893 = new C3368(0);
        this.f19889 = new C3368(0);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    public C5268(C5226 c5226, String str, C0299 c0299, BitSet bitSet, BitSet bitSet2, C3359 c3359, C3359 c33592) {
        this.f19890 = c5226;
        this.f19892 = str;
        this.f19887 = bitSet;
        this.f19888 = bitSet2;
        this.f19893 = c3359;
        this.f19889 = new C3368(0);
        Iterator it = ((C3366) c33592.keySet()).iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            ArrayList arrayList = new ArrayList();
            arrayList.add((Long) c33592.get(num));
            this.f19889.put(num, arrayList);
        }
        this.f19891 = false;
        this.f19886 = c0299;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0358 m10456(int i) {
        ArrayList arrayList;
        List list;
        C0322 m1671 = C0358.m1671();
        m1671.m1947();
        ((C0358) m1671.f2260).m1677(i);
        m1671.m1947();
        ((C0358) m1671.f2260).m1676(this.f19891);
        C0299 c0299 = this.f19886;
        if (c0299 != null) {
            m1671.m1947();
            ((C0358) m1671.f2260).m1681(c0299);
        }
        C0469 m1314 = C0299.m1314();
        ArrayList m10259 = C5239.m10259(this.f19887);
        m1314.m1947();
        ((C0299) m1314.f2260).m1326(m10259);
        ArrayList m102592 = C5239.m10259(this.f19888);
        m1314.m1947();
        ((C0299) m1314.f2260).m1329(m102592);
        C3359 c3359 = this.f19893;
        if (c3359 == null) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList(c3359.f13167);
            Iterator it = ((C3366) c3359.keySet()).iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                int intValue = num.intValue();
                Long l = (Long) c3359.get(num);
                if (l != null) {
                    C0352 m1979 = C0503.m1979();
                    m1979.m1947();
                    ((C0503) m1979.f2260).m1982(intValue);
                    long longValue = l.longValue();
                    m1979.m1947();
                    ((C0503) m1979.f2260).m1980(longValue);
                    arrayList2.add((C0503) m1979.m1948());
                }
            }
            arrayList = arrayList2;
        }
        if (arrayList != null) {
            m1314.m1947();
            ((C0299) m1314.f2260).m1320(arrayList);
        }
        C3359 c33592 = this.f19889;
        if (c33592 == null) {
            list = Collections.EMPTY_LIST;
        } else {
            ArrayList arrayList3 = new ArrayList(c33592.f13167);
            Iterator it2 = ((C3366) c33592.keySet()).iterator();
            while (it2.hasNext()) {
                Integer num2 = (Integer) it2.next();
                C0313 m1356 = C0310.m1356();
                int intValue2 = num2.intValue();
                m1356.m1947();
                ((C0310) m1356.f2260).m1357(intValue2);
                List list2 = (List) c33592.get(num2);
                if (list2 != null) {
                    Collections.sort(list2);
                    m1356.m1947();
                    ((C0310) m1356.f2260).m1361(list2);
                }
                arrayList3.add((C0310) m1356.m1948());
            }
            list = arrayList3;
        }
        m1314.m1947();
        ((C0299) m1314.f2260).m1321(list);
        m1671.m1947();
        ((C0358) m1671.f2260).m1673((C0299) m1314.m1948());
        return (C0358) m1671.m1948();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m10457(C5342 c5342) {
        int m1810;
        boolean z;
        boolean m1799;
        switch (c5342.f20331) {
            case 0:
                m1810 = ((C0409) c5342.f20327).m1810();
                break;
            default:
                m1810 = ((C0366) c5342.f20327).m1695();
                break;
        }
        if (c5342.f20328 != null) {
            this.f19888.set(m1810, true);
        }
        Boolean bool = c5342.f20329;
        if (bool != null) {
            this.f19887.set(m1810, bool.booleanValue());
        }
        if (c5342.f20330 != null) {
            Integer valueOf = Integer.valueOf(m1810);
            C3359 c3359 = this.f19893;
            Long l = (Long) c3359.get(valueOf);
            long longValue = c5342.f20330.longValue() / 1000;
            if (l == null || longValue > l.longValue()) {
                c3359.put(valueOf, Long.valueOf(longValue));
            }
        }
        if (c5342.f20335 != null) {
            Integer valueOf2 = Integer.valueOf(m1810);
            C3359 c33592 = this.f19889;
            List list = (List) c33592.get(valueOf2);
            if (list == null) {
                list = new ArrayList();
                c33592.put(valueOf2, list);
            }
            switch (c5342.f20331) {
                case 0:
                    z = false;
                    break;
                default:
                    z = true;
                    break;
            }
            if (z) {
                list.clear();
            }
            C0470.m1904();
            C5322 c5322 = (C5322) ((ᵎﹶ) this.f19890).ʾˋ;
            C5327 c5327 = c5322.f20189;
            C5254 c5254 = AbstractC5321.f20171;
            String str = this.f19892;
            if (c5327.m10577(str, c5254)) {
                switch (c5342.f20331) {
                    case 0:
                        m1799 = ((C0409) c5342.f20327).m1799();
                        break;
                    default:
                        m1799 = false;
                        break;
                }
                if (m1799) {
                    list.clear();
                }
            }
            C0470.m1904();
            if (!c5322.f20189.m10577(str, c5254)) {
                list.add(Long.valueOf(c5342.f20335.longValue() / 1000));
                return;
            }
            Long valueOf3 = Long.valueOf(c5342.f20335.longValue() / 1000);
            if (list.contains(valueOf3)) {
                return;
            }
            list.add(valueOf3);
        }
    }
}
