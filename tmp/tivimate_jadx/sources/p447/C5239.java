package p447;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.AbstractC0001;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader$ParseException;
import com.google.android.gms.internal.measurement.AbstractC0495;
import com.google.android.gms.internal.measurement.C0273;
import com.google.android.gms.internal.measurement.C0299;
import com.google.android.gms.internal.measurement.C0308;
import com.google.android.gms.internal.measurement.C0310;
import com.google.android.gms.internal.measurement.C0311;
import com.google.android.gms.internal.measurement.C0334;
import com.google.android.gms.internal.measurement.C0341;
import com.google.android.gms.internal.measurement.C0343;
import com.google.android.gms.internal.measurement.C0347;
import com.google.android.gms.internal.measurement.C0348;
import com.google.android.gms.internal.measurement.C0350;
import com.google.android.gms.internal.measurement.C0358;
import com.google.android.gms.internal.measurement.C0366;
import com.google.android.gms.internal.measurement.C0375;
import com.google.android.gms.internal.measurement.C0397;
import com.google.android.gms.internal.measurement.C0403;
import com.google.android.gms.internal.measurement.C0414;
import com.google.android.gms.internal.measurement.C0433;
import com.google.android.gms.internal.measurement.C0464;
import com.google.android.gms.internal.measurement.C0466;
import com.google.android.gms.internal.measurement.C0471;
import com.google.android.gms.internal.measurement.C0476;
import com.google.android.gms.internal.measurement.C0484;
import com.google.android.gms.internal.measurement.C0498;
import com.google.android.gms.internal.measurement.C0503;
import com.google.android.gms.internal.measurement.C0511;
import com.google.android.gms.internal.measurement.C0512;
import com.google.android.gms.internal.measurement.InterfaceC0247;
import com.google.android.gms.internal.measurement.InterfaceC0378;
import com.google.android.gms.internal.measurement.ᵎ;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.GZIPOutputStream;
import p010.AbstractC0844;
import p223.C3056;
import p274.C3488;
import p296.AbstractC3659;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5239 extends AbstractC5277 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ int f19691;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C5239(C5337 c5337, int i) {
        super(c5337);
        this.f19691 = i;
    }

    /* renamed from: ʻˆ, reason: contains not printable characters */
    public static AbstractC0495 m10253(AbstractC0495 abstractC0495, byte[] bArr) {
        C0343 c0343;
        C0343 c03432 = C0343.f1995;
        if (c03432 == null) {
            synchronized (C0343.class) {
                try {
                    c0343 = C0343.f1995;
                    if (c0343 == null) {
                        C0464 c0464 = C0464.f2220;
                        c0343 = ᵎ.ʼʼ();
                        C0343.f1995 = c0343;
                    }
                } finally {
                }
            }
            c03432 = c0343;
        }
        if (c03432 != null) {
            abstractC0495.getClass();
            abstractC0495.m1943(bArr, bArr.length, c03432);
            return abstractC0495;
        }
        abstractC0495.getClass();
        int length = bArr.length;
        C0343 c03433 = C0343.f1995;
        C0464 c04642 = C0464.f2220;
        abstractC0495.m1943(bArr, length, C0343.f1994);
        return abstractC0495;
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public static C5279 m10254(C0484 c0484) {
        Object obj;
        Bundle m10268 = m10268(c0484.f2244, true);
        String obj2 = (!m10268.containsKey("_o") || (obj = m10268.get("_o")) == null) ? "app" : obj.toString();
        String m10210 = AbstractC5218.m10210(c0484.f2246, AbstractC5218.f19635, AbstractC5218.f19627);
        if (m10210 == null) {
            m10210 = c0484.f2246;
        }
        return new C5279(m10210, new C5294(m10268), obj2, c0484.f2245);
    }

    /* renamed from: ʽʾ, reason: contains not printable characters */
    private final void m10255() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        r5 = new java.util.ArrayList();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
    
        if (r4 == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
    
        r3 = (android.os.Parcelable[]) r3;
        r4 = r3.length;
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
    
        if (r7 >= r4) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
    
        r8 = r3[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        if ((r8 instanceof android.os.Bundle) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
    
        r5.add(m10256((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0080, code lost:
    
        r0.put(r2, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
    
        if ((r3 instanceof java.util.ArrayList) == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0056, code lost:
    
        r3 = (java.util.ArrayList) r3;
        r4 = r3.size();
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005d, code lost:
    
        if (r7 >= r4) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005f, code lost:
    
        r8 = r3.get(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0065, code lost:
    
        if ((r8 instanceof android.os.Bundle) == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0067, code lost:
    
        r5.add(m10256((android.os.Bundle) r8, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0070, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0075, code lost:
    
        if ((r3 instanceof android.os.Bundle) == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0077, code lost:
    
        r5.add(m10256((android.os.Bundle) r3, false));
     */
    /* renamed from: ʽᐧ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.HashMap m10256(android.os.Bundle r10, boolean r11) {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.Set r1 = r10.keySet()
            java.util.Iterator r1 = r1.iterator()
        Ld:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L84
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r3 = r10.get(r2)
            boolean r4 = r3 instanceof android.os.Parcelable[]
            if (r4 != 0) goto L30
            boolean r5 = r3 instanceof java.util.ArrayList
            if (r5 != 0) goto L30
            boolean r5 = r3 instanceof android.os.Bundle
            if (r5 == 0) goto L2a
            goto L30
        L2a:
            if (r3 == 0) goto Ld
            r0.put(r2, r3)
            goto Ld
        L30:
            if (r11 == 0) goto Ld
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            r6 = 0
            if (r4 == 0) goto L52
            android.os.Parcelable[] r3 = (android.os.Parcelable[]) r3
            int r4 = r3.length
            r7 = r6
        L3e:
            if (r7 >= r4) goto L80
            r8 = r3[r7]
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L4f
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.HashMap r8 = m10256(r8, r6)
            r5.add(r8)
        L4f:
            int r7 = r7 + 1
            goto L3e
        L52:
            boolean r4 = r3 instanceof java.util.ArrayList
            if (r4 == 0) goto L73
            java.util.ArrayList r3 = (java.util.ArrayList) r3
            int r4 = r3.size()
            r7 = r6
        L5d:
            if (r7 >= r4) goto L80
            java.lang.Object r8 = r3.get(r7)
            boolean r9 = r8 instanceof android.os.Bundle
            if (r9 == 0) goto L70
            android.os.Bundle r8 = (android.os.Bundle) r8
            java.util.HashMap r8 = m10256(r8, r6)
            r5.add(r8)
        L70:
            int r7 = r7 + 1
            goto L5d
        L73:
            boolean r4 = r3 instanceof android.os.Bundle
            if (r4 == 0) goto L80
            android.os.Bundle r3 = (android.os.Bundle) r3
            java.util.HashMap r3 = m10256(r3, r6)
            r5.add(r3)
        L80:
            r0.put(r2, r5)
            goto Ld
        L84:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5239.m10256(android.os.Bundle, boolean):java.util.HashMap");
    }

    /* renamed from: ˆʻ, reason: contains not printable characters */
    public static boolean m10257(InterfaceC0378 interfaceC0378, int i) {
        if (i < ((C0403) interfaceC0378).f2132 * 64) {
            return ((1 << (i % 64)) & ((Long) ((C0403) interfaceC0378).get(i / 64)).longValue()) != 0;
        }
        return false;
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public static final Bundle m10258(List list) {
        Bundle bundle = new Bundle();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C0348 c0348 = (C0348) it.next();
            String m1633 = c0348.m1633();
            if (c0348.m1620()) {
                bundle.putDouble(m1633, c0348.m1615());
            } else if (c0348.m1614()) {
                bundle.putFloat(m1633, c0348.m1626());
            } else if (c0348.m1635()) {
                bundle.putString(m1633, c0348.m1625());
            } else if (c0348.m1624()) {
                bundle.putLong(m1633, c0348.m1618());
            }
        }
        return bundle;
    }

    /* renamed from: ˉʽ, reason: contains not printable characters */
    public static ArrayList m10259(BitSet bitSet) {
        int length = (bitSet.length() + 63) / 64;
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            long j = 0;
            for (int i2 = 0; i2 < 64; i2++) {
                int i3 = (i * 64) + i2;
                if (i3 >= bitSet.length()) {
                    break;
                }
                if (bitSet.get(i3)) {
                    j |= 1 << i2;
                }
            }
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    /* renamed from: ˊˊ, reason: contains not printable characters */
    public static final void m10260(StringBuilder sb, int i, String str, Object obj) {
        if (obj == null) {
            return;
        }
        m10272(i + 1, sb);
        sb.append(str);
        sb.append(": ");
        sb.append(obj);
        sb.append('\n');
    }

    /* renamed from: ˊﹳ, reason: contains not printable characters */
    private final void m10261() {
    }

    /* renamed from: ˊﾞ, reason: contains not printable characters */
    public static final void m10262(StringBuilder sb, int i, String str, C0375 c0375) {
        if (c0375 == null) {
            return;
        }
        m10272(i, sb);
        sb.append(str);
        sb.append(" {\n");
        if (c0375.m1713()) {
            int m1720 = c0375.m1720();
            m10260(sb, i, "comparison_type", m1720 != 1 ? m1720 != 2 ? m1720 != 3 ? m1720 != 4 ? "BETWEEN" : "EQUAL" : "GREATER_THAN" : "LESS_THAN" : "UNKNOWN_COMPARISON_TYPE");
        }
        if (c0375.m1719()) {
            m10260(sb, i, "match_as_float", Boolean.valueOf(c0375.m1721()));
        }
        if (c0375.m1717()) {
            m10260(sb, i, "comparison_value", c0375.m1716());
        }
        if (c0375.m1714()) {
            m10260(sb, i, "min_comparison_value", c0375.m1712());
        }
        if (c0375.m1718()) {
            m10260(sb, i, "max_comparison_value", c0375.m1715());
        }
        m10272(i, sb);
        sb.append("}\n");
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public static final void m10263(Uri.Builder builder, String str, String str2, Set set) {
        if (set.contains(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        builder.appendQueryParameter(str, str2);
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public static final C0348 m10264(C0414 c0414, String str) {
        for (C0348 c0348 : c0414.m1818()) {
            if (c0348.m1633().equals(str)) {
                return c0348;
            }
        }
        return null;
    }

    /* renamed from: ˏʻ, reason: contains not printable characters */
    public static int m10265(C0273 c0273, String str) {
        for (int i = 0; i < ((C0311) c0273.f2260).m1366(); i++) {
            if (str.equals(((C0311) c0273.f2260).m1407(i).m1352())) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    private final void m10266() {
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public static final Serializable m10267(C0414 c0414, String str) {
        C0348 m10264 = m10264(c0414, str);
        if (m10264 == null) {
            return null;
        }
        return m10271(m10264);
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public static Bundle m10268(Map map, boolean z) {
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            Object obj = map.get(str);
            if (obj == null) {
                bundle.putString(str, null);
            } else if (obj instanceof Long) {
                bundle.putLong(str, ((Long) obj).longValue());
            } else if (obj instanceof Double) {
                bundle.putDouble(str, ((Double) obj).doubleValue());
            } else if (!(obj instanceof ArrayList)) {
                bundle.putString(str, obj.toString());
            } else if (z) {
                ArrayList arrayList = (ArrayList) obj;
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    arrayList2.add(m10268((Map) arrayList.get(i), false));
                }
                bundle.putParcelableArray(str, (Parcelable[]) arrayList2.toArray(new Parcelable[0]));
            }
        }
        return bundle;
    }

    /* renamed from: יⁱ, reason: contains not printable characters */
    public static Bundle[] m10269(InterfaceC0247 interfaceC0247) {
        ArrayList arrayList = new ArrayList();
        Iterator it = interfaceC0247.iterator();
        while (it.hasNext()) {
            C0348 c0348 = (C0348) it.next();
            if (c0348 != null) {
                Bundle bundle = new Bundle();
                for (C0348 c03482 : c0348.m1634()) {
                    if (c03482.m1635()) {
                        bundle.putString(c03482.m1633(), c03482.m1625());
                    } else if (c03482.m1624()) {
                        bundle.putLong(c03482.m1633(), c03482.m1618());
                    } else if (c03482.m1620()) {
                        bundle.putDouble(c03482.m1633(), c03482.m1615());
                    }
                }
                if (!bundle.isEmpty()) {
                    arrayList.add(bundle);
                }
            }
        }
        return (Bundle[]) arrayList.toArray(new Bundle[arrayList.size()]);
    }

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public static final void m10270(Uri.Builder builder, String[] strArr, Bundle bundle, Set set) {
        for (String str : strArr) {
            String[] split = str.split(",");
            String str2 = split[0];
            String str3 = split[split.length - 1];
            String string = bundle.getString(str2);
            if (string != null) {
                m10263(builder, str3, string, set);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [android.os.Bundle[], java.io.Serializable] */
    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public static final Serializable m10271(C0348 c0348) {
        if (c0348.m1635()) {
            return c0348.m1625();
        }
        if (c0348.m1624()) {
            return Long.valueOf(c0348.m1618());
        }
        if (c0348.m1620()) {
            return Double.valueOf(c0348.m1615());
        }
        if (c0348.m1619() > 0) {
            return m10269((InterfaceC0247) c0348.m1634());
        }
        return null;
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public static final void m10272(int i, StringBuilder sb) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public static final String m10273(boolean z, boolean z2, boolean z3) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("Dynamic ");
        }
        if (z2) {
            sb.append("Sequence ");
        }
        if (z3) {
            sb.append("Session-Scoped ");
        }
        return sb.toString();
    }

    /* renamed from: ﾞˊ, reason: contains not printable characters */
    public static boolean m10274(String str) {
        return str != null && str.matches("([+-])?([0-9]+\\.?[0-9]*|[0-9]*\\.?[0-9]+)") && str.length() <= 310;
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public static final void m10275(C0466 c0466, String str, Long l) {
        List m1892 = c0466.m1892();
        int i = 0;
        while (true) {
            if (i >= m1892.size()) {
                i = -1;
                break;
            } else if (str.equals(((C0348) m1892.get(i)).m1633())) {
                break;
            } else {
                i++;
            }
        }
        C0341 m1613 = C0348.m1613();
        m1613.m1582(str);
        m1613.m1584(l.longValue());
        if (i < 0) {
            c0466.m1897(m1613);
        } else {
            c0466.m1947();
            ((C0414) c0466.f2260).m1821(i, (C0348) m1613.m1948());
        }
    }

    /* renamed from: ﾞˏ, reason: contains not printable characters */
    public static final void m10276(StringBuilder sb, String str, C0299 c0299) {
        if (c0299 == null) {
            return;
        }
        m10272(3, sb);
        sb.append(str);
        sb.append(" {\n");
        if (c0299.m1323() != 0) {
            m10272(4, sb);
            sb.append("results: ");
            int i = 0;
            for (Long l : c0299.m1330()) {
                int i2 = i + 1;
                if (i != 0) {
                    sb.append(", ");
                }
                sb.append(l);
                i = i2;
            }
            sb.append('\n');
        }
        if (c0299.m1328() != 0) {
            m10272(4, sb);
            sb.append("status: ");
            int i3 = 0;
            for (Long l2 : c0299.m1316()) {
                int i4 = i3 + 1;
                if (i3 != 0) {
                    sb.append(", ");
                }
                sb.append(l2);
                i3 = i4;
            }
            sb.append('\n');
        }
        if (c0299.m1318() != 0) {
            m10272(4, sb);
            sb.append("dynamic_filter_timestamps: {");
            int i5 = 0;
            for (C0503 c0503 : c0299.m1322()) {
                int i6 = i5 + 1;
                if (i5 != 0) {
                    sb.append(", ");
                }
                sb.append(c0503.m1981() ? Integer.valueOf(c0503.m1984()) : null);
                sb.append(":");
                sb.append(c0503.m1985() ? Long.valueOf(c0503.m1983()) : null);
                i5 = i6;
            }
            sb.append("}\n");
        }
        if (c0299.m1324() != 0) {
            m10272(4, sb);
            sb.append("sequence_filter_timestamps: {");
            int i7 = 0;
            for (C0310 c0310 : c0299.m1315()) {
                int i8 = i7 + 1;
                if (i7 != 0) {
                    sb.append(", ");
                }
                sb.append(c0310.m1358() ? Integer.valueOf(c0310.m1362()) : null);
                sb.append(": [");
                Iterator it = c0310.m1363().iterator();
                int i9 = 0;
                while (it.hasNext()) {
                    long longValue = ((Long) it.next()).longValue();
                    int i10 = i9 + 1;
                    if (i9 != 0) {
                        sb.append(", ");
                    }
                    sb.append(longValue);
                    i9 = i10;
                }
                sb.append("]");
                i7 = i8;
            }
            sb.append("}\n");
        }
        m10272(3, sb);
        sb.append("}\n");
    }

    /* renamed from: ʻʼ, reason: contains not printable characters */
    public String m10277(C0366 c0366) {
        StringBuilder m3020 = AbstractC0844.m3020("\nproperty_filter {\n");
        if (c0366.m1690()) {
            m10260(m3020, 0, "filter_id", Integer.valueOf(c0366.m1695()));
        }
        m10260(m3020, 0, "property_name", ((C5322) ((ᵎﹶ) this).ʾˋ).f20199.m10469(c0366.m1696()));
        String m10273 = m10273(c0366.m1692(), c0366.m1691(), c0366.m1694());
        if (!m10273.isEmpty()) {
            m10260(m3020, 0, "filter_type", m10273);
        }
        m10291(m3020, 1, c0366.m1693());
        m3020.append("}\n");
        return m3020.toString();
    }

    /* renamed from: ʿʽ, reason: contains not printable characters */
    public C5272 m10278(String str, C0273 c0273, C0466 c0466, String str2) {
        int indexOf;
        C0334.m1580();
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5327 c5327 = c5322.f20189;
        if (!c5327.m10577(str, AbstractC5321.f20075)) {
            return null;
        }
        c5322.f20206.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        String[] split = c5327.m10585(str, AbstractC5321.f20073).split(",");
        HashSet hashSet = new HashSet(split.length);
        for (String str3 : split) {
            Objects.requireNonNull(str3);
            if (!hashSet.add(str3)) {
                throw new IllegalArgumentException("duplicate element: " + ((Object) str3));
            }
        }
        Set unmodifiableSet = DesugarCollections.unmodifiableSet(hashSet);
        C5337 c5337 = this.f19910;
        C5312 c5312 = c5337.f20294;
        C5304 c5304 = c5337.f20276;
        C5304 c53042 = c5312.f19910.f20276;
        C5337.m10599(c53042);
        String m10509 = c53042.m10509(str);
        Uri.Builder builder = new Uri.Builder();
        C5327 c53272 = ((C5322) ((ᵎﹶ) c5312).ʾˋ).f20189;
        builder.scheme(c53272.m10585(str, AbstractC5321.f20149));
        if (TextUtils.isEmpty(m10509)) {
            builder.authority(c53272.m10585(str, AbstractC5321.f20132));
        } else {
            String m10585 = c53272.m10585(str, AbstractC5321.f20132);
            StringBuilder sb = new StringBuilder(String.valueOf(m10509).length() + 1 + String.valueOf(m10585).length());
            sb.append(m10509);
            sb.append(".");
            sb.append(m10585);
            builder.authority(sb.toString());
        }
        builder.path(c53272.m10585(str, AbstractC5321.f20080));
        m10263(builder, "gmp_app_id", ((C0311) c0273.f2260).m1480(), unmodifiableSet);
        c5327.m10579();
        m10263(builder, "gmp_version", String.valueOf(133005L), unmodifiableSet);
        String m1375 = ((C0311) c0273.f2260).m1375();
        C5254 c5254 = AbstractC5321.f20096;
        if (c5327.m10577(str, c5254)) {
            C5337.m10599(c5304);
            if (c5304.m10508(str)) {
                m1375 = "";
            }
        }
        m10263(builder, "app_instance_id", m1375, unmodifiableSet);
        m10263(builder, "rdid", ((C0311) c0273.f2260).m1371(), unmodifiableSet);
        m10263(builder, "bundle_id", c0273.m1265(), unmodifiableSet);
        String m1898 = c0466.m1898();
        String m10210 = AbstractC5218.m10210(m1898, AbstractC5218.f19627, AbstractC5218.f19635);
        if (true != TextUtils.isEmpty(m10210)) {
            m1898 = m10210;
        }
        m10263(builder, "app_event_name", m1898, unmodifiableSet);
        m10263(builder, "app_version", String.valueOf(((C0311) c0273.f2260).m1484()), unmodifiableSet);
        String m1382 = ((C0311) c0273.f2260).m1382();
        if (c5327.m10577(str, c5254)) {
            C5337.m10599(c5304);
            if (c5304.m10507(str) && !TextUtils.isEmpty(m1382) && (indexOf = m1382.indexOf(".")) != -1) {
                m1382 = m1382.substring(0, indexOf);
            }
        }
        m10263(builder, "os_version", m1382, unmodifiableSet);
        m10263(builder, "timestamp", String.valueOf(c0466.m1895()), unmodifiableSet);
        if (((C0311) c0273.f2260).m1394()) {
            m10263(builder, "lat", "1", unmodifiableSet);
        }
        m10263(builder, "privacy_sandbox_version", String.valueOf(((C0311) c0273.f2260).m1508()), unmodifiableSet);
        m10263(builder, "trigger_uri_source", "1", unmodifiableSet);
        m10263(builder, "trigger_uri_timestamp", String.valueOf(currentTimeMillis), unmodifiableSet);
        m10263(builder, "request_uuid", str2, unmodifiableSet);
        List<C0348> m1892 = c0466.m1892();
        Bundle bundle = new Bundle();
        for (C0348 c0348 : m1892) {
            String m1633 = c0348.m1633();
            if (c0348.m1620()) {
                bundle.putString(m1633, String.valueOf(c0348.m1615()));
            } else if (c0348.m1614()) {
                bundle.putString(m1633, String.valueOf(c0348.m1626()));
            } else if (c0348.m1635()) {
                bundle.putString(m1633, c0348.m1625());
            } else if (c0348.m1624()) {
                bundle.putString(m1633, String.valueOf(c0348.m1618()));
            }
        }
        m10270(builder, c5327.m10585(str, AbstractC5321.f20119).split("\\|"), bundle, unmodifiableSet);
        List<C0308> unmodifiableList = DesugarCollections.unmodifiableList(((C0311) c0273.f2260).m1380());
        Bundle bundle2 = new Bundle();
        for (C0308 c0308 : unmodifiableList) {
            String m1352 = c0308.m1352();
            if (c0308.m1335()) {
                bundle2.putString(m1352, String.valueOf(c0308.m1351()));
            } else if (c0308.m1345()) {
                bundle2.putString(m1352, String.valueOf(c0308.m1339()));
            } else if (c0308.m1344()) {
                bundle2.putString(m1352, c0308.m1343());
            } else if (c0308.m1338()) {
                bundle2.putString(m1352, String.valueOf(c0308.m1334()));
            }
        }
        m10270(builder, c5327.m10585(str, AbstractC5321.f20083).split("\\|"), bundle2, unmodifiableSet);
        m10263(builder, "dma", true != ((C0311) c0273.f2260).m1458() ? "0" : "1", unmodifiableSet);
        if (!((C0311) c0273.f2260).m1400().isEmpty()) {
            m10263(builder, "dma_cps", ((C0311) c0273.f2260).m1400(), unmodifiableSet);
        }
        if (((C0311) c0273.f2260).m1467()) {
            C0350 m1502 = ((C0311) c0273.f2260).m1502();
            if (!m1502.m1668().isEmpty()) {
                m10263(builder, "dl_gclid", m1502.m1668(), unmodifiableSet);
            }
            if (!m1502.m1660().isEmpty()) {
                m10263(builder, "dl_gbraid", m1502.m1660(), unmodifiableSet);
            }
            if (!m1502.m1648().isEmpty()) {
                m10263(builder, "dl_gs", m1502.m1648(), unmodifiableSet);
            }
            if (m1502.m1651() > 0) {
                m10263(builder, "dl_ss_ts", String.valueOf(m1502.m1651()), unmodifiableSet);
            }
            if (!m1502.m1650().isEmpty()) {
                m10263(builder, "mr_gclid", m1502.m1650(), unmodifiableSet);
            }
            if (!m1502.m1658().isEmpty()) {
                m10263(builder, "mr_gbraid", m1502.m1658(), unmodifiableSet);
            }
            if (!m1502.m1665().isEmpty()) {
                m10263(builder, "mr_gs", m1502.m1665(), unmodifiableSet);
            }
            if (m1502.m1666() > 0) {
                m10263(builder, "mr_click_ts", String.valueOf(m1502.m1666()), unmodifiableSet);
            }
        }
        return new C5272(builder.build().toString(), currentTimeMillis, 1);
    }

    /* renamed from: ˆˎ, reason: contains not printable characters */
    public String m10279(C0347 c0347) {
        C0512 m1368;
        StringBuilder m3020 = AbstractC0844.m3020("\nbatch {\n");
        if (c0347.m1603()) {
            m10260(m3020, 0, "upload_subdomain", c0347.m1599());
        }
        if (c0347.m1607()) {
            m10260(m3020, 0, "sgtm_join_id", c0347.m1606());
        }
        for (C0311 c0311 : c0347.m1601()) {
            if (c0311 != null) {
                m10272(1, m3020);
                m3020.append("bundle {\n");
                if (c0311.m1446()) {
                    m10260(m3020, 1, "protocol_version", Integer.valueOf(c0311.m1425()));
                }
                C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
                C5327 c5327 = c5322.f20189;
                C5286 c5286 = c5322.f20199;
                if (c5327.m10577(c0311.m1379(), AbstractC5321.f20175) && c0311.m1378()) {
                    m10260(m3020, 1, "session_stitching_token", c0311.m1435());
                }
                m10260(m3020, 1, "platform", c0311.m1505());
                if (c0311.m1504()) {
                    m10260(m3020, 1, "gmp_version", Long.valueOf(c0311.m1453()));
                }
                if (c0311.m1438()) {
                    m10260(m3020, 1, "uploading_gmp_version", Long.valueOf(c0311.m1390()));
                }
                if (c0311.m1474()) {
                    m10260(m3020, 1, "dynamite_version", Long.valueOf(c0311.m1448()));
                }
                if (c0311.m1487()) {
                    m10260(m3020, 1, "config_version", Long.valueOf(c0311.m1406()));
                }
                m10260(m3020, 1, "gmp_app_id", c0311.m1480());
                m10260(m3020, 1, "app_id", c0311.m1379());
                m10260(m3020, 1, "app_version", c0311.m1491());
                if (c0311.m1464()) {
                    m10260(m3020, 1, "app_version_major", Integer.valueOf(c0311.m1484()));
                }
                m10260(m3020, 1, "firebase_instance_id", c0311.m1486());
                if (c0311.m1494()) {
                    m10260(m3020, 1, "dev_cert_hash", Long.valueOf(c0311.m1392()));
                }
                m10260(m3020, 1, "app_store", c0311.m1443());
                if (c0311.m1426()) {
                    m10260(m3020, 1, "upload_timestamp_millis", Long.valueOf(c0311.m1383()));
                }
                if (c0311.m1433()) {
                    m10260(m3020, 1, "start_timestamp_millis", Long.valueOf(c0311.m1377()));
                }
                if (c0311.m1418()) {
                    m10260(m3020, 1, "end_timestamp_millis", Long.valueOf(c0311.m1489()));
                }
                if (c0311.m1503()) {
                    m10260(m3020, 1, "previous_bundle_start_timestamp_millis", Long.valueOf(c0311.m1466()));
                }
                if (c0311.m1481()) {
                    m10260(m3020, 1, "previous_bundle_end_timestamp_millis", Long.valueOf(c0311.m1397()));
                }
                m10260(m3020, 1, "app_instance_id", c0311.m1375());
                m10260(m3020, 1, "resettable_device_id", c0311.m1371());
                m10260(m3020, 1, "ds_id", c0311.m1408());
                if (c0311.m1457()) {
                    m10260(m3020, 1, "limited_ad_tracking", Boolean.valueOf(c0311.m1394()));
                }
                m10260(m3020, 1, "os_version", c0311.m1382());
                m10260(m3020, 1, "device_model", c0311.m1510());
                m10260(m3020, 1, "user_default_language", c0311.m1432());
                if (c0311.m1420()) {
                    m10260(m3020, 1, "time_zone_offset_minutes", Integer.valueOf(c0311.m1506()));
                }
                if (c0311.m1477()) {
                    m10260(m3020, 1, "bundle_sequential_index", Integer.valueOf(c0311.m1384()));
                }
                if (c0311.m1511()) {
                    m10260(m3020, 1, "delivery_index", Integer.valueOf(c0311.m1462()));
                }
                if (c0311.m1415()) {
                    m10260(m3020, 1, "service_upload", Boolean.valueOf(c0311.m1468()));
                }
                m10260(m3020, 1, "health_monitor", c0311.m1411());
                if (c0311.m1461()) {
                    m10260(m3020, 1, "retry_counter", Integer.valueOf(c0311.m1388()));
                }
                if (c0311.m1391()) {
                    m10260(m3020, 1, "consent_signals", c0311.m1441());
                }
                if (c0311.m1373()) {
                    m10260(m3020, 1, "is_dma_region", Boolean.valueOf(c0311.m1458()));
                }
                if (c0311.m1483()) {
                    m10260(m3020, 1, "core_platform_services", c0311.m1400());
                }
                if (c0311.m1500()) {
                    m10260(m3020, 1, "consent_diagnostics", c0311.m1470());
                }
                if (c0311.m1455()) {
                    m10260(m3020, 1, "target_os_version", Long.valueOf(c0311.m1389()));
                }
                C0334.m1580();
                if (c5322.f20189.m10577(c0311.m1379(), AbstractC5321.f20075)) {
                    m10260(m3020, 1, "ad_services_version", Integer.valueOf(c0311.m1508()));
                    if (c0311.m1501() && (m1368 = c0311.m1368()) != null) {
                        m10272(2, m3020);
                        m3020.append("attribution_eligibility_status {\n");
                        m10260(m3020, 2, "eligible", Boolean.valueOf(m1368.m2006()));
                        m10260(m3020, 2, "no_access_adservices_attribution_permission", Boolean.valueOf(m1368.m2015()));
                        m10260(m3020, 2, "pre_r", Boolean.valueOf(m1368.m2017()));
                        m10260(m3020, 2, "r_extensions_too_old", Boolean.valueOf(m1368.m2012()));
                        m10260(m3020, 2, "adservices_extension_too_old", Boolean.valueOf(m1368.m2011()));
                        m10260(m3020, 2, "ad_storage_not_allowed", Boolean.valueOf(m1368.m2008()));
                        m10260(m3020, 2, "measurement_manager_disabled", Boolean.valueOf(m1368.m2004()));
                        m10272(2, m3020);
                        m3020.append("}\n");
                    }
                }
                if (c0311.m1467()) {
                    C0350 m1502 = c0311.m1502();
                    m10272(2, m3020);
                    m3020.append("ad_campaign_info {\n");
                    if (m1502.m1640()) {
                        m10260(m3020, 2, "deep_link_gclid", m1502.m1668());
                    }
                    if (m1502.m1645()) {
                        m10260(m3020, 2, "deep_link_gbraid", m1502.m1660());
                    }
                    if (m1502.m1643()) {
                        m10260(m3020, 2, "deep_link_gad_source", m1502.m1648());
                    }
                    if (m1502.m1662()) {
                        m10260(m3020, 2, "deep_link_session_millis", Long.valueOf(m1502.m1651()));
                    }
                    if (m1502.m1659()) {
                        m10260(m3020, 2, "market_referrer_gclid", m1502.m1650());
                    }
                    if (m1502.m1664()) {
                        m10260(m3020, 2, "market_referrer_gbraid", m1502.m1658());
                    }
                    if (m1502.m1663()) {
                        m10260(m3020, 2, "market_referrer_gad_source", m1502.m1665());
                    }
                    if (m1502.m1647()) {
                        m10260(m3020, 2, "market_referrer_click_millis", Long.valueOf(m1502.m1666()));
                    }
                    m10272(2, m3020);
                    m3020.append("}\n");
                }
                if (c0311.m1428()) {
                    m10260(m3020, 1, "batching_timestamp_millis", Long.valueOf(c0311.m1417()));
                }
                if (c0311.m1513()) {
                    C0476 m1386 = c0311.m1386();
                    m10272(2, m3020);
                    m3020.append("sgtm_diagnostics {\n");
                    int m1932 = m1386.m1932();
                    m10260(m3020, 2, "upload_type", m1932 != 1 ? m1932 != 2 ? m1932 != 3 ? m1932 != 4 ? "SDK_SERVICE_UPLOAD" : "PACKAGE_SERVICE_UPLOAD" : "SDK_CLIENT_UPLOAD" : "GA_UPLOAD" : "UPLOAD_TYPE_UNKNOWN");
                    m10260(m3020, 2, "client_upload_eligibility", AbstractC0001.m10(m1386.m1930()));
                    int m1931 = m1386.m1931();
                    m10260(m3020, 2, "service_upload_eligibility", m1931 != 1 ? m1931 != 2 ? m1931 != 3 ? m1931 != 4 ? m1931 != 5 ? "NON_PLAY_MISSING_SGTM_SERVER_URL" : "MISSING_SGTM_PROXY_INFO" : "MISSING_SGTM_SETTINGS" : "NOT_IN_ROLLOUT" : "SERVICE_UPLOAD_ELIGIBLE" : "SERVICE_UPLOAD_ELIGIBILITY_UNKNOWN");
                    m10272(2, m3020);
                    m3020.append("}\n");
                }
                if (c0311.m1376()) {
                    C0471 m1459 = c0311.m1459();
                    m10272(2, m3020);
                    m3020.append("consent_info_extra {\n");
                    for (C0498 c0498 : m1459.m1907()) {
                        m10272(3, m3020);
                        m3020.append("limited_data_modes {\n");
                        int m1952 = c0498.m1952();
                        m10260(m3020, 3, "type", m1952 != 1 ? m1952 != 2 ? m1952 != 3 ? m1952 != 4 ? "AD_PERSONALIZATION" : "AD_USER_DATA" : "ANALYTICS_STORAGE" : "AD_STORAGE" : "CONSENT_TYPE_UNSPECIFIED");
                        int m1953 = c0498.m1953();
                        m10260(m3020, 3, "mode", m1953 != 1 ? m1953 != 2 ? "NO_DATA_MODE" : "LIMITED_MODE" : "NOT_LIMITED");
                        m10272(3, m3020);
                        m3020.append("}\n");
                    }
                    m10272(2, m3020);
                    m3020.append("}\n");
                }
                InterfaceC0247<C0308> m1380 = c0311.m1380();
                if (m1380 != null) {
                    for (C0308 c0308 : m1380) {
                        if (c0308 != null) {
                            m10272(2, m3020);
                            m3020.append("user_property {\n");
                            m10260(m3020, 2, "set_timestamp_millis", c0308.m1336() ? Long.valueOf(c0308.m1350()) : null);
                            m10260(m3020, 2, "name", c5286.m10469(c0308.m1352()));
                            m10260(m3020, 2, "string_value", c0308.m1343());
                            m10260(m3020, 2, "int_value", c0308.m1338() ? Long.valueOf(c0308.m1334()) : null);
                            m10260(m3020, 2, "double_value", c0308.m1335() ? Double.valueOf(c0308.m1351()) : null);
                            m10272(2, m3020);
                            m3020.append("}\n");
                        }
                    }
                }
                InterfaceC0247<C0358> m1414 = c0311.m1414();
                if (m1414 != null) {
                    for (C0358 c0358 : m1414) {
                        if (c0358 != null) {
                            m10272(2, m3020);
                            m3020.append("audience_membership {\n");
                            if (c0358.m1674()) {
                                m10260(m3020, 2, "audience_id", Integer.valueOf(c0358.m1680()));
                            }
                            if (c0358.m1675()) {
                                m10260(m3020, 2, "new_audience", Boolean.valueOf(c0358.m1672()));
                            }
                            m10276(m3020, "current_data", c0358.m1682());
                            if (c0358.m1679()) {
                                m10276(m3020, "previous_data", c0358.m1678());
                            }
                            m10272(2, m3020);
                            m3020.append("}\n");
                        }
                    }
                }
                List<C0414> m1473 = c0311.m1473();
                if (m1473 != null) {
                    for (C0414 c0414 : m1473) {
                        if (c0414 != null) {
                            m10272(2, m3020);
                            m3020.append("event {\n");
                            m10260(m3020, 2, "name", c5286.m10473(c0414.m1827()));
                            if (c0414.m1826()) {
                                m10260(m3020, 2, "timestamp_millis", Long.valueOf(c0414.m1820()));
                            }
                            if (c0414.m1816()) {
                                m10260(m3020, 2, "previous_timestamp_millis", Long.valueOf(c0414.m1828()));
                            }
                            if (c0414.m1822()) {
                                m10260(m3020, 2, "count", Integer.valueOf(c0414.m1817()));
                            }
                            if (c0414.m1834() != 0) {
                                m10283(m3020, 2, (InterfaceC0247) c0414.m1818());
                            }
                            m10272(2, m3020);
                            m3020.append("}\n");
                        }
                    }
                }
                m10272(1, m3020);
                m3020.append("}\n");
            }
        }
        m3020.append("} // End-of-batch\n");
        return m3020.toString();
    }

    /* renamed from: ˆˑ, reason: contains not printable characters */
    public void m10280(C0511 c0511, Object obj) {
        AbstractC3659.m7687(obj);
        c0511.m1947();
        ((C0308) c0511.f2260).m1348();
        c0511.m1947();
        ((C0308) c0511.f2260).m1346();
        c0511.m1947();
        ((C0308) c0511.f2260).m1349();
        if (obj instanceof String) {
            c0511.m1947();
            ((C0308) c0511.f2260).m1340((String) obj);
        } else if (obj instanceof Long) {
            long longValue = ((Long) obj).longValue();
            c0511.m1947();
            ((C0308) c0511.f2260).m1342(longValue);
        } else if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            c0511.m1947();
            ((C0308) c0511.f2260).m1341(doubleValue);
        } else {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10216(obj, "Ignoring invalid (type) user attribute value");
        }
    }

    /* renamed from: ˆﹳ, reason: contains not printable characters */
    public C0414 m10281(C3488 c3488) {
        C0466 m1815 = C0414.m1815();
        long j = c3488.f13684;
        m1815.m1947();
        ((C0414) m1815.f2260).m1824(j);
        C5294 c5294 = (C5294) c3488.f13687;
        Objects.requireNonNull(c5294);
        Bundle bundle = c5294.f19968;
        for (String str : bundle.keySet()) {
            C0341 m1613 = C0348.m1613();
            m1613.m1582(str);
            Object obj = bundle.get(str);
            AbstractC3659.m7687(obj);
            m10289(m1613, obj);
            m1815.m1897(m1613);
        }
        String str2 = (String) c3488.f13690;
        if (!TextUtils.isEmpty(str2) && bundle.get("_o") == null) {
            C0341 m16132 = C0348.m1613();
            m16132.m1582("_o");
            m16132.m1583(str2);
            m1815.m1893((C0348) m16132.m1948());
        }
        return (C0414) m1815.m1948();
    }

    @Override // p447.AbstractC5277
    /* renamed from: ˋˊ */
    public final void mo10191() {
        int i = this.f19691;
    }

    /* renamed from: ˎʼ, reason: contains not printable characters */
    public byte[] m10282(byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10216(e, "Failed to gzip content");
            throw e;
        }
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public void m10283(StringBuilder sb, int i, InterfaceC0247 interfaceC0247) {
        if (interfaceC0247 == null) {
            return;
        }
        int i2 = i + 1;
        Iterator it = interfaceC0247.iterator();
        while (it.hasNext()) {
            C0348 c0348 = (C0348) it.next();
            if (c0348 != null) {
                m10272(i2, sb);
                sb.append("param {\n");
                m10260(sb, i2, "name", c0348.m1616() ? ((C5322) ((ᵎﹶ) this).ʾˋ).f20199.m10472(c0348.m1633()) : null);
                m10260(sb, i2, "string_value", c0348.m1635() ? c0348.m1625() : null);
                m10260(sb, i2, "int_value", c0348.m1624() ? Long.valueOf(c0348.m1618()) : null);
                m10260(sb, i2, "double_value", c0348.m1620() ? Double.valueOf(c0348.m1615()) : null);
                if (c0348.m1619() > 0) {
                    m10283(sb, i2, (InterfaceC0247) c0348.m1634());
                }
                m10272(i2, sb);
                sb.append("}\n");
            }
        }
    }

    /* renamed from: ˎـ, reason: contains not printable characters */
    public void m10284(String str, C5236 c5236, C0347 c0347, InterfaceC5319 interfaceC5319) {
        String str2;
        URL url;
        byte[] m2019;
        C5215 c5215;
        Map map;
        String str3 = c5236.f19686;
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        ⁱᴵ();
        m10466();
        try {
            url = new URI(str3).toURL();
            this.f19910.m10653();
            m2019 = c0347.m2019();
            c5215 = c5322.f20200;
            C5322.m10556(c5215);
            map = c5236.f19685;
            if (map == null) {
                map = Collections.EMPTY_MAP;
            }
            str2 = str;
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused) {
            str2 = str;
        }
        try {
            c5215.m10202(new RunnableC5259(this, str2, url, m2019, map, interfaceC5319));
        } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused2) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10214(C5344.m10722(str2), str3, "Failed to parse URL. Not uploading MeasurementBatch. appId");
        }
    }

    /* renamed from: ˑﹶ, reason: contains not printable characters */
    public long m10285(byte[] bArr) {
        AbstractC3659.m7687(bArr);
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5339 c5339 = c5322.f20208;
        C5322.m10560(c5339);
        c5339.ⁱᴵ();
        MessageDigest m10672 = C5339.m10672();
        if (m10672 != null) {
            return C5339.m10660(m10672.digest(bArr));
        }
        C5344 c5344 = c5322.f20193;
        C5322.m10556(c5344);
        c5344.f20343.m10217("Failed to get MD5");
        return 0L;
    }

    /* renamed from: יʿ, reason: contains not printable characters */
    public List m10286(InterfaceC0378 interfaceC0378, List list) {
        int i;
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        ArrayList arrayList = new ArrayList(interfaceC0378);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            if (num.intValue() < 0) {
                C5344 c5344 = c5322.f20193;
                C5322.m10556(c5344);
                c5344.f20348.m10216(num, "Ignoring negative bit index to be cleared");
            } else {
                int intValue = num.intValue() / 64;
                if (intValue >= arrayList.size()) {
                    C5344 c53442 = c5322.f20193;
                    C5322.m10556(c53442);
                    c53442.f20348.m10214(num, Integer.valueOf(arrayList.size()), "Ignoring bit index greater than bitSet size");
                } else {
                    arrayList.set(intValue, Long.valueOf(((Long) arrayList.get(intValue)).longValue() & (~(1 << (num.intValue() % 64)))));
                }
            }
        }
        int size = arrayList.size();
        int size2 = arrayList.size() - 1;
        while (true) {
            int i2 = size2;
            i = size;
            size = i2;
            if (size < 0 || ((Long) arrayList.get(size)).longValue() != 0) {
                break;
            }
            size2 = size - 1;
        }
        return arrayList.subList(0, i);
    }

    /* renamed from: ـʻ, reason: contains not printable characters */
    public boolean m10287() {
        m10466();
        ConnectivityManager connectivityManager = (ConnectivityManager) ((C5322) ((ᵎﹶ) this).ʾˋ).f20184.getSystemService("connectivity");
        NetworkInfo networkInfo = null;
        if (connectivityManager != null) {
            try {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    /* renamed from: ᴵٴ, reason: contains not printable characters */
    public boolean m10288(long j, long j2) {
        if (j == 0 || j2 <= 0) {
            return true;
        }
        ((C5322) ((ᵎﹶ) this).ʾˋ).f20206.getClass();
        return Math.abs(System.currentTimeMillis() - j) > j2;
    }

    /* renamed from: ᵢʻ, reason: contains not printable characters */
    public void m10289(C0341 c0341, Object obj) {
        c0341.m1947();
        ((C0348) c0341.f2260).m1629();
        c0341.m1947();
        ((C0348) c0341.f2260).m1628();
        c0341.m1947();
        ((C0348) c0341.f2260).m1631();
        c0341.m1947();
        ((C0348) c0341.f2260).m1632();
        if (obj instanceof String) {
            c0341.m1583((String) obj);
            return;
        }
        if (obj instanceof Long) {
            c0341.m1584(((Long) obj).longValue());
            return;
        }
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            c0341.m1947();
            ((C0348) c0341.f2260).m1622(doubleValue);
            return;
        }
        if (!(obj instanceof Bundle[])) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10216(obj, "Ignoring invalid (type) event param value");
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Bundle bundle : (Bundle[]) obj) {
            if (bundle != null) {
                C0341 m1613 = C0348.m1613();
                for (String str : bundle.keySet()) {
                    C0341 m16132 = C0348.m1613();
                    m16132.m1582(str);
                    Object obj2 = bundle.get(str);
                    if (obj2 instanceof Long) {
                        m16132.m1584(((Long) obj2).longValue());
                    } else if (obj2 instanceof String) {
                        m16132.m1583((String) obj2);
                    } else if (obj2 instanceof Double) {
                        double doubleValue2 = ((Double) obj2).doubleValue();
                        m16132.m1947();
                        ((C0348) m16132.f2260).m1622(doubleValue2);
                    }
                    m1613.m1947();
                    ((C0348) m1613.f2260).m1627((C0348) m16132.m1948());
                }
                if (((C0348) m1613.f2260).m1619() > 0) {
                    arrayList.add((C0348) m1613.m1948());
                }
            }
        }
        c0341.m1947();
        ((C0348) c0341.f2260).m1630(arrayList);
    }

    /* renamed from: ᵢᐧ, reason: contains not printable characters */
    public Parcelable m10290(byte[] bArr, Parcelable.Creator creator) {
        Parcelable parcelable = null;
        if (bArr == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            try {
                obtain.unmarshall(bArr, 0, bArr.length);
                obtain.setDataPosition(0);
                parcelable = (Parcelable) creator.createFromParcel(obtain);
            } catch (SafeParcelReader$ParseException unused) {
                C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
                C5322.m10556(c5344);
                c5344.f20343.m10217("Failed to load parcelable from buffer");
            }
            return parcelable;
        } finally {
            obtain.recycle();
        }
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public void m10291(StringBuilder sb, int i, C0433 c0433) {
        String str;
        if (c0433 == null) {
            return;
        }
        m10272(i, sb);
        sb.append("filter {\n");
        if (c0433.m1865()) {
            m10260(sb, i, "complement", Boolean.valueOf(c0433.m1864()));
        }
        if (c0433.m1861()) {
            m10260(sb, i, "param_name", ((C5322) ((ᵎﹶ) this).ʾˋ).f20199.m10472(c0433.m1867()));
        }
        if (c0433.m1863()) {
            int i2 = i + 1;
            C0397 m1868 = c0433.m1868();
            if (m1868 != null) {
                m10272(i2, sb);
                sb.append("string_filter {\n");
                if (m1868.m1786()) {
                    switch (m1868.m1788()) {
                        case 1:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                        case 2:
                            str = "REGEXP";
                            break;
                        case 3:
                            str = "BEGINS_WITH";
                            break;
                        case 4:
                            str = "ENDS_WITH";
                            break;
                        case 5:
                            str = "PARTIAL";
                            break;
                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                            str = "EXACT";
                            break;
                        default:
                            str = "IN_LIST";
                            break;
                    }
                    m10260(sb, i2, "match_type", str);
                }
                if (m1868.m1791()) {
                    m10260(sb, i2, "expression", m1868.m1792());
                }
                if (m1868.m1790()) {
                    m10260(sb, i2, "case_sensitive", Boolean.valueOf(m1868.m1789()));
                }
                if (m1868.m1785() > 0) {
                    m10272(i + 2, sb);
                    sb.append("expression_list {\n");
                    for (String str2 : m1868.m1787()) {
                        m10272(i + 3, sb);
                        sb.append(str2);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                m10272(i2, sb);
                sb.append("}\n");
            }
        }
        if (c0433.m1869()) {
            m10262(sb, i + 1, "number_filter", c0433.m1866());
        }
        m10272(i, sb);
        sb.append("}\n");
    }
}
