package p447;

import com.google.android.gms.internal.measurement.AbstractC0269;
import com.google.android.gms.internal.measurement.C0375;
import com.google.android.gms.internal.measurement.C0397;
import j$.util.DesugarCollections;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import p223.C3056;
import p296.AbstractC3659;

/* renamed from: ﹶﾞ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5342 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final AbstractC0269 f20327;

    /* renamed from: ʽ, reason: contains not printable characters */
    public Boolean f20328;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Boolean f20329;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Long f20330;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final /* synthetic */ int f20331;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final /* synthetic */ C5226 f20332;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f20333;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f20334;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Long f20335;

    public C5342(C5226 c5226, String str, int i, AbstractC0269 abstractC0269, int i2) {
        this.f20331 = i2;
        this.f20332 = c5226;
        this.f20334 = str;
        this.f20333 = i;
        this.f20327 = abstractC0269;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static Boolean m10717(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: ˈ, reason: contains not printable characters */
    public static Boolean m10718(String str, C0397 c0397, C5344 c5344) {
        List m1787;
        AbstractC3659.m7687(c0397);
        if (str != null && c0397.m1786() && c0397.m1788() != 1 && (c0397.m1788() != 7 ? c0397.m1791() : c0397.m1785() != 0)) {
            int m1788 = c0397.m1788();
            boolean m1789 = c0397.m1789();
            String m1792 = (m1789 || m1788 == 2 || m1788 == 7) ? c0397.m1792() : c0397.m1792().toUpperCase(Locale.ENGLISH);
            if (c0397.m1785() == 0) {
                m1787 = null;
            } else {
                m1787 = c0397.m1787();
                if (!m1789) {
                    ArrayList arrayList = new ArrayList(m1787.size());
                    Iterator it = m1787.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((String) it.next()).toUpperCase(Locale.ENGLISH));
                    }
                    m1787 = DesugarCollections.unmodifiableList(arrayList);
                }
            }
            String str2 = m1788 == 2 ? m1792 : null;
            if (m1788 != 7 ? m1792 != null : m1787 != null && !m1787.isEmpty()) {
                if (!m1789 && m1788 != 2) {
                    str = str.toUpperCase(Locale.ENGLISH);
                }
                switch (m1788 - 1) {
                    case 1:
                        if (str2 != null) {
                            try {
                                return Boolean.valueOf(Pattern.compile(str2, true != m1789 ? 66 : 0).matcher(str).matches());
                            } catch (PatternSyntaxException unused) {
                                if (c5344 != null) {
                                    c5344.f20348.m10216(str2, "Invalid regular expression in REGEXP audience filter. expression");
                                    break;
                                }
                            }
                        }
                        break;
                    case 2:
                        return Boolean.valueOf(str.startsWith(m1792));
                    case 3:
                        return Boolean.valueOf(str.endsWith(m1792));
                    case 4:
                        return Boolean.valueOf(str.contains(m1792));
                    case 5:
                        return Boolean.valueOf(str.equals(m1792));
                    case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                        if (m1787 != null) {
                            return Boolean.valueOf(m1787.contains(str));
                        }
                        break;
                }
            }
        }
        return null;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static Boolean m10719(BigDecimal bigDecimal, C0375 c0375, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        AbstractC3659.m7687(c0375);
        if (c0375.m1713()) {
            if (c0375.m1720() != 1 && (c0375.m1720() != 5 ? c0375.m1717() : c0375.m1714() && c0375.m1718())) {
                int m1720 = c0375.m1720();
                try {
                    if (c0375.m1720() == 5) {
                        if (C5239.m10274(c0375.m1712()) && C5239.m10274(c0375.m1715())) {
                            BigDecimal bigDecimal5 = new BigDecimal(c0375.m1712());
                            bigDecimal4 = new BigDecimal(c0375.m1715());
                            bigDecimal3 = bigDecimal5;
                            bigDecimal2 = null;
                        }
                    } else if (C5239.m10274(c0375.m1716())) {
                        bigDecimal2 = new BigDecimal(c0375.m1716());
                        bigDecimal3 = null;
                        bigDecimal4 = null;
                    }
                    if (m1720 != 5 ? bigDecimal2 != null : bigDecimal3 != null) {
                        int i = m1720 - 1;
                        if (i != 1) {
                            if (i != 2) {
                                if (i != 3) {
                                    if (i == 4 && bigDecimal3 != null) {
                                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal3) >= 0 && bigDecimal.compareTo(bigDecimal4) <= 0);
                                    }
                                } else if (bigDecimal2 != null) {
                                    if (d != 0.0d) {
                                        return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) > 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) < 0);
                                    }
                                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                                }
                            } else if (bigDecimal2 != null) {
                                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                            }
                        } else if (bigDecimal2 != null) {
                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0179 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0171  */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m10720(java.lang.Long r15, java.lang.Long r16, com.google.android.gms.internal.measurement.C0308 r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5342.m10720(java.lang.Long, java.lang.Long, com.google.android.gms.internal.measurement.ˆʻ, boolean):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:153:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03c9 A[EDGE_INSN: B:160:0x03c9->B:52:0x03c9 BREAK  A[LOOP:3: B:132:0x0246->B:157:0x0246], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x03da A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x03d1  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m10721(java.lang.Long r22, java.lang.Long r23, com.google.android.gms.internal.measurement.C0414 r24, long r25, p447.C5333 r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 1085
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5342.m10721(java.lang.Long, java.lang.Long, com.google.android.gms.internal.measurement.ٴʿ, long, ﹶﾞ.ᵔﹳ, boolean):boolean");
    }
}
