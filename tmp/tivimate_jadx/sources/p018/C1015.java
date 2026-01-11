package p018;

import android.support.v4.media.session.AbstractC0001;
import java.util.ArrayList;
import java.util.HashSet;
import p065.C1603;
import p072.AbstractC1632;
import p072.C1635;
import p072.C1636;
import p072.C1638;

/* renamed from: ʼʼ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1015 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f4018;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C1636 f4019;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public ArrayList f4020;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C1020 f4021;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public ArrayList f4022;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f4023;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C1636 f4024;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C1603 f4025;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3320() {
        C1636 c1636 = this.f4024;
        ArrayList arrayList = this.f4022;
        ArrayList arrayList2 = this.f4020;
        arrayList2.clear();
        C1636 c16362 = this.f4019;
        c16362.f6525.mo3308();
        c16362.f6542.mo3308();
        arrayList2.add(c16362.f6525);
        arrayList2.add(c16362.f6542);
        ArrayList arrayList3 = c16362.f6580;
        int size = arrayList3.size();
        HashSet hashSet = null;
        int i = 0;
        while (i < size) {
            Object obj = arrayList3.get(i);
            i++;
            C1635 c1635 = (C1635) obj;
            if (c1635 instanceof C1638) {
                AbstractC1014 abstractC1014 = new AbstractC1014(c1635);
                c1635.f6525.mo3308();
                c1635.f6542.mo3308();
                abstractC1014.f4017 = ((C1638) c1635).f6638;
                arrayList2.add(abstractC1014);
            } else {
                if (c1635.m4442()) {
                    if (c1635.f6569 == null) {
                        c1635.f6569 = new C1010(c1635, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(c1635.f6569);
                } else {
                    arrayList2.add(c1635.f6525);
                }
                if (c1635.m4436()) {
                    if (c1635.f6516 == null) {
                        c1635.f6516 = new C1010(c1635, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(c1635.f6516);
                } else {
                    arrayList2.add(c1635.f6542);
                }
                if (c1635 instanceof AbstractC1632) {
                    arrayList2.add(new AbstractC1014(c1635));
                }
            }
        }
        if (hashSet != null) {
            arrayList2.addAll(hashSet);
        }
        int size2 = arrayList2.size();
        int i2 = 0;
        while (i2 < size2) {
            Object obj2 = arrayList2.get(i2);
            i2++;
            ((AbstractC1014) obj2).mo3308();
        }
        int size3 = arrayList2.size();
        int i3 = 0;
        while (i3 < size3) {
            Object obj3 = arrayList2.get(i3);
            i3++;
            AbstractC1014 abstractC10142 = (AbstractC1014) obj3;
            if (abstractC10142.f4015 != c16362) {
                abstractC10142.mo3303();
            }
        }
        arrayList.clear();
        m3322(c1636.f6525, 0, arrayList);
        m3322(c1636.f6542, 1, arrayList);
        this.f4023 = false;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m3321(C1636 c1636, int i) {
        ArrayList arrayList;
        int i2;
        long max;
        float f;
        C1636 c16362 = c1636;
        ArrayList arrayList2 = this.f4022;
        int size = arrayList2.size();
        long j = 0;
        int i3 = 0;
        long j2 = 0;
        while (i3 < size) {
            AbstractC1014 abstractC1014 = ((C1022) arrayList2.get(i3)).f4046;
            if (!(abstractC1014 instanceof C1010) ? !(i != 0 ? (abstractC1014 instanceof C1013) : (abstractC1014 instanceof C1016)) : ((C1010) abstractC1014).f4017 != i) {
                C1023 c1023 = (i == 0 ? c16362.f6525 : c16362.f6542).f4014;
                C1023 c10232 = (i == 0 ? c16362.f6525 : c16362.f6542).f4008;
                C1023 c10233 = abstractC1014.f4014;
                C1023 c10234 = abstractC1014.f4008;
                boolean contains = c10233.f4057.contains(c1023);
                boolean contains2 = c10234.f4057.contains(c10232);
                long mo3309 = abstractC1014.mo3309();
                if (contains && contains2) {
                    long m3342 = C1022.m3342(c10233, j);
                    long m3343 = C1022.m3343(c10234, j);
                    long j3 = m3342 - mo3309;
                    int i4 = c10234.f4058;
                    arrayList = arrayList2;
                    i2 = size;
                    if (j3 >= (-i4)) {
                        j3 += i4;
                    }
                    long j4 = c10233.f4058;
                    long j5 = ((-m3343) - mo3309) - j4;
                    if (j5 >= j4) {
                        j5 -= j4;
                    }
                    C1635 c1635 = abstractC1014.f4015;
                    if (i == 0) {
                        f = c1635.f6539;
                    } else if (i == 1) {
                        f = c1635.f6554;
                    } else {
                        c1635.getClass();
                        f = -1.0f;
                    }
                    float f2 = (float) (f > 0.0f ? (((float) j3) / (1.0f - f)) + (((float) j5) / f) : 0L);
                    max = (c10233.f4058 + ((((f2 * f) + 0.5f) + mo3309) + AbstractC0001.m23(1.0f, f, f2, 0.5f))) - c10234.f4058;
                } else {
                    arrayList = arrayList2;
                    i2 = size;
                    max = contains ? Math.max(C1022.m3342(c10233, c10233.f4058), c10233.f4058 + mo3309) : contains2 ? Math.max(-C1022.m3343(c10234, c10234.f4058), (-c10234.f4058) + mo3309) : (abstractC1014.mo3309() + c10233.f4058) - c10234.f4058;
                }
            } else {
                arrayList = arrayList2;
                i2 = size;
                max = j;
            }
            j2 = Math.max(j2, max);
            i3++;
            c16362 = c1636;
            arrayList2 = arrayList;
            size = i2;
            j = 0;
        }
        return (int) j2;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m3322(AbstractC1014 abstractC1014, int i, ArrayList arrayList) {
        C1023 c1023 = abstractC1014.f4014;
        C1023 c10232 = abstractC1014.f4008;
        ArrayList arrayList2 = c1023.f4052;
        int size = arrayList2.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList2.get(i3);
            i3++;
            InterfaceC1012 interfaceC1012 = (InterfaceC1012) obj;
            if (interfaceC1012 instanceof C1023) {
                m3325((C1023) interfaceC1012, i, arrayList, null);
            } else if (interfaceC1012 instanceof AbstractC1014) {
                m3325(((AbstractC1014) interfaceC1012).f4014, i, arrayList, null);
            }
        }
        ArrayList arrayList3 = c10232.f4052;
        int size2 = arrayList3.size();
        int i4 = 0;
        while (i4 < size2) {
            Object obj2 = arrayList3.get(i4);
            i4++;
            InterfaceC1012 interfaceC10122 = (InterfaceC1012) obj2;
            if (interfaceC10122 instanceof C1023) {
                m3325((C1023) interfaceC10122, i, arrayList, null);
            } else if (interfaceC10122 instanceof AbstractC1014) {
                m3325(((AbstractC1014) interfaceC10122).f4008, i, arrayList, null);
            }
        }
        if (i == 1) {
            ArrayList arrayList4 = ((C1013) abstractC1014).f4006.f4052;
            int size3 = arrayList4.size();
            while (i2 < size3) {
                Object obj3 = arrayList4.get(i2);
                i2++;
                InterfaceC1012 interfaceC10123 = (InterfaceC1012) obj3;
                if (interfaceC10123 instanceof C1023) {
                    m3325((C1023) interfaceC10123, i, arrayList, null);
                }
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m3323() {
        C1021 c1021;
        C1015 c1015 = this;
        ArrayList arrayList = c1015.f4024.f6580;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            C1635 c1635 = (C1635) arrayList.get(i);
            if (!c1635.f6571) {
                int[] iArr = c1635.f6546;
                int i3 = iArr[0];
                int i4 = iArr[1];
                int i5 = c1635.f6572;
                int i6 = c1635.f6543;
                boolean z = i3 == 2 || (i3 == 3 && i5 == 1);
                boolean z2 = i4 == 2 || (i4 == 3 && i6 == 1);
                C1017 c1017 = c1635.f6525.f4012;
                boolean z3 = c1017.f4049;
                C1017 c10172 = c1635.f6542.f4012;
                boolean z4 = c10172.f4049;
                boolean z5 = z;
                if (z3 && z4) {
                    c1015.m3326(1, c1017.f4053, 1, c10172.f4053, c1635);
                    c1635.f6571 = true;
                } else if (z3 && z2) {
                    m3326(1, c1017.f4053, 2, c10172.f4053, c1635);
                    if (i4 == 3) {
                        c1635.f6542.f4012.f4027 = c1635.m4457();
                    } else {
                        c1635.f6542.f4012.mo3329(c1635.m4457());
                        c1635.f6571 = true;
                    }
                } else if (z4 && z5) {
                    m3326(2, c1017.f4053, 1, c10172.f4053, c1635);
                    if (i3 == 3) {
                        c1635.f6525.f4012.f4027 = c1635.m4467();
                    } else {
                        c1635.f6525.f4012.mo3329(c1635.m4467());
                        c1635.f6571 = true;
                    }
                }
                if (c1635.f6571 && (c1021 = c1635.f6542.f4007) != null) {
                    c1021.mo3329(c1635.f6560);
                }
                c1015 = this;
            }
            i = i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0274, code lost:
    
        r6 = 1;
        r9 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0277, code lost:
    
        m3326(r11, 0, r10, 0, r12);
        r12.f6525.f4012.mo3329(r12.m4467());
        r12.f6542.f4012.mo3329(r12.m4457());
        r12.f6571 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x029a, code lost:
    
        r7 = r10;
        r0 = r13;
        r10 = r8;
        r8 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x00e8, code lost:
    
        if (r15 != 3) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x00ea, code lost:
    
        if (r6 != r0) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x00ec, code lost:
    
        m3326(r0, 0, r0, 0, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x00f5, code lost:
    
        r11 = r12.m4457();
        m3326(1, (int) ((r11 * r12.f6556) + 0.5f), 1, r11, r12);
        r12.f6525.f4012.mo3329(r12.m4467());
        r12.f6542.f4012.mo3329(r12.m4457());
        r12.f6571 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x012c, code lost:
    
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x012f, code lost:
    
        if (r15 != 1) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0131, code lost:
    
        m3326(r8, 0, r6, 0, r12);
        r12.f6525.f4012.f4027 = r12.m4467();
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0145, code lost:
    
        if (r15 != 2) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0147, code lost:
    
        r0 = r2[r16];
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0149, code lost:
    
        if (r0 == 1) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x014c, code lost:
    
        if (r0 != 4) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x014f, code lost:
    
        r10 = r6;
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0152, code lost:
    
        r0 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0154, code lost:
    
        m3326(1, (int) ((r4 * r25.m4467()) + 0.5f), r6, r12.m4457(), r12);
        r12.f6525.f4012.mo3329(r12.m4467());
        r12.f6542.f4012.mo3329(r12.m4457());
        r12.f6571 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0182, code lost:
    
        r10 = r6;
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x018a, code lost:
    
        if (r7[r16].f6507 == null) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0190, code lost:
    
        if (r7[1].f6507 != null) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0192, code lost:
    
        m3326(r8, 0, r10, 0, r12);
        r12.f6525.f4012.mo3329(r12.m4467());
        r12.f6542.f4012.mo3329(r12.m4457());
        r12.f6571 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01b4, code lost:
    
        r8 = r0;
        r10 = r6;
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x00c9, code lost:
    
        if (r6 == 2) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c0, code lost:
    
        if (r13 == 2) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d4, code lost:
    
        if (r13 != 3) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00d6, code lost:
    
        if (r6 == r0) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d9, code lost:
    
        if (r6 != 1) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00dc, code lost:
    
        r8 = r0;
        r0 = 3;
        r10 = r6;
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01b8, code lost:
    
        if (r10 != r0) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01ba, code lost:
    
        if (r13 == r8) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01bc, code lost:
    
        if (r13 != r6) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01bf, code lost:
    
        r9 = r0;
        r7 = r10;
        r0 = r13;
        r10 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01c3, code lost:
    
        r8 = r6;
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x029f, code lost:
    
        if (r0 != r9) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x02a1, code lost:
    
        if (r7 != r9) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x02a3, code lost:
    
        if (r15 == r6) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x02a5, code lost:
    
        if (r1 != r6) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x02a9, code lost:
    
        if (r1 != 2) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x02ab, code lost:
    
        if (r15 != 2) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x02af, code lost:
    
        if (r2[r16] != r8) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x02b3, code lost:
    
        if (r2[r6] != r8) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x02b5, code lost:
    
        m3326(r8, (int) ((r4 * r25.m4467()) + 0.5f), r8, (int) ((r14 * r25.m4457()) + 0.5f), r12);
        r12.f6525.f4012.mo3329(r12.m4467());
        r12.f6542.f4012.mo3329(r12.m4457());
        r12.f6571 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x02e8, code lost:
    
        m3326(r10, 0, r10, 0, r12);
        r12.f6525.f4012.f4027 = r12.m4467();
        r12.f6542.f4012.f4027 = r12.m4457();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01c7, code lost:
    
        if (r1 != r0) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01c9, code lost:
    
        if (r13 != r8) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01cb, code lost:
    
        m3326(r8, 0, r8, 0, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01d3, code lost:
    
        r9 = r12.m4467();
        r0 = r12.f6556;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01dc, code lost:
    
        if (r12.f6532 != (-1)) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01de, code lost:
    
        r0 = 1.0f / r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01e0, code lost:
    
        m3326(r6, r9, r6, (int) ((r9 * r0) + 0.5f), r12);
        r12.f6525.f4012.mo3329(r12.m4467());
        r12.f6542.f4012.mo3329(r12.m4457());
        r12.f6571 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0208, code lost:
    
        if (r1 != 1) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x020a, code lost:
    
        m3326(r13, 0, r8, 0, r12);
        r12.f6542.f4012.f4027 = r12.m4457();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x021f, code lost:
    
        r11 = r8;
        r8 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0222, code lost:
    
        if (r1 != 2) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0224, code lost:
    
        r7 = r2[1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0226, code lost:
    
        if (r7 == r6) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0229, code lost:
    
        if (r7 != 4) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x022c, code lost:
    
        r0 = r8;
        r7 = r10;
        r10 = r11;
        r9 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0231, code lost:
    
        m3326(r8, r12.m4467(), r6, (int) ((r14 * r25.m4457()) + 0.5f), r12);
        r12.f6525.f4012.mo3329(r12.m4467());
        r12.f6542.f4012.mo3329(r12.m4457());
        r12.f6571 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x025f, code lost:
    
        r0 = r8;
        r8 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0267, code lost:
    
        if (r7[2].f6507 == null) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x026f, code lost:
    
        if (r7[3].f6507 != null) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0272, code lost:
    
        r7 = r10;
        r10 = r11;
     */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0324  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0337  */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3324(p072.C1636 r25) {
        /*
            Method dump skipped, instructions count: 860
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p018.C1015.m3324(ʾᵎ.ˑﹳ):void");
    }

    /* JADX WARN: Type inference failed for: r13v2, types: [java.lang.Object, ʼʼ.ﾞʻ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3325(C1023 c1023, int i, ArrayList arrayList, C1022 c1022) {
        AbstractC1014 abstractC1014 = c1023.f4050;
        C1022 c10222 = abstractC1014.f4009;
        C1023 c10232 = abstractC1014.f4008;
        C1023 c10233 = abstractC1014.f4014;
        if (c10222 == null) {
            C1636 c1636 = this.f4024;
            if (abstractC1014 != c1636.f6525) {
                C1022 c10223 = c1022;
                if (abstractC1014 == c1636.f6542) {
                    return;
                }
                if (c1022 == null) {
                    ?? obj = new Object();
                    obj.f4046 = null;
                    obj.f4045 = new ArrayList();
                    obj.f4046 = abstractC1014;
                    arrayList.add(obj);
                    c10223 = obj;
                }
                abstractC1014.f4009 = c10223;
                c10223.f4045.add(abstractC1014);
                ArrayList arrayList2 = c10233.f4052;
                int size = arrayList2.size();
                int i2 = 0;
                int i3 = 0;
                while (i3 < size) {
                    Object obj2 = arrayList2.get(i3);
                    i3++;
                    InterfaceC1012 interfaceC1012 = (InterfaceC1012) obj2;
                    if (interfaceC1012 instanceof C1023) {
                        m3325((C1023) interfaceC1012, i, arrayList, c10223);
                    }
                }
                ArrayList arrayList3 = c10232.f4052;
                int size2 = arrayList3.size();
                int i4 = 0;
                while (i4 < size2) {
                    Object obj3 = arrayList3.get(i4);
                    i4++;
                    InterfaceC1012 interfaceC10122 = (InterfaceC1012) obj3;
                    if (interfaceC10122 instanceof C1023) {
                        m3325((C1023) interfaceC10122, i, arrayList, c10223);
                    }
                }
                if (i == 1 && (abstractC1014 instanceof C1013)) {
                    ArrayList arrayList4 = ((C1013) abstractC1014).f4006.f4052;
                    int size3 = arrayList4.size();
                    int i5 = 0;
                    while (i5 < size3) {
                        Object obj4 = arrayList4.get(i5);
                        i5++;
                        InterfaceC1012 interfaceC10123 = (InterfaceC1012) obj4;
                        if (interfaceC10123 instanceof C1023) {
                            m3325((C1023) interfaceC10123, i, arrayList, c10223);
                        }
                    }
                }
                ArrayList arrayList5 = c10233.f4057;
                int size4 = arrayList5.size();
                int i6 = 0;
                while (i6 < size4) {
                    Object obj5 = arrayList5.get(i6);
                    i6++;
                    m3325((C1023) obj5, i, arrayList, c10223);
                }
                ArrayList arrayList6 = c10232.f4057;
                int size5 = arrayList6.size();
                int i7 = 0;
                while (i7 < size5) {
                    Object obj6 = arrayList6.get(i7);
                    i7++;
                    m3325((C1023) obj6, i, arrayList, c10223);
                }
                if (i == 1 && (abstractC1014 instanceof C1013)) {
                    ArrayList arrayList7 = ((C1013) abstractC1014).f4006.f4057;
                    int size6 = arrayList7.size();
                    while (i2 < size6) {
                        Object obj7 = arrayList7.get(i2);
                        i2++;
                        m3325((C1023) obj7, i, arrayList, c10223);
                    }
                }
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m3326(int i, int i2, int i3, int i4, C1635 c1635) {
        C1020 c1020 = this.f4021;
        c1020.f4043 = i;
        c1020.f4042 = i3;
        c1020.f4036 = i2;
        c1020.f4038 = i4;
        this.f4025.m4380(c1635, c1020);
        c1635.m4446(c1020.f4039);
        c1635.m4464(c1020.f4044);
        c1635.f6557 = c1020.f4041;
        c1635.m4461(c1020.f4040);
    }
}
