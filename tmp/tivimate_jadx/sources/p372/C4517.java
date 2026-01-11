package p372;

import android.util.SparseArray;
import p055.C1468;
import p055.C1495;
import p171.InterfaceC2626;
import p171.InterfaceC2632;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p262.C3433;
import p305.AbstractC3731;

/* renamed from: ᵢˋ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4517 implements InterfaceC2646 {

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final C1468 f16888 = new Object();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1495 f16889;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2632 f16890;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final SparseArray f16891 = new SparseArray();

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public InterfaceC2626 f16892;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C3433 f16893;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public long f16894;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f16895;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f16896;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C1495[] f16897;

    public C4517(InterfaceC2632 interfaceC2632, int i, C1495 c1495) {
        this.f16890 = interfaceC2632;
        this.f16895 = i;
        this.f16889 = c1495;
    }

    @Override // p171.InterfaceC2646
    /* renamed from: ˑﹳ */
    public final void mo1133(InterfaceC2626 interfaceC2626) {
        this.f16892 = interfaceC2626;
    }

    @Override // p171.InterfaceC2646
    /* renamed from: ᵔᵢ */
    public final void mo1137() {
        SparseArray sparseArray = this.f16891;
        C1495[] c1495Arr = new C1495[sparseArray.size()];
        for (int i = 0; i < sparseArray.size(); i++) {
            C1495 c1495 = ((C4515) sparseArray.valueAt(i)).f16877;
            AbstractC3731.m7868(c1495);
            c1495Arr[i] = c1495;
        }
        this.f16897 = c1495Arr;
    }

    @Override // p171.InterfaceC2646
    /* renamed from: ᵔﹳ */
    public final InterfaceC2639 mo1138(int i, int i2) {
        SparseArray sparseArray = this.f16891;
        C4515 c4515 = (C4515) sparseArray.get(i);
        if (c4515 == null) {
            AbstractC3731.m7857(this.f16897 == null);
            c4515 = new C4515(i, i2, i2 == this.f16895 ? this.f16889 : null);
            C3433 c3433 = this.f16893;
            long j = this.f16894;
            if (c3433 == null) {
                c4515.f16878 = c4515.f16876;
            } else {
                c4515.f16881 = j;
                InterfaceC2639 m7341 = c3433.m7341(i2);
                c4515.f16878 = m7341;
                C1495 c1495 = c4515.f16877;
                if (c1495 != null) {
                    m7341.mo4108(c1495);
                }
            }
            sparseArray.put(i, c4515);
        }
        return c4515;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9089(C3433 c3433, long j, long j2) {
        this.f16893 = c3433;
        this.f16894 = j2;
        boolean z = this.f16896;
        InterfaceC2632 interfaceC2632 = this.f16890;
        if (!z) {
            interfaceC2632.mo2900(this);
            if (j != -9223372036854775807L) {
                interfaceC2632.mo2908(0L, j);
            }
            this.f16896 = true;
            return;
        }
        if (j == -9223372036854775807L) {
            j = 0;
        }
        interfaceC2632.mo2908(0L, j);
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.f16891;
            if (i >= sparseArray.size()) {
                return;
            }
            C4515 c4515 = (C4515) sparseArray.valueAt(i);
            if (c3433 == null) {
                c4515.f16878 = c4515.f16876;
            } else {
                c4515.f16881 = j2;
                InterfaceC2639 m7341 = c3433.m7341(c4515.f16880);
                c4515.f16878 = m7341;
                C1495 c1495 = c4515.f16877;
                if (c1495 != null) {
                    m7341.mo4108(c1495);
                }
            }
            i++;
        }
    }
}
