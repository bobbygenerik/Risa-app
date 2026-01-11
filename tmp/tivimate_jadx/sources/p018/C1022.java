package p018;

import java.util.ArrayList;

/* renamed from: ʼʼ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1022 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public ArrayList f4045;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public AbstractC1014 f4046;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static long m3342(C1023 c1023, long j) {
        AbstractC1014 abstractC1014 = c1023.f4050;
        ArrayList arrayList = c1023.f4052;
        if (abstractC1014 instanceof C1011) {
            return j;
        }
        int size = arrayList.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            InterfaceC1012 interfaceC1012 = (InterfaceC1012) arrayList.get(i);
            if (interfaceC1012 instanceof C1023) {
                C1023 c10232 = (C1023) interfaceC1012;
                if (c10232.f4050 != abstractC1014) {
                    j2 = Math.max(j2, m3342(c10232, c10232.f4058 + j));
                }
            }
        }
        C1023 c10233 = abstractC1014.f4014;
        C1023 c10234 = abstractC1014.f4008;
        if (c1023 != c10233) {
            return j2;
        }
        long mo3309 = abstractC1014.mo3309() + j;
        return Math.max(Math.max(j2, m3342(c10234, mo3309)), mo3309 - c10234.f4058);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static long m3343(C1023 c1023, long j) {
        AbstractC1014 abstractC1014 = c1023.f4050;
        ArrayList arrayList = c1023.f4052;
        if (abstractC1014 instanceof C1011) {
            return j;
        }
        int size = arrayList.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            InterfaceC1012 interfaceC1012 = (InterfaceC1012) arrayList.get(i);
            if (interfaceC1012 instanceof C1023) {
                C1023 c10232 = (C1023) interfaceC1012;
                if (c10232.f4050 != abstractC1014) {
                    j2 = Math.min(j2, m3343(c10232, c10232.f4058 + j));
                }
            }
        }
        C1023 c10233 = abstractC1014.f4008;
        C1023 c10234 = abstractC1014.f4014;
        if (c1023 != c10233) {
            return j2;
        }
        long mo3309 = j - abstractC1014.mo3309();
        return Math.min(Math.min(j2, m3343(c10234, mo3309)), mo3309 - c10234.f4058);
    }
}
