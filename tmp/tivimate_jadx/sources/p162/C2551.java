package p162;

import android.text.SpannableStringBuilder;
import android.util.Pair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;
import p388.C4626;

/* renamed from: ˊـ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2551 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final String f9662;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f9663;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C2551 f9664;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f9665;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public ArrayList f9666;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f9667;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final HashMap f9668;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String[] f9669;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final String f9670;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f9671;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f9672;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final HashMap f9673;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C2554 f9674;

    public C2551(String str, String str2, long j, long j2, C2554 c2554, String[] strArr, String str3, String str4, C2551 c2551) {
        this.f9672 = str;
        this.f9671 = str2;
        this.f9662 = str4;
        this.f9674 = c2554;
        this.f9669 = strArr;
        this.f9663 = str2 != null;
        this.f9665 = j;
        this.f9667 = j2;
        str3.getClass();
        this.f9670 = str3;
        this.f9664 = c2551;
        this.f9668 = new HashMap();
        this.f9673 = new HashMap();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static SpannableStringBuilder m5703(String str, TreeMap treeMap) {
        if (!treeMap.containsKey(str)) {
            C4626 c4626 = new C4626();
            c4626.f17297 = new SpannableStringBuilder();
            c4626.f17296 = null;
            treeMap.put(str, c4626);
        }
        CharSequence charSequence = ((C4626) treeMap.get(str)).f17297;
        charSequence.getClass();
        return (SpannableStringBuilder) charSequence;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2551 m5704(String str) {
        return new C2551(null, str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m5705(long j, boolean z, String str, TreeMap treeMap) {
        boolean z2;
        TreeMap treeMap2;
        long j2;
        HashMap hashMap = this.f9668;
        hashMap.clear();
        HashMap hashMap2 = this.f9673;
        hashMap2.clear();
        String str2 = this.f9672;
        if ("metadata".equals(str2)) {
            return;
        }
        String str3 = this.f9670;
        String str4 = "".equals(str3) ? str : str3;
        if (this.f9663 && z) {
            SpannableStringBuilder m5703 = m5703(str4, treeMap);
            String str5 = this.f9671;
            str5.getClass();
            m5703.append((CharSequence) str5);
            return;
        }
        if ("br".equals(str2) && z) {
            m5703(str4, treeMap).append('\n');
            return;
        }
        if (m5711(j)) {
            for (Map.Entry entry : treeMap.entrySet()) {
                String str6 = (String) entry.getKey();
                CharSequence charSequence = ((C4626) entry.getValue()).f17297;
                charSequence.getClass();
                hashMap.put(str6, Integer.valueOf(charSequence.length()));
            }
            boolean equals = "p".equals(str2);
            for (int i = 0; i < m5706(); i++) {
                C2551 m5710 = m5710(i);
                if (z || equals) {
                    z2 = true;
                    treeMap2 = treeMap;
                    j2 = j;
                } else {
                    z2 = false;
                    j2 = j;
                    treeMap2 = treeMap;
                }
                m5710.m5705(j2, z2, str4, treeMap2);
            }
            if (equals) {
                SpannableStringBuilder m57032 = m5703(str4, treeMap);
                int length = m57032.length() - 1;
                while (length >= 0 && m57032.charAt(length) == ' ') {
                    length--;
                }
                if (length >= 0 && m57032.charAt(length) != '\n') {
                    m57032.append('\n');
                }
            }
            for (Map.Entry entry2 : treeMap.entrySet()) {
                String str7 = (String) entry2.getKey();
                CharSequence charSequence2 = ((C4626) entry2.getValue()).f17297;
                charSequence2.getClass();
                hashMap2.put(str7, Integer.valueOf(charSequence2.length()));
            }
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m5706() {
        ArrayList arrayList = this.f9666;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m5707(TreeSet treeSet, boolean z) {
        String str = this.f9672;
        boolean equals = "p".equals(str);
        boolean equals2 = "div".equals(str);
        if (z || equals || (equals2 && this.f9662 != null)) {
            long j = this.f9665;
            if (j != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.f9667;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.f9666 == null) {
            return;
        }
        for (int i = 0; i < this.f9666.size(); i++) {
            ((C2551) this.f9666.get(i)).m5707(treeSet, z || equals);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m5708(long j, String str, ArrayList arrayList) {
        String str2;
        String str3 = this.f9670;
        if (!"".equals(str3)) {
            str = str3;
        }
        if (m5711(j) && "div".equals(this.f9672) && (str2 = this.f9662) != null) {
            arrayList.add(new Pair(str, str2));
            return;
        }
        for (int i = 0; i < m5706(); i++) {
            m5710(i).m5708(j, str, arrayList);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x02d1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02ae  */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5709(long r21, java.util.Map r23, java.util.HashMap r24, java.lang.String r25, java.util.TreeMap r26) {
        /*
            Method dump skipped, instructions count: 753
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p162.C2551.m5709(long, java.util.Map, java.util.HashMap, java.lang.String, java.util.TreeMap):void");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2551 m5710(int i) {
        ArrayList arrayList = this.f9666;
        if (arrayList != null) {
            return (C2551) arrayList.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m5711(long j) {
        long j2 = this.f9665;
        long j3 = this.f9667;
        if (j2 == -9223372036854775807L && j3 == -9223372036854775807L) {
            return true;
        }
        if (j2 <= j && j3 == -9223372036854775807L) {
            return true;
        }
        if (j2 != -9223372036854775807L || j >= j3) {
            return j2 <= j && j < j3;
        }
        return true;
    }
}
