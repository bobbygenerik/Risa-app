package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* renamed from: com.google.android.gms.internal.measurement.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0316 implements Iterable, InterfaceC0457, InterfaceC0309 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final TreeMap f1953;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final TreeMap f1954;

    public C0316() {
        this.f1953 = new TreeMap();
        this.f1954 = new TreeMap();
    }

    public C0316(List list) {
        this();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                m1552(i, (InterfaceC0457) list.get(i));
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0316)) {
            return false;
        }
        C0316 c0316 = (C0316) obj;
        if (m1554() != c0316.m1554()) {
            return false;
        }
        TreeMap treeMap = this.f1953;
        if (treeMap.isEmpty()) {
            return c0316.f1953.isEmpty();
        }
        for (int intValue = ((Integer) treeMap.firstKey()).intValue(); intValue <= ((Integer) treeMap.lastKey()).intValue(); intValue++) {
            if (!m1559(intValue).equals(c0316.m1559(intValue))) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.f1953.hashCode() * 31;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C0264(2, this);
    }

    public final String toString() {
        return m1555(",");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0309
    /* renamed from: ʼˎ */
    public final void mo1353(String str, InterfaceC0457 interfaceC0457) {
        TreeMap treeMap = this.f1954;
        if (interfaceC0457 == null) {
            treeMap.remove(str);
        } else {
            treeMap.put(str, interfaceC0457);
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m1552(int i, InterfaceC0457 interfaceC0457) {
        if (i > 32468) {
            throw new IllegalStateException("Array too large");
        }
        if (i < 0) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 21);
            sb.append("Out of bounds index: ");
            sb.append(i);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        TreeMap treeMap = this.f1953;
        if (interfaceC0457 == null) {
            treeMap.remove(Integer.valueOf(i));
        } else {
            treeMap.put(Integer.valueOf(i), interfaceC0457);
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final InterfaceC0457 mo1553() {
        C0316 c0316 = new C0316();
        for (Map.Entry entry : this.f1953.entrySet()) {
            boolean z = entry.getValue() instanceof InterfaceC0309;
            TreeMap treeMap = c0316.f1953;
            if (z) {
                treeMap.put((Integer) entry.getKey(), (InterfaceC0457) entry.getValue());
            } else {
                treeMap.put((Integer) entry.getKey(), ((InterfaceC0457) entry.getValue()).mo1553());
            }
        }
        return c0316;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0309
    /* renamed from: ˈ */
    public final InterfaceC0457 mo1354(String str) {
        InterfaceC0457 interfaceC0457;
        return "length".equals(str) ? new C0453(Double.valueOf(m1554())) : (!mo1355(str) || (interfaceC0457 = (InterfaceC0457) this.f1954.get(str)) == null) ? InterfaceC0457.f2214 : interfaceC0457;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final int m1554() {
        TreeMap treeMap = this.f1953;
        if (treeMap.isEmpty()) {
            return 0;
        }
        return ((Integer) treeMap.lastKey()).intValue() + 1;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final String m1555(String str) {
        String str2;
        StringBuilder sb = new StringBuilder();
        if (!this.f1953.isEmpty()) {
            int i = 0;
            while (true) {
                str2 = str == null ? "" : str;
                if (i >= m1554()) {
                    break;
                }
                InterfaceC0457 m1559 = m1559(i);
                sb.append(str2);
                if (!(m1559 instanceof C0494) && !(m1559 instanceof C0510)) {
                    sb.append(m1559.mo1558());
                }
                i++;
            }
            sb.delete(0, str2.length());
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0309
    /* renamed from: ˑﹳ */
    public final boolean mo1355(String str) {
        return "length".equals(str) || this.f1954.containsKey(str);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m1556(int i) {
        TreeMap treeMap = this.f1953;
        int intValue = ((Integer) treeMap.lastKey()).intValue();
        if (i > intValue || i < 0) {
            return;
        }
        treeMap.remove(Integer.valueOf(i));
        if (i == intValue) {
            int i2 = i - 1;
            Integer valueOf = Integer.valueOf(i2);
            if (treeMap.containsKey(valueOf) || i2 < 0) {
                return;
            }
            treeMap.put(valueOf, InterfaceC0457.f2214);
            return;
        }
        while (true) {
            i++;
            if (i > ((Integer) treeMap.lastKey()).intValue()) {
                return;
            }
            Integer valueOf2 = Integer.valueOf(i);
            InterfaceC0457 interfaceC0457 = (InterfaceC0457) treeMap.get(valueOf2);
            if (interfaceC0457 != null) {
                treeMap.put(Integer.valueOf(i - 1), interfaceC0457);
                treeMap.remove(valueOf2);
            }
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final List m1557() {
        ArrayList arrayList = new ArrayList(m1554());
        for (int i = 0; i < m1554(); i++) {
            arrayList.add(m1559(i));
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String mo1558() {
        return m1555(",");
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final InterfaceC0457 m1559(int i) {
        InterfaceC0457 interfaceC0457;
        if (i < m1554()) {
            return (!m1561(i) || (interfaceC0457 = (InterfaceC0457) this.f1953.get(Integer.valueOf(i))) == null) ? InterfaceC0457.f2214 : interfaceC0457;
        }
        throw new IndexOutOfBoundsException("Attempting to get element outside of current array");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02e5, code lost:
    
        if (ˈˊ.ˉˆ.ᵔי(r7, r2, (com.google.android.gms.internal.measurement.C0329) r0, java.lang.Boolean.FALSE, java.lang.Boolean.TRUE).m1554() == r7.m1554()) goto L168;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:44:0x0126. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02f1  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x046c  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x053b  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x05e6  */
    /* JADX WARN: Removed duplicated region for block: B:295:0x061a  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x0749  */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0757  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x07c0  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x0827  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x083f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01f7  */
    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.measurement.InterfaceC0457 mo1560(java.lang.String r38, ˏˆ.ﹳٴ r39, java.util.ArrayList r40) {
        /*
            Method dump skipped, instructions count: 2202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C0316.mo1560(java.lang.String, ˏˆ.ﹳٴ, java.util.ArrayList):com.google.android.gms.internal.measurement.ᵔʾ");
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean m1561(int i) {
        if (i >= 0) {
            TreeMap treeMap = this.f1953;
            if (i <= ((Integer) treeMap.lastKey()).intValue()) {
                return treeMap.containsKey(Integer.valueOf(i));
            }
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 21);
        sb.append("Out of bounds index: ");
        sb.append(i);
        throw new IndexOutOfBoundsException(sb.toString());
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Double mo1562() {
        TreeMap treeMap = this.f1953;
        return treeMap.size() == 1 ? m1559(0).mo1562() : treeMap.size() <= 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Boolean mo1563() {
        return Boolean.TRUE;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final Iterator m1564() {
        return this.f1953.keySet().iterator();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0457
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Iterator mo1565() {
        return new C0271(this, this.f1953.keySet().iterator(), this.f1954.keySet().iterator());
    }
}
