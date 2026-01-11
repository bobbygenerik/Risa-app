package p400;

import java.rmi.UnmarshalException;
import java.util.Arrays;
import p092.EnumC1852;
import p092.InterfaceC1851;
import p210.C2975;
import p262.C3433;

/* renamed from: ⁱﾞ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4758 implements InterfaceC1851 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C4756[] f17971;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m9523(C3433 c3433) {
        long readInt = ((C2975) c3433.f13456).readInt() & 4294967295L;
        if (readInt <= 2147483647L) {
            return (int) readInt;
        }
        throw new UnmarshalException(String.format("%s %d > %d", "EntriesRead", Long.valueOf(readInt), Integer.MAX_VALUE));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractC4758) {
            return Arrays.equals(this.f17971, ((AbstractC4758) obj).f17971);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f17971);
    }

    @Override // p092.InterfaceC1851
    /* renamed from: ʽ */
    public final void mo4784(C3433 c3433) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p092.InterfaceC1851
    /* renamed from: ⁱˊ */
    public final void mo4785(C3433 c3433) {
        C4756[] c4756Arr;
        if (this.f17971 != null) {
            c3433.m7333(EnumC1852.FOUR);
            c3433.m7336(4);
            int i = 0;
            while (true) {
                c4756Arr = this.f17971;
                if (i >= c4756Arr.length) {
                    break;
                }
                c4756Arr[i] = new Object();
                i++;
            }
            for (C4760 c4760 : c4756Arr) {
                c4760.mo4786(c3433);
            }
            for (C4756 c4756 : this.f17971) {
                c4756.mo4785(c3433);
            }
        }
    }

    @Override // p092.InterfaceC1851
    /* renamed from: ﹳٴ */
    public final void mo4786(C3433 c3433) {
        c3433.m7333(EnumC1852.FOUR);
        int m9523 = m9523(c3433);
        if (((C2975) c3433.f13456).readInt() == 0) {
            this.f17971 = null;
        } else {
            if (m9523 < 0) {
                throw new UnmarshalException(String.format("Expected entriesRead >= 0, got: %d", Integer.valueOf(m9523)));
            }
            this.f17971 = new C4756[m9523];
        }
    }
}
