package p420;

import android.util.SparseArray;
import androidx.media3.exoplayer.drm.DrmSession$DrmSessionException;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import j$.util.Objects;
import java.io.EOFException;
import p004.C0796;
import p055.AbstractC1464;
import p055.C1486;
import p055.C1490;
import p055.C1495;
import p055.InterfaceC1455;
import p127.C2162;
import p137.AbstractC2305;
import p171.C2634;
import p171.InterfaceC2639;
import p262.C3433;
import p305.AbstractC3731;
import p305.C3732;
import p364.C4443;
import p364.C4451;
import p366.C4473;
import p395.C4715;
import p395.InterfaceC4734;
import p395.InterfaceC4735;
import p421.C4996;

/* renamed from: ﹳᵢ.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4976 implements InterfaceC2639 {

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f18535;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public long f18537;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C1495 f18539;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC4734 f18542;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public long f18546;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C4715 f18548;

    /* renamed from: יـ, reason: contains not printable characters */
    public int f18549;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public boolean f18550;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f18551;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C1495 f18553;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f18554;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C1495 f18555;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public InterfaceC4735 f18557;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int f18558;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public boolean f18559;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4968 f18561;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public int f18562;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public InterfaceC4953 f18564;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2162 f18560 = new Object();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f18534 = 1000;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public long[] f18541 = new long[1000];

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public long[] f18552 = new long[1000];

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public long[] f18556 = new long[1000];

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int[] f18544 = new int[1000];

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int[] f18563 = new int[1000];

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public C2634[] f18545 = new C2634[1000];

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ʽﹳ f18536 = new ʽﹳ(new C4473(29));

    /* renamed from: ˏי, reason: contains not printable characters */
    public long f18547 = Long.MIN_VALUE;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public long f18538 = Long.MIN_VALUE;

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public long f18532 = Long.MIN_VALUE;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public boolean f18533 = true;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public boolean f18540 = true;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f18543 = true;

    /* JADX WARN: Type inference failed for: r1v1, types: [ˈـ.ـˆ, java.lang.Object] */
    public C4976(C4443 c4443, InterfaceC4734 interfaceC4734, C4715 c4715) {
        this.f18542 = interfaceC4734;
        this.f18548 = c4715;
        this.f18561 = new C4968(c4443);
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final synchronized int m9804(boolean z, long j) {
        try {
            try {
                int m9809 = m9809(this.f18549);
                int i = this.f18549;
                int i2 = this.f18535;
                if (!(i != i2) || j < this.f18556[m9809]) {
                    return 0;
                }
                if (j > this.f18532 && z) {
                    return i2 - i;
                }
                int m9815 = m9815(m9809, i2 - i, j, true);
                if (m9815 == -1) {
                    return 0;
                }
                return m9815;
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            throw th;
        }
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final boolean m9805(int i) {
        InterfaceC4735 interfaceC4735 = this.f18557;
        if (interfaceC4735 == null || interfaceC4735.getState() == 4) {
            return true;
        }
        return (this.f18544[i] & 1073741824) == 0 && this.f18557.mo9471();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final long m9806(int i) {
        this.f18538 = Math.max(this.f18538, m9819(i));
        this.f18535 -= i;
        int i2 = this.f18558 + i;
        this.f18558 = i2;
        int i3 = this.f18562 + i;
        this.f18562 = i3;
        int i4 = this.f18534;
        if (i3 >= i4) {
            this.f18562 = i3 - i4;
        }
        int i5 = this.f18549 - i;
        this.f18549 = i5;
        int i6 = 0;
        if (i5 < 0) {
            this.f18549 = 0;
        }
        ʽﹳ r1 = this.f18536;
        SparseArray sparseArray = (SparseArray) r1.ʽʽ;
        while (i6 < sparseArray.size() - 1) {
            int i7 = i6 + 1;
            if (i2 < sparseArray.keyAt(i7)) {
                break;
            }
            ((C4473) r1.ˈٴ).accept(sparseArray.valueAt(i6));
            sparseArray.removeAt(i6);
            int i8 = r1.ᴵˊ;
            if (i8 > 0) {
                r1.ᴵˊ = i8 - 1;
            }
            i6 = i7;
        }
        if (this.f18535 != 0) {
            return this.f18552[this.f18562];
        }
        int i9 = this.f18562;
        if (i9 == 0) {
            i9 = this.f18534;
        }
        return this.f18552[i9 - 1] + this.f18563[r7];
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public C1495 mo9807(C1495 c1495) {
        if (this.f18546 == 0 || c1495.f5920 == Long.MAX_VALUE) {
            return c1495;
        }
        C1490 m4300 = c1495.m4300();
        m4300.f5885 = c1495.f5920 + this.f18546;
        return new C1495(m4300);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ʽ */
    public final int mo4107(InterfaceC1455 interfaceC1455, int i, boolean z) {
        return mo4113(interfaceC1455, i, z);
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int m9808(C3433 c3433, C4996 c4996, int i, boolean z) {
        int i2;
        boolean z2 = (i & 2) != 0;
        C2162 c2162 = this.f18560;
        synchronized (this) {
            try {
                c4996.f18669 = false;
                i2 = -3;
                if (this.f18549 != this.f18535) {
                    C1495 c1495 = ((C4989) this.f18536.ˉʿ(m9818())).f18636;
                    if (!z2 && c1495 == this.f18555) {
                        int m9809 = m9809(this.f18549);
                        if (m9805(m9809)) {
                            c4996.f3828 = this.f18544[m9809];
                            if (this.f18549 == this.f18535 - 1 && (z || this.f18550)) {
                                c4996.m3183(536870912);
                            }
                            c4996.f18671 = this.f18556[m9809];
                            c2162.f8425 = this.f18563[m9809];
                            c2162.f8424 = this.f18552[m9809];
                            c2162.f8423 = this.f18545[m9809];
                            i2 = -4;
                        } else {
                            c4996.f18669 = true;
                        }
                    }
                    m9810(c1495, c3433);
                    i2 = -5;
                } else {
                    if (!z && !this.f18550) {
                        C1495 c14952 = this.f18553;
                        if (c14952 == null || (!z2 && c14952 == this.f18555)) {
                        }
                        m9810(c14952, c3433);
                        i2 = -5;
                    }
                    c4996.f3828 = 4;
                    c4996.f18671 = Long.MIN_VALUE;
                    i2 = -4;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (i2 == -4 && !c4996.m3177(4)) {
            boolean z3 = (i & 1) != 0;
            if ((i & 4) == 0) {
                if (z3) {
                    C4968 c4968 = this.f18561;
                    C4968.m9792(c4968.f18507, c4996, this.f18560, c4968.f18505);
                } else {
                    C4968 c49682 = this.f18561;
                    c49682.f18507 = C4968.m9792(c49682.f18507, c4996, this.f18560, c49682.f18505);
                }
            }
            if (!z3) {
                this.f18549++;
            }
        }
        return i2;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final int m9809(int i) {
        int i2 = this.f18562 + i;
        int i3 = this.f18534;
        return i2 < i3 ? i2 : i2 - i3;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m9810(C1495 c1495, C3433 c3433) {
        C1495 c14952;
        C1495 c14953 = this.f18555;
        boolean z = c14953 == null;
        C1486 c1486 = c14953 == null ? null : c14953.f5938;
        this.f18555 = c1495;
        C1486 c14862 = c1495.f5938;
        InterfaceC4734 interfaceC4734 = this.f18542;
        if (interfaceC4734 != null) {
            int mo8997 = interfaceC4734.mo8997(c1495);
            C1490 m4300 = c1495.m4300();
            m4300.f5879 = mo8997;
            c14952 = new C1495(m4300);
        } else {
            c14952 = c1495;
        }
        c3433.f13456 = c14952;
        c3433.f13458 = this.f18557;
        if (interfaceC4734 == null) {
            return;
        }
        if (z || !Objects.equals(c1486, c14862)) {
            InterfaceC4735 interfaceC4735 = this.f18557;
            C4715 c4715 = this.f18548;
            InterfaceC4735 mo8994 = interfaceC4734.mo8994(c4715, c1495);
            this.f18557 = mo8994;
            c3433.f13458 = mo8994;
            if (interfaceC4735 != null) {
                interfaceC4735.mo9462(c4715);
            }
        }
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final synchronized boolean m9811(boolean z) {
        C1495 c1495;
        boolean z2 = false;
        if (this.f18549 != this.f18535) {
            if (((C4989) this.f18536.ˉʿ(m9818())).f18636 != this.f18555) {
                return true;
            }
            return m9805(m9809(this.f18549));
        }
        if (z || this.f18550 || ((c1495 = this.f18553) != null && c1495 != this.f18555)) {
            z2 = true;
        }
        return z2;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m9812(boolean z, long j) {
        Throwable th;
        C4968 c4968 = this.f18561;
        synchronized (this) {
            try {
                try {
                    int i = this.f18535;
                    long j2 = -1;
                    if (i != 0) {
                        long[] jArr = this.f18556;
                        int i2 = this.f18562;
                        if (j >= jArr[i2]) {
                            if (z) {
                                try {
                                    int i3 = this.f18549;
                                    if (i3 != i) {
                                        i = i3 + 1;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            }
                            int m9815 = m9815(i2, i, j, false);
                            if (m9815 != -1) {
                                j2 = m9806(m9815);
                            }
                            c4968.m9794(j2);
                        }
                    }
                    c4968.m9794(j2);
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                th = th;
                throw th;
            }
        }
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ˈ */
    public final void mo4108(C1495 c1495) {
        C1495 mo9807 = mo9807(c1495);
        boolean z = false;
        this.f18559 = false;
        this.f18539 = c1495;
        synchronized (this) {
            try {
                this.f18533 = false;
                if (!Objects.equals(mo9807, this.f18553)) {
                    if (!(((SparseArray) this.f18536.ʽʽ).size() == 0)) {
                        SparseArray sparseArray = (SparseArray) this.f18536.ʽʽ;
                        if (((C4989) sparseArray.valueAt(sparseArray.size() - 1)).f18636.equals(mo9807)) {
                            SparseArray sparseArray2 = (SparseArray) this.f18536.ʽʽ;
                            this.f18553 = ((C4989) sparseArray2.valueAt(sparseArray2.size() - 1)).f18636;
                            boolean z2 = this.f18543;
                            C1495 c14952 = this.f18553;
                            this.f18543 = z2 & AbstractC1464.m4263(c14952.f5930, c14952.f5924);
                            this.f18554 = false;
                            z = true;
                        }
                    }
                    this.f18553 = mo9807;
                    boolean z22 = this.f18543;
                    C1495 c149522 = this.f18553;
                    this.f18543 = z22 & AbstractC1464.m4263(c149522.f5930, c149522.f5924);
                    this.f18554 = false;
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        InterfaceC4953 interfaceC4953 = this.f18564;
        if (interfaceC4953 == null || !z) {
            return;
        }
        interfaceC4953.mo9752();
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m9813() {
        m9824(true);
        InterfaceC4735 interfaceC4735 = this.f18557;
        if (interfaceC4735 != null) {
            interfaceC4735.mo9462(this.f18548);
            this.f18557 = null;
            this.f18555 = null;
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final long m9814(int i) {
        int i2 = this.f18558;
        int i3 = this.f18535;
        int i4 = (i2 + i3) - i;
        boolean z = false;
        AbstractC3731.m7849(i4 >= 0 && i4 <= i3 - this.f18549);
        int i5 = this.f18535 - i4;
        this.f18535 = i5;
        this.f18532 = Math.max(this.f18538, m9819(i5));
        if (i4 == 0 && this.f18550) {
            z = true;
        }
        this.f18550 = z;
        ʽﹳ r0 = this.f18536;
        SparseArray sparseArray = (SparseArray) r0.ʽʽ;
        for (int size = sparseArray.size() - 1; size >= 0 && i < sparseArray.keyAt(size); size--) {
            ((C4473) r0.ˈٴ).accept(sparseArray.valueAt(size));
            sparseArray.removeAt(size);
        }
        r0.ᴵˊ = sparseArray.size() > 0 ? Math.min(r0.ᴵˊ, sparseArray.size() - 1) : -1;
        int i6 = this.f18535;
        if (i6 == 0) {
            return 0L;
        }
        return this.f18552[m9809(i6 - 1)] + this.f18563[r9];
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final int m9815(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = this.f18556[i];
            if (j2 > j) {
                break;
            }
            if (!z || (this.f18544[i] & 1) != 0) {
                if (j2 == j) {
                    return i4;
                }
                i3 = i4;
            }
            i++;
            if (i == this.f18534) {
                i = 0;
            }
        }
        return i3;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final synchronized boolean m9816(boolean z, long j) {
        Throwable th;
        C4976 c4976;
        long j2;
        int m9815;
        try {
            try {
                m9817();
                int m9809 = m9809(this.f18549);
                int i = this.f18549;
                int i2 = this.f18535;
                if (!(i != i2) || j < this.f18556[m9809] || (j > this.f18532 && !z)) {
                    return false;
                }
                if (this.f18543) {
                    int i3 = i2 - i;
                    int i4 = 0;
                    while (true) {
                        if (i4 < i3) {
                            try {
                                if (this.f18556[m9809] >= j) {
                                    i3 = i4;
                                    break;
                                }
                                m9809++;
                                if (m9809 == this.f18534) {
                                    m9809 = 0;
                                }
                                i4++;
                            } catch (Throwable th2) {
                                th = th2;
                                throw th;
                            }
                        } else if (!z) {
                            i3 = -1;
                        }
                    }
                    j2 = j;
                    m9815 = i3;
                    c4976 = this;
                } else {
                    int i5 = i2 - i;
                    c4976 = this;
                    j2 = j;
                    m9815 = c4976.m9815(m9809, i5, j2, true);
                }
                if (m9815 == -1) {
                    return false;
                }
                c4976.f18547 = j2;
                c4976.f18549 += m9815;
                return true;
            } catch (Throwable th3) {
                th = th3;
                th = th;
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            th = th;
            throw th;
        }
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final synchronized void m9817() {
        this.f18549 = 0;
        C4968 c4968 = this.f18561;
        c4968.f18507 = c4968.f18506;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final int m9818() {
        return this.f18558 + this.f18549;
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ˑﹳ */
    public final /* synthetic */ void mo4109(int i, C3732 c3732) {
        AbstractC2305.m5382(this, c3732, i);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final long m9819(int i) {
        long j = Long.MIN_VALUE;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int m9809 = m9809(i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            j = Math.max(j, this.f18556[m9809]);
            if ((this.f18544[m9809] & 1) != 0) {
                return j;
            }
            m9809--;
            if (m9809 == -1) {
                m9809 = this.f18534 - 1;
            }
        }
        return j;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final synchronized C1495 m9820() {
        return this.f18533 ? null : this.f18553;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final synchronized boolean m9821(int i) {
        m9817();
        int i2 = this.f18558;
        if (i >= i2 && i <= this.f18535 + i2) {
            this.f18547 = Long.MIN_VALUE;
            this.f18549 = i - i2;
            return true;
        }
        return false;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m9822() {
        long m9806;
        C4968 c4968 = this.f18561;
        synchronized (this) {
            int i = this.f18535;
            m9806 = i == 0 ? -1L : m9806(i);
        }
        c4968.m9794(m9806);
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final synchronized long m9823() {
        try {
        } catch (Throwable th) {
            throw th;
        }
        return this.f18549 != this.f18535 ? this.f18541[m9809(this.f18549)] : this.f18537;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m9824(boolean z) {
        C4968 c4968 = this.f18561;
        c4968.m9795(c4968.f18506);
        C0796 c0796 = c4968.f18506;
        int i = c4968.f18509;
        AbstractC3731.m7857(((C4451) c0796.f3351) == null);
        c0796.f3352 = 0L;
        c0796.f3354 = i;
        C0796 c07962 = c4968.f18506;
        c4968.f18507 = c07962;
        c4968.f18511 = c07962;
        c4968.f18508 = 0L;
        c4968.f18510.m8984();
        this.f18535 = 0;
        this.f18558 = 0;
        this.f18562 = 0;
        this.f18549 = 0;
        this.f18540 = true;
        this.f18547 = Long.MIN_VALUE;
        this.f18538 = Long.MIN_VALUE;
        this.f18532 = Long.MIN_VALUE;
        this.f18550 = false;
        ʽﹳ r0 = this.f18536;
        SparseArray sparseArray = (SparseArray) r0.ʽʽ;
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            ((C4473) r0.ˈٴ).accept(sparseArray.valueAt(i2));
        }
        r0.ᴵˊ = -1;
        sparseArray.clear();
        if (z) {
            this.f18539 = null;
            this.f18553 = null;
            this.f18533 = true;
            this.f18543 = true;
        }
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final synchronized void m9825(int i) {
        boolean z;
        if (i >= 0) {
            try {
                if (this.f18549 + i <= this.f18535) {
                    z = true;
                    AbstractC3731.m7849(z);
                    this.f18549 += i;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        z = false;
        AbstractC3731.m7849(z);
        this.f18549 += i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0080, code lost:
    
        if (((p420.C4989) r9.valueAt(r9.size() - 1)).f18636.equals(r8.f18553) == false) goto L23;
     */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void m9826(long r9, int r11, long r12, int r14, p171.C2634 r15) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p420.C4976.m9826(long, int, long, int, ˊﾞ.ˊʻ):void");
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m9827(int i) {
        long m9814 = m9814(i);
        C4968 c4968 = this.f18561;
        int i2 = c4968.f18509;
        AbstractC3731.m7849(m9814 <= c4968.f18508);
        c4968.f18508 = m9814;
        if (m9814 != 0) {
            C0796 c0796 = c4968.f18506;
            if (m9814 != c0796.f3352) {
                while (c4968.f18508 > c0796.f3354) {
                    c0796 = (C0796) c0796.f3353;
                }
                C0796 c07962 = (C0796) c0796.f3353;
                c07962.getClass();
                c4968.m9795(c07962);
                C0796 c07963 = new C0796(i2, c0796.f3354);
                c0796.f3353 = c07963;
                if (c4968.f18508 == c0796.f3354) {
                    c0796 = c07963;
                }
                c4968.f18511 = c0796;
                if (c4968.f18507 == c07962) {
                    c4968.f18507 = c07963;
                    return;
                }
                return;
            }
        }
        c4968.m9795(c4968.f18506);
        C0796 c07964 = new C0796(i2, c4968.f18508);
        c4968.f18506 = c07964;
        c4968.f18507 = c07964;
        c4968.f18511 = c07964;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int m9828(long j) {
        int i = this.f18535;
        int m9809 = m9809(i - 1);
        while (i > this.f18549 && this.f18556[m9809] >= j) {
            i--;
            m9809--;
            if (m9809 == -1) {
                m9809 = this.f18534 - 1;
            }
        }
        return i;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final synchronized long m9829() {
        return this.f18532;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final void m9830() {
        InterfaceC4735 interfaceC4735 = this.f18557;
        if (interfaceC4735 == null || interfaceC4735.getState() != 1) {
            return;
        }
        DrmSession$DrmSessionException mo9473 = this.f18557.mo9473();
        mo9473.getClass();
        throw mo9473;
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ⁱˊ */
    public final void mo4111(C3732 c3732, int i, int i2) {
        while (true) {
            C4968 c4968 = this.f18561;
            if (i <= 0) {
                c4968.getClass();
                return;
            }
            int m9793 = c4968.m9793(i);
            C0796 c0796 = c4968.f18511;
            C4451 c4451 = (C4451) c0796.f3351;
            c3732.m7875(c4451.f16669, ((int) (c4968.f18508 - c0796.f3352)) + c4451.f16668, m9793);
            i -= m9793;
            long j = c4968.f18508 + m9793;
            c4968.f18508 = j;
            C0796 c07962 = c4968.f18511;
            if (j == c07962.f3354) {
                c4968.f18511 = (C0796) c07962.f3353;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0052  */
    @Override // p171.InterfaceC2639
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo4112(long r13, int r15, int r16, int r17, p171.C2634 r18) {
        /*
            r12 = this;
            boolean r0 = r12.f18559
            if (r0 == 0) goto Lc
            ʽⁱ.ﹳᐧ r0 = r12.f18539
            p305.AbstractC3731.m7868(r0)
            r12.mo4108(r0)
        Lc:
            r0 = r15 & 1
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L14
            r4 = r3
            goto L15
        L14:
            r4 = r2
        L15:
            boolean r5 = r12.f18540
            if (r5 == 0) goto L1f
            if (r4 != 0) goto L1d
            goto L83
        L1d:
            r12.f18540 = r2
        L1f:
            long r5 = r12.f18546
            long r5 = r5 + r13
            boolean r7 = r12.f18543
            if (r7 == 0) goto L4d
            long r7 = r12.f18547
            int r7 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r7 >= 0) goto L2d
            goto L83
        L2d:
            if (r0 != 0) goto L4d
            boolean r0 = r12.f18554
            if (r0 != 0) goto L4a
            java.lang.String r0 = "SampleQueue"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r8 = "Overriding unexpected non-sync sample for format: "
            r7.<init>(r8)
            ʽⁱ.ﹳᐧ r8 = r12.f18553
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            p305.AbstractC3731.m7850(r0, r7)
            r12.f18554 = r3
        L4a:
            r0 = r15 | 1
            goto L4e
        L4d:
            r0 = r15
        L4e:
            boolean r7 = r12.f18551
            if (r7 == 0) goto L84
            if (r4 == 0) goto L83
            monitor-enter(r12)
            int r4 = r12.f18535     // Catch: java.lang.Throwable -> L63
            if (r4 != 0) goto L65
            long r7 = r12.f18538     // Catch: java.lang.Throwable -> L63
            int r4 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r4 <= 0) goto L60
            goto L61
        L60:
            r3 = r2
        L61:
            monitor-exit(r12)
            goto L7b
        L63:
            r0 = move-exception
            goto L81
        L65:
            long r7 = r12.m9831()     // Catch: java.lang.Throwable -> L63
            int r4 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r4 < 0) goto L70
            monitor-exit(r12)
            r3 = r2
            goto L7b
        L70:
            int r4 = r12.m9828(r5)     // Catch: java.lang.Throwable -> L63
            int r7 = r12.f18558     // Catch: java.lang.Throwable -> L63
            int r7 = r7 + r4
            r12.m9814(r7)     // Catch: java.lang.Throwable -> L63
            monitor-exit(r12)
        L7b:
            if (r3 != 0) goto L7e
            goto L83
        L7e:
            r12.f18551 = r2
            goto L84
        L81:
            monitor-exit(r12)     // Catch: java.lang.Throwable -> L63
            throw r0
        L83:
            return
        L84:
            ﹳᵢ.ـˏ r2 = r12.f18561
            long r2 = r2.f18508
            r7 = r16
            long r8 = (long) r7
            long r2 = r2 - r8
            r4 = r17
            long r8 = (long) r4
            long r2 = r2 - r8
            r10 = r5
            r5 = r2
            r2 = r10
            r1 = r12
            r8 = r18
            r4 = r0
            r1.m9826(r2, r4, r5, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p420.C4976.mo4112(long, int, int, int, ˊﾞ.ˊʻ):void");
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final synchronized long m9831() {
        return Math.max(this.f18538, m9819(this.f18549));
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m9832(long j) {
        if (this.f18535 == 0) {
            return;
        }
        AbstractC3731.m7849(j > m9831());
        m9827(this.f18558 + m9828(j));
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ﾞᴵ */
    public final int mo4113(InterfaceC1455 interfaceC1455, int i, boolean z) {
        C4968 c4968 = this.f18561;
        int m9793 = c4968.m9793(i);
        C0796 c0796 = c4968.f18511;
        C4451 c4451 = (C4451) c0796.f3351;
        int read = interfaceC1455.read(c4451.f16669, ((int) (c4968.f18508 - c0796.f3352)) + c4451.f16668, m9793);
        if (read == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        long j = c4968.f18508 + read;
        c4968.f18508 = j;
        C0796 c07962 = c4968.f18511;
        if (j == c07962.f3354) {
            c4968.f18511 = (C0796) c07962.f3353;
        }
        return read;
    }
}
