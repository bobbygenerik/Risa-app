package p213;

import androidx.leanback.widget.C0122;
import java.io.EOFException;
import p171.InterfaceC2622;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: ˏʻ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3001 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f11450;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f11451;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0122 f11453 = new C0122();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3732 f11452 = new C3732(0, new byte[65025]);

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f11449 = -1;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m6536(InterfaceC2622 interfaceC2622) {
        int i;
        AbstractC3731.m7857(interfaceC2622 != null);
        boolean z = this.f11451;
        C3732 c3732 = this.f11452;
        if (z) {
            this.f11451 = false;
            c3732.m7886(0);
        }
        while (!this.f11451) {
            int i2 = this.f11449;
            C0122 c0122 = this.f11453;
            if (i2 < 0) {
                if (c0122.m630(interfaceC2622, -1L) && c0122.m629(interfaceC2622, true)) {
                    int i3 = c0122.f959;
                    if ((c0122.f963 & 1) == 1 && c3732.f14532 == 0) {
                        i3 += m6537(0);
                        i = this.f11450;
                    } else {
                        i = 0;
                    }
                    try {
                        interfaceC2622.mo4595(i3);
                        this.f11449 = i;
                    } catch (EOFException unused) {
                    }
                }
                return false;
            }
            int m6537 = m6537(this.f11449);
            int i4 = this.f11449 + this.f11450;
            if (m6537 > 0) {
                c3732.m7877(c3732.f14532 + m6537);
                try {
                    interfaceC2622.readFully(c3732.f14534, c3732.f14532, m6537);
                    c3732.m7891(c3732.f14532 + m6537);
                    this.f11451 = ((int[]) c0122.f964)[i4 + (-1)] != 255;
                } catch (EOFException unused2) {
                    return false;
                }
            }
            if (i4 == c0122.f958) {
                i4 = -1;
            }
            this.f11449 = i4;
        }
        return true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m6537(int i) {
        int i2;
        int i3 = 0;
        this.f11450 = 0;
        do {
            int i4 = this.f11450;
            int i5 = i + i4;
            C0122 c0122 = this.f11453;
            if (i5 >= c0122.f958) {
                break;
            }
            int[] iArr = (int[]) c0122.f964;
            this.f11450 = i4 + 1;
            i2 = iArr[i5];
            i3 += i2;
        } while (i2 == 255);
        return i3;
    }
}
