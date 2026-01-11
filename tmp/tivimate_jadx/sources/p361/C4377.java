package p361;

import androidx.leanback.widget.C0121;
import java.io.IOException;
import java.util.ArrayList;
import p164.C2571;
import p164.C2586;
import p394.AbstractC4710;
import p430.AbstractC5096;

/* renamed from: ᵔᐧ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4377 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2586 f16250;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f16253;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f16256;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f16255 = 4096;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f16254 = new ArrayList();

    /* renamed from: ˈ, reason: contains not printable characters */
    public C4394[] f16251 = new C4394[8];

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f16252 = 7;

    public C4377(C4392 c4392) {
        this.f16250 = new C2586(c4392);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8855(C4394 c4394) {
        this.f16254.add(c4394);
        int i = c4394.f16347;
        int i2 = this.f16255;
        if (i > i2) {
            AbstractC5096.m10012(this.f16251, null);
            this.f16252 = this.f16251.length - 1;
            this.f16256 = 0;
            this.f16253 = 0;
            return;
        }
        m8859((this.f16253 + i) - i2);
        int i3 = this.f16256 + 1;
        C4394[] c4394Arr = this.f16251;
        if (i3 > c4394Arr.length) {
            C4394[] c4394Arr2 = new C4394[c4394Arr.length * 2];
            System.arraycopy(c4394Arr, 0, c4394Arr2, c4394Arr.length, c4394Arr.length);
            this.f16252 = this.f16251.length - 1;
            this.f16251 = c4394Arr2;
        }
        int i4 = this.f16252;
        this.f16252 = i4 - 1;
        this.f16251[i4] = c4394;
        this.f16256++;
        this.f16253 += i;
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2571 m8856() {
        C2586 c2586 = this.f16250;
        byte readByte = c2586.readByte();
        byte[] bArr = AbstractC4710.f17800;
        int i = readByte & 255;
        int i2 = 0;
        boolean z = (readByte & 128) == 128;
        long m8857 = m8857(i, 127);
        if (!z) {
            return c2586.mo5799(m8857);
        }
        ?? obj = new Object();
        C0121 c0121 = AbstractC4379.f16258;
        C0121 c01212 = c0121;
        int i3 = 0;
        for (long j = 0; j < m8857; j++) {
            byte readByte2 = c2586.readByte();
            byte[] bArr2 = AbstractC4710.f17800;
            i2 = (i2 << 8) | (readByte2 & 255);
            i3 += 8;
            while (i3 >= 8) {
                c01212 = ((C0121[]) c01212.f955)[(i2 >>> (i3 - 8)) & 255];
                if (((C0121[]) c01212.f955) == null) {
                    obj.m5825(c01212.f956);
                    i3 -= c01212.f957;
                    c01212 = c0121;
                } else {
                    i3 -= 8;
                }
            }
        }
        while (i3 > 0) {
            C0121 c01213 = ((C0121[]) c01212.f955)[(i2 << (8 - i3)) & 255];
            C0121[] c0121Arr = (C0121[]) c01213.f955;
            int i4 = c01213.f957;
            if (c0121Arr != null || i4 > i3) {
                break;
            }
            obj.m5825(c01213.f956);
            i3 -= i4;
            c01212 = c0121;
        }
        return obj.mo5799(obj.f9835);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m8857(int i, int i2) {
        int i3 = i & i2;
        if (i3 < i2) {
            return i3;
        }
        int i4 = 0;
        while (true) {
            byte readByte = this.f16250.readByte();
            byte[] bArr = AbstractC4710.f17800;
            int i5 = readByte & 255;
            if ((readByte & 128) == 0) {
                return i2 + (i5 << i4);
            }
            i2 += (readByte & Byte.MAX_VALUE) << i4;
            i4 += 7;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2571 m8858(int i) {
        if (i >= 0) {
            C4394[] c4394Arr = AbstractC4385.f16289;
            if (i <= c4394Arr.length - 1) {
                return c4394Arr[i].f16349;
            }
        }
        int length = this.f16252 + 1 + (i - AbstractC4385.f16289.length);
        if (length >= 0) {
            C4394[] c4394Arr2 = this.f16251;
            if (length < c4394Arr2.length) {
                return c4394Arr2[length].f16349;
            }
        }
        throw new IOException("Header index too large " + (i + 1));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m8859(int i) {
        int i2;
        int i3 = 0;
        if (i > 0) {
            int length = this.f16251.length;
            while (true) {
                length--;
                i2 = this.f16252;
                if (length < i2 || i <= 0) {
                    break;
                }
                int i4 = this.f16251[length].f16347;
                i -= i4;
                this.f16253 -= i4;
                this.f16256--;
                i3++;
            }
            C4394[] c4394Arr = this.f16251;
            System.arraycopy(c4394Arr, i2 + 1, c4394Arr, i2 + 1 + i3, this.f16256);
            this.f16252 += i3;
        }
        return i3;
    }
}
