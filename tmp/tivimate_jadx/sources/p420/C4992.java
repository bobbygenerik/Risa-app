package p420;

import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0968;
import p305.AbstractC3731;
import p392.C4664;

/* renamed from: ﹳᵢ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4992 implements InterfaceC4947 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0956 f18646;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f18647;

    public C4992(List list, List list2) {
        C0968 m3261 = AbstractC0993.m3261();
        AbstractC3731.m7849(list.size() == list2.size());
        for (int i = 0; i < list.size(); i++) {
            m3261.m3239(new C4971((InterfaceC4947) list.get(i), (List) list2.get(i)));
        }
        this.f18646 = m3261.m3249();
        this.f18647 = -9223372036854775807L;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ʻٴ */
    public final void mo5121(long j) {
        int i = 0;
        while (true) {
            C0956 c0956 = this.f18646;
            if (i >= c0956.f3903) {
                return;
            }
            ((C4971) c0956.get(i)).mo5121(j);
            i++;
        }
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˈ */
    public final boolean mo5125() {
        int i = 0;
        while (true) {
            C0956 c0956 = this.f18646;
            if (i >= c0956.f3903) {
                return false;
            }
            if (((C4971) c0956.get(i)).f18514.mo5125()) {
                return true;
            }
            i++;
        }
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˉˆ */
    public final long mo5127() {
        int i = 0;
        long j = Long.MAX_VALUE;
        long j2 = Long.MAX_VALUE;
        while (true) {
            C0956 c0956 = this.f18646;
            if (i >= c0956.f3903) {
                break;
            }
            C4971 c4971 = (C4971) c0956.get(i);
            long mo5127 = c4971.f18514.mo5127();
            AbstractC0993 abstractC0993 = c4971.f18515;
            if ((abstractC0993.contains(1) || abstractC0993.contains(2) || abstractC0993.contains(4)) && mo5127 != Long.MIN_VALUE) {
                j = Math.min(j, mo5127);
            }
            if (mo5127 != Long.MIN_VALUE) {
                j2 = Math.min(j2, mo5127);
            }
            i++;
        }
        if (j != Long.MAX_VALUE) {
            this.f18647 = j;
            return j;
        }
        if (j2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        long j3 = this.f18647;
        return j3 != -9223372036854775807L ? j3 : j2;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ٴﹶ */
    public final boolean mo5129(C4664 c4664) {
        boolean z;
        boolean z2 = false;
        do {
            long mo5134 = mo5134();
            if (mo5134 == Long.MIN_VALUE) {
                return z2;
            }
            int i = 0;
            z = false;
            while (true) {
                C0956 c0956 = this.f18646;
                if (i >= c0956.f3903) {
                    break;
                }
                long mo51342 = ((C4971) c0956.get(i)).f18514.mo5134();
                boolean z3 = mo51342 != Long.MIN_VALUE && mo51342 <= c4664.f17482;
                if (mo51342 == mo5134 || z3) {
                    z |= ((C4971) c0956.get(i)).f18514.mo5129(c4664);
                }
                i++;
            }
            z2 |= z;
        } while (z);
        return z2;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ﾞʻ */
    public final long mo5134() {
        int i = 0;
        long j = Long.MAX_VALUE;
        while (true) {
            C0956 c0956 = this.f18646;
            if (i >= c0956.f3903) {
                break;
            }
            long mo5134 = ((C4971) c0956.get(i)).f18514.mo5134();
            if (mo5134 != Long.MIN_VALUE) {
                j = Math.min(j, mo5134);
            }
            i++;
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }
}
