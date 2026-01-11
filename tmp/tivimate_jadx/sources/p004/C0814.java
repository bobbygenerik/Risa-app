package p004;

import p055.C1495;
import p171.InterfaceC2639;
import p305.AbstractC3712;
import p305.C3732;

/* renamed from: ʻˆ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0814 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f3463;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C1495 f3465;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C0805 f3466;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public boolean f3467;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C0794 f3468;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f3470;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f3471;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC2639 f3473;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f3475;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0793 f3472 = new C0793();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3732 f3464 = new C3732();

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C3732 f3469 = new C3732(1);

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C3732 f3474 = new C3732();

    public C0814(InterfaceC2639 interfaceC2639, C0805 c0805, C0794 c0794, C1495 c1495) {
        this.f3473 = interfaceC2639;
        this.f3466 = c0805;
        this.f3468 = c0794;
        this.f3465 = c1495;
        this.f3466 = c0805;
        this.f3468 = c0794;
        interfaceC2639.mo4108(c1495);
        m2955();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m2953() {
        this.f3475++;
        if (!this.f3467) {
            return false;
        }
        int i = this.f3470 + 1;
        this.f3470 = i;
        int[] iArr = this.f3472.f3307;
        int i2 = this.f3471;
        if (i != iArr[i2]) {
            return true;
        }
        this.f3471 = i2 + 1;
        this.f3470 = 0;
        return false;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m2954(int i, int i2) {
        C3732 c3732;
        C0797 m2956 = m2956();
        if (m2956 == null) {
            return 0;
        }
        int i3 = m2956.f3356;
        C0793 c0793 = this.f3472;
        if (i3 != 0) {
            c3732 = c0793.f3308;
        } else {
            byte[] bArr = m2956.f3357;
            String str = AbstractC3712.f14481;
            int length = bArr.length;
            C3732 c37322 = this.f3474;
            c37322.m7897(length, bArr);
            i3 = bArr.length;
            c3732 = c37322;
        }
        boolean z = c0793.f3306 && c0793.f3313[this.f3475];
        boolean z2 = z || i2 != 0;
        C3732 c37323 = this.f3469;
        c37323.f14534[0] = (byte) ((z2 ? 128 : 0) | i3);
        c37323.m7896(0);
        InterfaceC2639 interfaceC2639 = this.f3473;
        interfaceC2639.mo4111(c37323, 1, 1);
        interfaceC2639.mo4111(c3732, i3, 1);
        if (!z2) {
            return i3 + 1;
        }
        C3732 c37324 = this.f3464;
        if (!z) {
            c37324.m7886(8);
            byte[] bArr2 = c37324.f14534;
            bArr2[0] = 0;
            bArr2[1] = 1;
            bArr2[2] = (byte) 0;
            bArr2[3] = (byte) (i2 & 255);
            bArr2[4] = (byte) ((i >> 24) & 255);
            bArr2[5] = (byte) ((i >> 16) & 255);
            bArr2[6] = (byte) ((i >> 8) & 255);
            bArr2[7] = (byte) (i & 255);
            interfaceC2639.mo4111(c37324, 8, 1);
            return i3 + 9;
        }
        C3732 c37325 = c0793.f3308;
        int m7895 = c37325.m7895();
        c37325.m7900(-2);
        int i4 = (m7895 * 6) + 2;
        if (i2 != 0) {
            c37324.m7886(i4);
            byte[] bArr3 = c37324.f14534;
            c37325.m7875(bArr3, 0, i4);
            int i5 = (((bArr3[2] & 255) << 8) | (bArr3[3] & 255)) + i2;
            bArr3[2] = (byte) ((i5 >> 8) & 255);
            bArr3[3] = (byte) (i5 & 255);
        } else {
            c37324 = c37325;
        }
        interfaceC2639.mo4111(c37324, i4, 1);
        return i3 + 1 + i4;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m2955() {
        C0793 c0793 = this.f3472;
        c0793.f3302 = 0;
        c0793.f3299 = 0L;
        c0793.f3310 = false;
        c0793.f3306 = false;
        c0793.f3304 = false;
        c0793.f3303 = null;
        this.f3475 = 0;
        this.f3471 = 0;
        this.f3470 = 0;
        this.f3463 = 0;
        this.f3467 = false;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0797 m2956() {
        if (this.f3467) {
            C0793 c0793 = this.f3472;
            C0794 c0794 = c0793.f3312;
            String str = AbstractC3712.f14481;
            int i = c0794.f3318;
            C0797 c0797 = c0793.f3303;
            if (c0797 == null) {
                C0797[] c0797Arr = this.f3466.f3431.f3419;
                c0797 = c0797Arr == null ? null : c0797Arr[i];
            }
            if (c0797 != null && c0797.f3359) {
                return c0797;
            }
        }
        return null;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m2957() {
        int i = !this.f3467 ? this.f3466.f3428[this.f3475] : this.f3472.f3301[this.f3475] ? 1 : 0;
        return m2956() != null ? i | 1073741824 : i;
    }
}
