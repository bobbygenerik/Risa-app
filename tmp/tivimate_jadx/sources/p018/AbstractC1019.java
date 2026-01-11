package p018;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import p065.C1603;
import p072.AbstractC1632;
import p072.C1633;
import p072.C1635;
import p072.C1636;
import p072.C1638;

/* renamed from: ʼʼ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1019 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C1020 f4034 = new Object();

    /* JADX WARN: Type inference failed for: r10v9, types: [java.lang.Object, ʼʼ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r12v8, types: [java.lang.Object, ʼʼ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, ʼʼ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.lang.Object, ʼʼ.ⁱˊ] */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static void m3333(int i, C1603 c1603, C1635 c1635) {
        C1633 c1633;
        C1633 c16332;
        C1633 c16333;
        C1633 c16334;
        if (c1635.f6563) {
            return;
        }
        if (!(c1635 instanceof C1636) && c1635.m4468() && m3340(c1635)) {
            C1636.m4474(c1635, c1603, new Object());
        }
        C1633 mo4437 = c1635.mo4437(3);
        C1633 mo44372 = c1635.mo4437(5);
        int m4419 = mo4437.m4419();
        int m44192 = mo44372.m4419();
        HashSet hashSet = mo4437.f6506;
        if (hashSet != null && mo4437.f6500) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                C1633 c16335 = (C1633) it.next();
                C1635 c16352 = c16335.f6501;
                int i2 = i + 1;
                boolean m3340 = m3340(c16352);
                C1633 c16336 = c16352.f6548;
                C1633 c16337 = c16352.f6564;
                if (c16352.m4468() && m3340) {
                    C1636.m4474(c16352, c1603, new Object());
                }
                boolean z = (c16335 == c16336 && (c16334 = c16337.f6507) != null && c16334.f6500) || (c16335 == c16337 && (c16333 = c16336.f6507) != null && c16333.f6500);
                int i3 = c16352.f6546[1];
                if (i3 != 3 || m3340) {
                    if (!c16352.m4468()) {
                        if (c16335 == c16336 && c16337.f6507 == null) {
                            int m4420 = c16336.m4420() + m4419;
                            c16352.m4460(m4420, c16352.m4457() + m4420);
                            m3333(i2, c1603, c16352);
                        } else if (c16335 == c16337 && c16336.f6507 == null) {
                            int m44202 = m4419 - c16337.m4420();
                            c16352.m4460(m44202 - c16352.m4457(), m44202);
                            m3333(i2, c1603, c16352);
                        } else if (z && !c16352.m4436()) {
                            m3341(i2, c1603, c16352);
                        }
                    }
                } else if (i3 == 3 && c16352.f6512 >= 0 && c16352.f6520 >= 0 && (c16352.f6536 == 8 || (c16352.f6543 == 0 && c16352.f6556 == 0.0f))) {
                    if (!c16352.m4436() && !c16352.f6534 && z && !c16352.m4436()) {
                        m3337(i2, c1635, c1603, c16352);
                    }
                }
            }
        }
        char c = 1;
        if (c1635 instanceof C1638) {
            return;
        }
        HashSet hashSet2 = mo44372.f6506;
        if (hashSet2 != null && mo44372.f6500) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                C1633 c16338 = (C1633) it2.next();
                C1635 c16353 = c16338.f6501;
                int i4 = i + 1;
                boolean m33402 = m3340(c16353);
                C1633 c16339 = c16353.f6548;
                C1633 c163310 = c16353.f6564;
                if (c16353.m4468() && m33402) {
                    C1636.m4474(c16353, c1603, new Object());
                }
                boolean z2 = (c16338 == c16339 && (c16332 = c163310.f6507) != null && c16332.f6500) || (c16338 == c163310 && (c1633 = c16339.f6507) != null && c1633.f6500);
                int i5 = c16353.f6546[1];
                if (i5 != 3 || m33402) {
                    if (!c16353.m4468()) {
                        if (c16338 == c16339 && c163310.f6507 == null) {
                            int m44203 = c16339.m4420() + m44192;
                            c16353.m4460(m44203, c16353.m4457() + m44203);
                            m3333(i4, c1603, c16353);
                        } else if (c16338 == c163310 && c16339.f6507 == null) {
                            int m44204 = m44192 - c163310.m4420();
                            c16353.m4460(m44204 - c16353.m4457(), m44204);
                            m3333(i4, c1603, c16353);
                        } else if (z2 && !c16353.m4436()) {
                            m3341(i4, c1603, c16353);
                        }
                    }
                } else if (i5 == 3 && c16353.f6512 >= 0 && c16353.f6520 >= 0 && (c16353.f6536 == 8 || (c16353.f6543 == 0 && c16353.f6556 == 0.0f))) {
                    if (!c16353.m4436() && !c16353.f6534 && z2 && !c16353.m4436()) {
                        m3337(i4, c1635, c1603, c16353);
                    }
                }
            }
        }
        C1633 mo44373 = c1635.mo4437(6);
        if (mo44373.f6506 != null && mo44373.f6500) {
            int m44193 = mo44373.m4419();
            Iterator it3 = mo44373.f6506.iterator();
            while (it3.hasNext()) {
                C1633 c163311 = (C1633) it3.next();
                C1635 c16354 = c163311.f6501;
                int i6 = i + 1;
                boolean m33403 = m3340(c16354);
                C1633 c163312 = c16354.f6524;
                if (c16354.m4468() && m33403) {
                    C1636.m4474(c16354, c1603, new Object());
                }
                if (c16354.f6546[c == true ? 1 : 0] != 3 || m33403) {
                    if (c16354.m4468()) {
                        continue;
                    } else if (c163311 == c163312) {
                        int m44205 = c163311.m4420() + m44193;
                        if (c16354.f6557) {
                            int i7 = m44205 - c16354.f6560;
                            int i8 = c16354.f6529 + i7;
                            c16354.f6522 = i7;
                            c16354.f6548.m4426(i7);
                            c16354.f6564.m4426(i8);
                            c163312.m4426(m44205);
                            c16354.f6575 = c == true ? 1 : 0;
                        }
                        m3333(i6, c1603, c16354);
                    }
                }
                c = 1;
            }
        }
        c1635.f6563 = true;
    }

    /* JADX WARN: Type inference failed for: r11v8, types: [java.lang.Object, ʼʼ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r12v8, types: [java.lang.Object, ʼʼ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.lang.Object, ʼʼ.ⁱˊ] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m3334(int i, C1603 c1603, C1635 c1635, boolean z) {
        C1633 c1633;
        C1633 c16332;
        boolean z2;
        C1633 c16333;
        C1633 c16334;
        if (c1635.f6530) {
            return;
        }
        if (!(c1635 instanceof C1636) && c1635.m4468() && m3340(c1635)) {
            C1636.m4474(c1635, c1603, new Object());
        }
        C1633 mo4437 = c1635.mo4437(2);
        C1633 mo44372 = c1635.mo4437(4);
        int m4419 = mo4437.m4419();
        int m44192 = mo44372.m4419();
        HashSet hashSet = mo4437.f6506;
        if (hashSet != null && mo4437.f6500) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                C1633 c16335 = (C1633) it.next();
                C1635 c16352 = c16335.f6501;
                int i2 = i + 1;
                boolean m3340 = m3340(c16352);
                C1633 c16336 = c16352.f6561;
                C1633 c16337 = c16352.f6559;
                if (c16352.m4468() && m3340) {
                    z2 = true;
                    C1636.m4474(c16352, c1603, new Object());
                } else {
                    z2 = true;
                }
                boolean z3 = ((c16335 == c16336 && (c16334 = c16337.f6507) != null && c16334.f6500) || (c16335 == c16337 && (c16333 = c16336.f6507) != null && c16333.f6500)) ? z2 : false;
                int i3 = c16352.f6546[0];
                if (i3 != 3 || m3340) {
                    if (!c16352.m4468()) {
                        if (c16335 == c16336 && c16337.f6507 == null) {
                            int m4420 = c16336.m4420() + m4419;
                            c16352.m4456(m4420, c16352.m4467() + m4420);
                            m3334(i2, c1603, c16352, z);
                        } else if (c16335 == c16337 && c16336.f6507 == null) {
                            int m44202 = m4419 - c16337.m4420();
                            c16352.m4456(m44202 - c16352.m4467(), m44202);
                            m3334(i2, c1603, c16352, z);
                        } else if (z3 && !c16352.m4442()) {
                            m3335(i2, c1603, c16352, z);
                        }
                    }
                } else if (i3 == 3 && c16352.f6510 >= 0 && c16352.f6518 >= 0 && (c16352.f6536 == 8 || (c16352.f6572 == 0 && c16352.f6556 == 0.0f))) {
                    if (!c16352.m4442() && !c16352.f6534 && z3 && !c16352.m4442()) {
                        m3336(i2, c1635, c1603, c16352, z);
                    }
                }
            }
        }
        if (c1635 instanceof C1638) {
            return;
        }
        HashSet hashSet2 = mo44372.f6506;
        if (hashSet2 != null && mo44372.f6500) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                C1633 c16338 = (C1633) it2.next();
                C1635 c16353 = c16338.f6501;
                int i4 = i + 1;
                boolean m33402 = m3340(c16353);
                C1633 c16339 = c16353.f6561;
                C1633 c163310 = c16353.f6559;
                if (c16353.m4468() && m33402) {
                    C1636.m4474(c16353, c1603, new Object());
                }
                boolean z4 = (c16338 == c16339 && (c16332 = c163310.f6507) != null && c16332.f6500) || (c16338 == c163310 && (c1633 = c16339.f6507) != null && c1633.f6500);
                int i5 = c16353.f6546[0];
                if (i5 != 3 || m33402) {
                    if (!c16353.m4468()) {
                        if (c16338 == c16339 && c163310.f6507 == null) {
                            int m44203 = c16339.m4420() + m44192;
                            c16353.m4456(m44203, c16353.m4467() + m44203);
                            m3334(i4, c1603, c16353, z);
                        } else if (c16338 == c163310 && c16339.f6507 == null) {
                            int m44204 = m44192 - c163310.m4420();
                            c16353.m4456(m44204 - c16353.m4467(), m44204);
                            m3334(i4, c1603, c16353, z);
                        } else if (z4 && !c16353.m4442()) {
                            m3335(i4, c1603, c16353, z);
                        }
                    }
                } else if (i5 == 3 && c16353.f6510 >= 0 && c16353.f6518 >= 0) {
                    if (c16353.f6536 == 8 || (c16353.f6572 == 0 && c16353.f6556 == 0.0f)) {
                        if (!c16353.m4442() && !c16353.f6534 && z4 && !c16353.m4442()) {
                            m3336(i4, c1635, c1603, c16353, z);
                        }
                    }
                }
            }
        }
        c1635.f6530 = true;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m3335(int i, C1603 c1603, C1635 c1635, boolean z) {
        float f = c1635.f6539;
        C1633 c1633 = c1635.f6561;
        int m4419 = c1633.f6507.m4419();
        C1633 c16332 = c1635.f6559;
        int m44192 = c16332.f6507.m4419();
        int m4420 = c1633.m4420() + m4419;
        int m44202 = m44192 - c16332.m4420();
        if (m4419 == m44192) {
            f = 0.5f;
        } else {
            m4419 = m4420;
            m44192 = m44202;
        }
        int m4467 = c1635.m4467();
        int i2 = (m44192 - m4419) - m4467;
        if (m4419 > m44192) {
            i2 = (m4419 - m44192) - m4467;
        }
        int i3 = ((int) (i2 > 0 ? (f * i2) + 0.5f : f * i2)) + m4419;
        int i4 = i3 + m4467;
        if (m4419 > m44192) {
            i4 = i3 - m4467;
        }
        c1635.m4456(i3, i4);
        m3334(i + 1, c1603, c1635, z);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m3336(int i, C1635 c1635, C1603 c1603, C1635 c16352, boolean z) {
        float f = c16352.f6539;
        C1633 c1633 = c16352.f6561;
        int m4420 = c1633.m4420() + c1633.f6507.m4419();
        C1633 c16332 = c16352.f6559;
        int m4419 = c16332.f6507.m4419() - c16332.m4420();
        if (m4419 >= m4420) {
            int m4467 = c16352.m4467();
            if (c16352.f6536 != 8) {
                int i2 = c16352.f6572;
                if (i2 == 2) {
                    m4467 = (int) (c16352.f6539 * 0.5f * (c1635 instanceof C1636 ? c1635.m4467() : c1635.f6545.m4467()));
                } else if (i2 == 0) {
                    m4467 = m4419 - m4420;
                }
                m4467 = Math.max(c16352.f6518, m4467);
                int i3 = c16352.f6510;
                if (i3 > 0) {
                    m4467 = Math.min(i3, m4467);
                }
            }
            int i4 = m4420 + ((int) ((f * ((m4419 - m4420) - m4467)) + 0.5f));
            c16352.m4456(i4, m4467 + i4);
            m3334(i + 1, c1603, c16352, z);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m3337(int i, C1635 c1635, C1603 c1603, C1635 c16352) {
        float f = c16352.f6554;
        C1633 c1633 = c16352.f6548;
        int m4420 = c1633.m4420() + c1633.f6507.m4419();
        C1633 c16332 = c16352.f6564;
        int m4419 = c16332.f6507.m4419() - c16332.m4420();
        if (m4419 >= m4420) {
            int m4457 = c16352.m4457();
            if (c16352.f6536 != 8) {
                int i2 = c16352.f6543;
                if (i2 == 2) {
                    m4457 = (int) (f * 0.5f * (c1635 instanceof C1636 ? c1635.m4457() : c1635.f6545.m4457()));
                } else if (i2 == 0) {
                    m4457 = m4419 - m4420;
                }
                m4457 = Math.max(c16352.f6520, m4457);
                int i3 = c16352.f6512;
                if (i3 > 0) {
                    m4457 = Math.min(i3, m4457);
                }
            }
            int i4 = m4420 + ((int) ((f * ((m4419 - m4420) - m4457)) + 0.5f));
            c16352.m4460(i4, m4457 + i4);
            m3333(i + 1, c1603, c16352);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static boolean m3338(int i, int i2, int i3, int i4) {
        return (i3 == 1 || i3 == 2 || (i3 == 4 && i != 2)) || (i4 == 1 || i4 == 2 || (i4 == 4 && i2 != 2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [ʼʼ.ᵔʾ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v5, types: [ʼʼ.ᵔʾ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C1018 m3339(C1635 c1635, int i, ArrayList arrayList, C1018 c1018) {
        int i2;
        int i3 = i == 0 ? c1635.f6550 : c1635.f6558;
        if (i3 != -1 && (c1018 == 0 || i3 != c1018.f4032)) {
            int i4 = 0;
            while (true) {
                if (i4 >= arrayList.size()) {
                    break;
                }
                C1018 c10182 = (C1018) arrayList.get(i4);
                if (c10182.f4032 == i3) {
                    if (c1018 != 0) {
                        c1018.m3330(i, c10182);
                        arrayList.remove((Object) c1018);
                    }
                    c1018 = c10182;
                } else {
                    i4++;
                }
            }
        } else if (i3 != -1) {
            return c1018;
        }
        C1018 c10183 = c1018;
        if (c1018 == 0) {
            if (c1635 instanceof AbstractC1632) {
                AbstractC1632 abstractC1632 = (AbstractC1632) c1635;
                int i5 = 0;
                while (true) {
                    if (i5 >= abstractC1632.f6498) {
                        i2 = -1;
                        break;
                    }
                    C1635 c16352 = abstractC1632.f6497[i5];
                    if ((i == 0 && (i2 = c16352.f6550) != -1) || (i == 1 && (i2 = c16352.f6558) != -1)) {
                        break;
                    }
                    i5++;
                }
                if (i2 != -1) {
                    int i6 = 0;
                    while (true) {
                        if (i6 >= arrayList.size()) {
                            break;
                        }
                        C1018 c10184 = (C1018) arrayList.get(i6);
                        if (c10184.f4032 == i2) {
                            c1018 = c10184;
                            break;
                        }
                        i6++;
                    }
                }
            }
            if (c1018 == 0) {
                c1018 = new Object();
                c1018.f4033 = new ArrayList();
                c1018.f4030 = null;
                c1018.f4031 = -1;
                int i7 = C1018.f4028;
                C1018.f4028 = i7 + 1;
                c1018.f4032 = i7;
                c1018.f4029 = i;
            }
            arrayList.add(c1018);
            c10183 = c1018;
        }
        int i8 = c10183.f4032;
        ArrayList arrayList2 = c10183.f4033;
        if (arrayList2.contains(c1635)) {
            return c10183;
        }
        arrayList2.add(c1635);
        if (c1635 instanceof C1638) {
            C1638 c1638 = (C1638) c1635;
            c1638.f6637.m4417(c1638.f6638 == 0 ? 1 : 0, arrayList, c10183);
        }
        if (i == 0) {
            c1635.f6550 = i8;
            c1635.f6561.m4417(i, arrayList, c10183);
            c1635.f6559.m4417(i, arrayList, c10183);
        } else {
            c1635.f6558 = i8;
            c1635.f6548.m4417(i, arrayList, c10183);
            c1635.f6524.m4417(i, arrayList, c10183);
            c1635.f6564.m4417(i, arrayList, c10183);
        }
        c1635.f6541.m4417(i, arrayList, c10183);
        return c10183;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m3340(C1635 c1635) {
        int[] iArr = c1635.f6546;
        int i = iArr[0];
        int i2 = iArr[1];
        C1635 c16352 = c1635.f6545;
        C1636 c1636 = c16352 != null ? (C1636) c16352 : null;
        if (c1636 != null) {
            int i3 = c1636.f6546[0];
        }
        if (c1636 != null) {
            int i4 = c1636.f6546[1];
        }
        boolean z = i == 1 || c1635.mo4441() || i == 2 || (i == 3 && c1635.f6572 == 0 && c1635.f6556 == 0.0f && c1635.m4451(0)) || (i == 3 && c1635.f6572 == 1 && c1635.m4440(0, c1635.m4467()));
        boolean z2 = i2 == 1 || c1635.mo4458() || i2 == 2 || (i2 == 3 && c1635.f6543 == 0 && c1635.f6556 == 0.0f && c1635.m4451(1)) || (i2 == 3 && c1635.f6543 == 1 && c1635.m4440(1, c1635.m4457()));
        return (c1635.f6556 > 0.0f && (z || z2)) || (z && z2);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m3341(int i, C1603 c1603, C1635 c1635) {
        float f = c1635.f6554;
        C1633 c1633 = c1635.f6548;
        int m4419 = c1633.f6507.m4419();
        C1633 c16332 = c1635.f6564;
        int m44192 = c16332.f6507.m4419();
        int m4420 = c1633.m4420() + m4419;
        int m44202 = m44192 - c16332.m4420();
        if (m4419 == m44192) {
            f = 0.5f;
        } else {
            m4419 = m4420;
            m44192 = m44202;
        }
        int m4457 = c1635.m4457();
        int i2 = (m44192 - m4419) - m4457;
        if (m4419 > m44192) {
            i2 = (m4419 - m44192) - m4457;
        }
        int i3 = (int) (i2 > 0 ? (f * i2) + 0.5f : f * i2);
        int i4 = m4419 + i3;
        int i5 = i4 + m4457;
        if (m4419 > m44192) {
            i4 = m4419 - i3;
            i5 = i4 - m4457;
        }
        c1635.m4460(i4, i5);
        m3333(i + 1, c1603, c1635);
    }
}
