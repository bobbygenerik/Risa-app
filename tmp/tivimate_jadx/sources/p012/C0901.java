package p012;

import java.util.ArrayList;
import java.util.Arrays;
import p010.AbstractC0844;
import p035.AbstractC1220;
import p055.C1459;
import p055.C1495;
import p055.InterfaceC1465;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;
import ʼ.ᵎﹶ;
import ˈˊ.ˉˆ;

/* renamed from: ʻᴵ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0901 implements InterfaceC1465 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f3815;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f3816;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] f3817;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f3818;

    public C0901(String str, byte[] bArr, int i, int i2) {
        byte b;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1949883051:
                if (str.equals("com.android.capture.fps")) {
                    c = 0;
                    break;
                }
                break;
            case -269399509:
                if (str.equals("auxiliary.tracks.interleaved")) {
                    c = 1;
                    break;
                }
                break;
            case 1011693540:
                if (str.equals("auxiliary.tracks.length")) {
                    c = 2;
                    break;
                }
                break;
            case 1098277265:
                if (str.equals("auxiliary.tracks.offset")) {
                    c = 3;
                    break;
                }
                break;
            case 2002123038:
                if (str.equals("auxiliary.tracks.map")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                if (i2 == 23 && bArr.length == 4) {
                    r2 = true;
                }
                AbstractC3731.m7849(r2);
                break;
            case 1:
                if (i2 == 75 && bArr.length == 1 && ((b = bArr[0]) == 0 || b == 1)) {
                    r2 = true;
                }
                AbstractC3731.m7849(r2);
                break;
            case 2:
            case 3:
                if (i2 == 78 && bArr.length == 8) {
                    r2 = true;
                }
                AbstractC3731.m7849(r2);
                break;
            case 4:
                AbstractC3731.m7849(i2 == 0);
                break;
        }
        this.f3818 = str;
        this.f3817 = bArr;
        this.f3815 = i;
        this.f3816 = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0901.class == obj.getClass()) {
            C0901 c0901 = (C0901) obj;
            if (this.f3818.equals(c0901.f3818) && Arrays.equals(this.f3817, c0901.f3817) && this.f3815 == c0901.f3815 && this.f3816 == c0901.f3816) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.f3817) + AbstractC1220.m3780(527, 31, this.f3818)) * 31) + this.f3815) * 31) + this.f3816;
    }

    public final String toString() {
        String sb;
        String str = this.f3818;
        byte[] bArr = this.f3817;
        int i = this.f3816;
        if (i == 0) {
            if (str.equals("auxiliary.tracks.map")) {
                ArrayList m3146 = m3146();
                StringBuilder m3020 = AbstractC0844.m3020("track types = ");
                new C0902(String.valueOf(',')).m3155(m3020, m3146.iterator());
                sb = m3020.toString();
            }
            sb = AbstractC3712.m7792(bArr);
        } else if (i == 1) {
            sb = AbstractC3712.m7804(bArr);
        } else if (i == 23) {
            boolean z = bArr.length >= 4;
            int length = bArr.length;
            if (!z) {
                throw new IllegalArgumentException(ᵎﹶ.ʾᵎ("array too small: %s < %s", new Object[]{Integer.valueOf(length), 4}));
            }
            sb = String.valueOf(Float.intBitsToFloat(ˉˆ.ˉˆ(bArr[0], bArr[1], bArr[2], bArr[3])));
        } else if (i == 67) {
            boolean z2 = bArr.length >= 4;
            int length2 = bArr.length;
            if (!z2) {
                throw new IllegalArgumentException(ᵎﹶ.ʾᵎ("array too small: %s < %s", new Object[]{Integer.valueOf(length2), 4}));
            }
            sb = String.valueOf(ˉˆ.ˉˆ(bArr[0], bArr[1], bArr[2], bArr[3]));
        } else if (i != 75) {
            if (i == 78) {
                sb = String.valueOf(new C3732(bArr).m7883());
            }
            sb = AbstractC3712.m7792(bArr);
        } else {
            sb = String.valueOf(bArr[0] & 255);
        }
        return "mdta: key=" + str + ", value=" + sb;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ʽ */
    public final /* synthetic */ byte[] mo2790() {
        return null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ArrayList m3146() {
        AbstractC3731.m7848("Metadata is not an auxiliary tracks map", this.f3818.equals("auxiliary.tracks.map"));
        byte[] bArr = this.f3817;
        byte b = bArr[1];
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < b; i++) {
            arrayList.add(Integer.valueOf(bArr[i + 2]));
        }
        return arrayList;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ⁱˊ */
    public final /* synthetic */ C1495 mo2791() {
        return null;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ﹳٴ */
    public final /* synthetic */ void mo2792(C1459 c1459) {
    }
}
