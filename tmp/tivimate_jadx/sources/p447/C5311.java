package p447;

import android.os.Bundle;
import java.util.EnumMap;
import java.util.Iterator;

/* renamed from: ﹶﾞ.ᐧˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5311 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C5311 f20017 = new C5311(100);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f20018;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final EnumMap f20019;

    public C5311(int i) {
        EnumMap enumMap = new EnumMap(EnumC5341.class);
        this.f20019 = enumMap;
        EnumC5341 enumC5341 = EnumC5341.f20324;
        EnumC5232 enumC5232 = EnumC5232.f19673;
        enumMap.put((EnumMap) enumC5341, (EnumC5341) enumC5232);
        enumMap.put((EnumMap) EnumC5341.f20321, (EnumC5341) enumC5232);
        this.f20018 = i;
    }

    public C5311(EnumMap enumMap, int i) {
        EnumMap enumMap2 = new EnumMap(EnumC5341.class);
        this.f20019 = enumMap2;
        enumMap2.putAll(enumMap);
        this.f20018 = i;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C5311 m10530(int i, String str) {
        EnumMap enumMap = new EnumMap(EnumC5341.class);
        EnumC5341[] enumC5341Arr = EnumC5238.STORAGE.f19690;
        for (int i2 = 0; i2 < enumC5341Arr.length; i2++) {
            String str2 = str == null ? "" : str;
            EnumC5341 enumC5341 = enumC5341Arr[i2];
            int i3 = i2 + 2;
            if (i3 < str2.length()) {
                enumMap.put((EnumMap) enumC5341, (EnumC5341) m10532(str2.charAt(i3)));
            } else {
                enumMap.put((EnumMap) enumC5341, (EnumC5341) EnumC5232.f19673);
            }
        }
        return new C5311(enumMap, i);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static EnumC5232 m10531(String str) {
        EnumC5232 enumC5232 = EnumC5232.f19673;
        return str == null ? enumC5232 : str.equals("granted") ? EnumC5232.f19674 : str.equals("denied") ? EnumC5232.f19671 : enumC5232;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static EnumC5232 m10532(char c) {
        return c != '+' ? c != '0' ? c != '1' ? EnumC5232.f19673 : EnumC5232.f19674 : EnumC5232.f19671 : EnumC5232.f19670;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static char m10533(EnumC5232 enumC5232) {
        if (enumC5232 == null) {
            return '-';
        }
        int ordinal = enumC5232.ordinal();
        if (ordinal == 1) {
            return '+';
        }
        if (ordinal != 2) {
            return ordinal != 3 ? '-' : '1';
        }
        return '0';
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C5311 m10534(int i, Bundle bundle) {
        if (bundle == null) {
            return new C5311(i);
        }
        EnumMap enumMap = new EnumMap(EnumC5341.class);
        for (EnumC5341 enumC5341 : EnumC5238.STORAGE.f19690) {
            enumMap.put((EnumMap) enumC5341, (EnumC5341) m10531(bundle.getString(enumC5341.f20326)));
        }
        return new C5311(enumMap, i);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m10535(int i) {
        return i != -30 ? i != -20 ? i != -10 ? i != 0 ? i != 30 ? i != 90 ? i != 100 ? "OTHER" : "UNKNOWN" : "REMOTE_CONFIG" : "1P_INIT" : "1P_API" : "MANIFEST" : "API" : "TCF";
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static boolean m10536(int i, int i2) {
        int i3 = -30;
        if (i == -20) {
            if (i2 == -30) {
                return true;
            }
            i = -20;
        }
        if (i != -30) {
            i3 = i;
        } else if (i2 == -20) {
            return true;
        }
        return i3 == i2 || i < i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C5311)) {
            return false;
        }
        C5311 c5311 = (C5311) obj;
        for (EnumC5341 enumC5341 : EnumC5238.STORAGE.f19690) {
            if (this.f20019.get(enumC5341) != c5311.f20019.get(enumC5341)) {
                return false;
            }
        }
        return this.f20018 == c5311.f20018;
    }

    public final int hashCode() {
        Iterator it = this.f20019.values().iterator();
        int i = this.f20018 * 17;
        while (it.hasNext()) {
            i = (i * 31) + ((EnumC5232) it.next()).hashCode();
        }
        return i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(m10535(this.f20018));
        for (EnumC5341 enumC5341 : EnumC5238.STORAGE.f19690) {
            sb.append(",");
            sb.append(enumC5341.f20326);
            sb.append("=");
            EnumC5232 enumC5232 = (EnumC5232) this.f20019.get(enumC5341);
            if (enumC5232 == null) {
                enumC5232 = EnumC5232.f19673;
            }
            sb.append(enumC5232);
        }
        return sb.toString();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean m10537(EnumC5341 enumC5341) {
        return ((EnumC5232) this.f20019.get(enumC5341)) != EnumC5232.f19671;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0045 A[SYNTHETIC] */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p447.C5311 m10538(p447.C5311 r9) {
        /*
            r8 = this;
            java.util.EnumMap r0 = new java.util.EnumMap
            java.lang.Class<ﹶﾞ.ⁱˉ> r1 = p447.EnumC5341.class
            r0.<init>(r1)
            ﹶﾞ.ʾﾞ r1 = p447.EnumC5238.STORAGE
            ﹶﾞ.ⁱˉ[] r1 = r1.f19690
            int r2 = r1.length
            r3 = 0
        Ld:
            if (r3 >= r2) goto L48
            r4 = r1[r3]
            java.util.EnumMap r5 = r8.f20019
            java.lang.Object r5 = r5.get(r4)
            ﹶﾞ.ʽⁱ r5 = (p447.EnumC5232) r5
            java.util.EnumMap r6 = r9.f20019
            java.lang.Object r6 = r6.get(r4)
            ﹶﾞ.ʽⁱ r6 = (p447.EnumC5232) r6
            if (r5 != 0) goto L24
            goto L31
        L24:
            if (r6 == 0) goto L40
            ﹶﾞ.ʽⁱ r7 = p447.EnumC5232.f19673
            if (r5 != r7) goto L2b
            goto L31
        L2b:
            if (r6 == r7) goto L40
            ﹶﾞ.ʽⁱ r7 = p447.EnumC5232.f19670
            if (r5 != r7) goto L33
        L31:
            r5 = r6
            goto L40
        L33:
            if (r6 == r7) goto L40
            ﹶﾞ.ʽⁱ r7 = p447.EnumC5232.f19671
            if (r5 == r7) goto L3f
            if (r6 != r7) goto L3c
            goto L3f
        L3c:
            ﹶﾞ.ʽⁱ r5 = p447.EnumC5232.f19674
            goto L40
        L3f:
            r5 = r7
        L40:
            if (r5 == 0) goto L45
            r0.put(r4, r5)
        L45:
            int r3 = r3 + 1
            goto Ld
        L48:
            ﹶﾞ.ᐧˎ r9 = new ﹶﾞ.ᐧˎ
            r1 = 100
            r9.<init>(r0, r1)
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5311.m10538(ﹶﾞ.ᐧˎ):ﹶﾞ.ᐧˎ");
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C5311 m10539(C5311 c5311) {
        EnumMap enumMap = new EnumMap(EnumC5341.class);
        for (EnumC5341 enumC5341 : EnumC5238.STORAGE.f19690) {
            EnumC5232 enumC5232 = (EnumC5232) this.f20019.get(enumC5341);
            if (enumC5232 == EnumC5232.f19673) {
                enumC5232 = (EnumC5232) c5311.f20019.get(enumC5341);
            }
            if (enumC5232 != null) {
                enumMap.put((EnumMap) enumC5341, (EnumC5341) enumC5232);
            }
        }
        return new C5311(enumMap, this.f20018);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String m10540() {
        StringBuilder sb = new StringBuilder("G1");
        for (EnumC5341 enumC5341 : EnumC5238.STORAGE.f19690) {
            sb.append(m10533((EnumC5232) this.f20019.get(enumC5341)));
        }
        return sb.toString();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String m10541() {
        int ordinal;
        StringBuilder sb = new StringBuilder("G1");
        for (EnumC5341 enumC5341 : EnumC5238.STORAGE.f19690) {
            EnumC5232 enumC5232 = (EnumC5232) this.f20019.get(enumC5341);
            char c = '-';
            if (enumC5232 != null && (ordinal = enumC5232.ordinal()) != 0) {
                if (ordinal != 1) {
                    if (ordinal == 2) {
                        c = '0';
                    } else if (ordinal != 3) {
                    }
                }
                c = '1';
            }
            sb.append(c);
        }
        return sb.toString();
    }
}
