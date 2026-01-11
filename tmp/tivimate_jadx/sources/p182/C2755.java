package p182;

import java.util.ArrayList;
import p017.AbstractC0993;
import p017.C0953;
import p017.C0956;
import p017.C0966;
import p017.C0968;
import p017.C0982;
import p017.C0999;
import p051.C1397;
import p158.C2537;
import p305.AbstractC3731;

/* renamed from: ˋـ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2755 implements InterfaceC2759 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0953 f10487 = new C0953(new C0999(new C2537(6), C0966.f3922), new C0999(new C2537(7), C0966.f3921));

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f10488 = new ArrayList();

    @Override // p182.InterfaceC2759
    public final void clear() {
        this.f10488.clear();
    }

    @Override // p182.InterfaceC2759
    /* renamed from: ʽ */
    public final long mo3427(long j) {
        ArrayList arrayList = this.f10488;
        if (arrayList.isEmpty()) {
            return -9223372036854775807L;
        }
        if (j < ((C1397) arrayList.get(0)).f5476) {
            return -9223372036854775807L;
        }
        long j2 = ((C1397) arrayList.get(0)).f5476;
        for (int i = 0; i < arrayList.size(); i++) {
            long j3 = ((C1397) arrayList.get(i)).f5476;
            long j4 = ((C1397) arrayList.get(i)).f5475;
            if (j4 > j) {
                if (j3 > j) {
                    break;
                }
                j2 = Math.max(j2, j3);
            } else {
                j2 = Math.max(j2, j4);
            }
        }
        return j2;
    }

    @Override // p182.InterfaceC2759
    /* renamed from: ˈ */
    public final boolean mo3429(C1397 c1397, long j) {
        long j2 = c1397.f5476;
        AbstractC3731.m7849(j2 != -9223372036854775807L);
        AbstractC3731.m7849(c1397.f5474 != -9223372036854775807L);
        boolean z = j2 <= j && j < c1397.f5475;
        ArrayList arrayList = this.f10488;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (j2 >= ((C1397) arrayList.get(size)).f5476) {
                arrayList.add(size + 1, c1397);
                return z;
            }
        }
        arrayList.add(0, c1397);
        return z;
    }

    @Override // p182.InterfaceC2759
    /* renamed from: ˑﹳ */
    public final void mo3430(long j) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f10488;
            if (i >= arrayList.size()) {
                return;
            }
            long j2 = ((C1397) arrayList.get(i)).f5476;
            if (j > j2 && j > ((C1397) arrayList.get(i)).f5475) {
                arrayList.remove(i);
                i--;
            } else if (j < j2) {
                return;
            }
            i++;
        }
    }

    @Override // p182.InterfaceC2759
    /* renamed from: ⁱˊ */
    public final long mo3434(long j) {
        int i = 0;
        long j2 = -9223372036854775807L;
        while (true) {
            ArrayList arrayList = this.f10488;
            if (i >= arrayList.size()) {
                break;
            }
            long j3 = ((C1397) arrayList.get(i)).f5476;
            long j4 = ((C1397) arrayList.get(i)).f5475;
            if (j < j3) {
                j2 = j2 == -9223372036854775807L ? j3 : Math.min(j2, j3);
            } else {
                if (j < j4) {
                    j2 = j2 == -9223372036854775807L ? j4 : Math.min(j2, j4);
                }
                i++;
            }
        }
        if (j2 != -9223372036854775807L) {
            return j2;
        }
        return Long.MIN_VALUE;
    }

    @Override // p182.InterfaceC2759
    /* renamed from: ﹳٴ */
    public final AbstractC0993 mo3435(long j) {
        ArrayList arrayList = this.f10488;
        if (!arrayList.isEmpty()) {
            if (j >= ((C1397) arrayList.get(0)).f5476) {
                ArrayList arrayList2 = new ArrayList();
                for (int i = 0; i < arrayList.size(); i++) {
                    C1397 c1397 = (C1397) arrayList.get(i);
                    if (j >= c1397.f5476 && j < c1397.f5475) {
                        arrayList2.add(c1397);
                    }
                    if (j < c1397.f5476) {
                        break;
                    }
                }
                C0956 m3262 = AbstractC0993.m3262(f10487, arrayList2);
                C0968 m3261 = AbstractC0993.m3261();
                for (int i2 = 0; i2 < m3262.f3903; i2++) {
                    m3261.m3236(((C1397) m3262.get(i2)).f5477);
                }
                return m3261.m3249();
            }
        }
        C0982 c0982 = AbstractC0993.f3977;
        return C0956.f3901;
    }
}
