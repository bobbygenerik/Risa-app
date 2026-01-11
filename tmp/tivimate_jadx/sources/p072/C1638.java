package p072;

import java.util.ArrayList;
import p010.AbstractC0844;
import p010.C0842;
import p010.C0845;
import p010.C0846;

/* renamed from: ʾᵎ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1638 extends C1635 {

    /* renamed from: ʼـ, reason: contains not printable characters */
    public boolean f6635;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public float f6636 = -1.0f;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public int f6640 = -1;

    /* renamed from: י, reason: contains not printable characters */
    public int f6639 = -1;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public C1633 f6637 = this.f6548;

    /* renamed from: ˑ, reason: contains not printable characters */
    public int f6638 = 0;

    public C1638() {
        this.f6535.clear();
        this.f6535.add(this.f6637);
        int length = this.f6537.length;
        for (int i = 0; i < length; i++) {
            this.f6537[i] = this.f6637;
        }
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final void m4483(int i) {
        if (this.f6638 == i) {
            return;
        }
        this.f6638 = i;
        ArrayList arrayList = this.f6535;
        arrayList.clear();
        if (this.f6638 == 1) {
            this.f6637 = this.f6561;
        } else {
            this.f6637 = this.f6548;
        }
        arrayList.add(this.f6637);
        C1633[] c1633Arr = this.f6537;
        int length = c1633Arr.length;
        for (int i2 = 0; i2 < length; i2++) {
            c1633Arr[i2] = this.f6637;
        }
    }

    @Override // p072.C1635
    /* renamed from: ʼˎ */
    public final C1633 mo4437(int i) {
        int m3018 = AbstractC0844.m3018(i);
        if (m3018 != 1) {
            if (m3018 != 2) {
                if (m3018 != 3) {
                    if (m3018 != 4) {
                        return null;
                    }
                }
            }
            if (this.f6638 == 0) {
                return this.f6637;
            }
            return null;
        }
        if (this.f6638 == 1) {
            return this.f6637;
        }
        return null;
    }

    @Override // p072.C1635
    /* renamed from: ʽ */
    public final boolean mo4438() {
        return true;
    }

    @Override // p072.C1635
    /* renamed from: ʾˋ */
    public final boolean mo4441() {
        return this.f6635;
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final void m4484(int i) {
        this.f6637.m4426(i);
        this.f6635 = true;
    }

    @Override // p072.C1635
    /* renamed from: ˋᵔ */
    public final void mo4450(C0842 c0842, boolean z) {
        if (this.f6545 == null) {
            return;
        }
        C1633 c1633 = this.f6637;
        c0842.getClass();
        int m2994 = C0842.m2994(c1633);
        if (this.f6638 == 1) {
            this.f6521 = m2994;
            this.f6522 = 0;
            m4464(this.f6545.m4457());
            m4446(0);
            return;
        }
        this.f6521 = 0;
        this.f6522 = m2994;
        m4446(this.f6545.m4467());
        m4464(0);
    }

    @Override // p072.C1635
    /* renamed from: ᴵˊ */
    public final boolean mo4458() {
        return this.f6635;
    }

    @Override // p072.C1635
    /* renamed from: ⁱˊ */
    public final void mo4469(C0842 c0842, boolean z) {
        C1636 c1636 = (C1636) this.f6545;
        if (c1636 == null) {
            return;
        }
        Object mo4437 = c1636.mo4437(2);
        Object mo44372 = c1636.mo4437(4);
        C1635 c1635 = this.f6545;
        boolean z2 = c1635 != null && c1635.f6546[0] == 2;
        if (this.f6638 == 0) {
            mo4437 = c1636.mo4437(3);
            mo44372 = c1636.mo4437(5);
            C1635 c16352 = this.f6545;
            z2 = c16352 != null && c16352.f6546[1] == 2;
        }
        if (this.f6635) {
            C1633 c1633 = this.f6637;
            if (c1633.f6500) {
                C0845 m3005 = c0842.m3005(c1633);
                c0842.m2999(m3005, this.f6637.m4419());
                if (this.f6640 != -1) {
                    if (z2) {
                        c0842.m3013(c0842.m3005(mo44372), m3005, 0, 5);
                    }
                } else if (this.f6639 != -1 && z2) {
                    C0845 m30052 = c0842.m3005(mo44372);
                    c0842.m3013(m3005, c0842.m3005(mo4437), 0, 5);
                    c0842.m3013(m30052, m3005, 0, 5);
                }
                this.f6635 = false;
                return;
            }
        }
        if (this.f6640 != -1) {
            C0845 m30053 = c0842.m3005(this.f6637);
            c0842.m3003(m30053, c0842.m3005(mo4437), this.f6640, 8);
            if (z2) {
                c0842.m3013(c0842.m3005(mo44372), m30053, 0, 5);
                return;
            }
            return;
        }
        if (this.f6639 != -1) {
            C0845 m30054 = c0842.m3005(this.f6637);
            C0845 m30055 = c0842.m3005(mo44372);
            c0842.m3003(m30054, m30055, -this.f6639, 8);
            if (z2) {
                c0842.m3013(m30054, c0842.m3005(mo4437), 0, 5);
                c0842.m3013(m30055, m30054, 0, 5);
                return;
            }
            return;
        }
        if (this.f6636 != -1.0f) {
            C0845 m30056 = c0842.m3005(this.f6637);
            C0845 m30057 = c0842.m3005(mo44372);
            float f = this.f6636;
            C0846 m3012 = c0842.m3012();
            m3012.f3615.m3039(m30056, -1.0f);
            m3012.f3615.m3039(m30057, f);
            c0842.m2997(m3012);
        }
    }
}
