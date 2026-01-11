package p055;

import java.util.Arrays;
import p035.AbstractC1220;
import p305.AbstractC3712;
import p307.AbstractC3740;

/* renamed from: ʽⁱ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1446 {

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C1446 f5631 = new C1446(1, 2, 3, null, -1, -1);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f5632;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final byte[] f5633;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f5634;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f5635;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f5636;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f5637;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f5638;

    static {
        AbstractC1220.m3785(0, 1, 2, 3, 4);
        AbstractC3712.m7802(5);
    }

    public C1446(int i, int i2, int i3, byte[] bArr, int i4, int i5) {
        this.f5637 = i;
        this.f5636 = i2;
        this.f5632 = i3;
        this.f5633 = bArr;
        this.f5634 = i4;
        this.f5638 = i5;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static String m4232(int i) {
        return i != -1 ? i != 10 ? i != 1 ? i != 2 ? i != 3 ? i != 6 ? i != 7 ? AbstractC3740.m7932(i, "Undefined color transfer ") : "HLG" : "ST2084 PQ" : "SDR SMPTE 170M" : "sRGB" : "Linear" : "Gamma 2.2" : "Unset color transfer";
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static boolean m4233(C1446 c1446) {
        if (c1446 == null) {
            return true;
        }
        int i = c1446.f5637;
        if (i != -1 && i != 1 && i != 2) {
            return false;
        }
        int i2 = c1446.f5636;
        if (i2 != -1 && i2 != 2) {
            return false;
        }
        int i3 = c1446.f5632;
        if ((i3 != -1 && i3 != 3) || c1446.f5633 != null) {
            return false;
        }
        int i4 = c1446.f5638;
        if (i4 != -1 && i4 != 8) {
            return false;
        }
        int i5 = c1446.f5634;
        return i5 == -1 || i5 == 8;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m4234(int i) {
        if (i == 1) {
            return 3;
        }
        if (i == 4) {
            return 10;
        }
        if (i == 13) {
            return 2;
        }
        if (i == 16) {
            return 6;
        }
        if (i != 18) {
            return (i == 6 || i == 7) ? 3 : -1;
        }
        return 7;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String m4235(int i) {
        return i != -1 ? i != 6 ? i != 1 ? i != 2 ? AbstractC3740.m7932(i, "Undefined color space ") : "BT601" : "BT709" : "BT2020" : "Unset color space";
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m4236(int i) {
        return i != -1 ? i != 1 ? i != 2 ? AbstractC3740.m7932(i, "Undefined color range ") : "Limited range" : "Full range" : "Unset color range";
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m4237(int i) {
        if (i == 1) {
            return 1;
        }
        if (i != 9) {
            return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
        }
        return 6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1446.class == obj.getClass()) {
            C1446 c1446 = (C1446) obj;
            if (this.f5637 == c1446.f5637 && this.f5636 == c1446.f5636 && this.f5632 == c1446.f5632 && Arrays.equals(this.f5633, c1446.f5633) && this.f5634 == c1446.f5634 && this.f5638 == c1446.f5638) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.f5635 == 0) {
            this.f5635 = ((((Arrays.hashCode(this.f5633) + ((((((527 + this.f5637) * 31) + this.f5636) * 31) + this.f5632) * 31)) * 31) + this.f5634) * 31) + this.f5638;
        }
        return this.f5635;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ColorInfo(");
        sb.append(m4235(this.f5637));
        sb.append(", ");
        sb.append(m4236(this.f5636));
        sb.append(", ");
        sb.append(m4232(this.f5632));
        sb.append(", ");
        sb.append(this.f5633 != null);
        sb.append(", ");
        String str2 = "NA";
        int i = this.f5634;
        if (i != -1) {
            str = i + "bit Luma";
        } else {
            str = "NA";
        }
        sb.append(str);
        sb.append(", ");
        int i2 = this.f5638;
        if (i2 != -1) {
            str2 = i2 + "bit Chroma";
        }
        return AbstractC1220.m3775(sb, str2, ")");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m4238() {
        return (this.f5637 == -1 || this.f5636 == -1 || this.f5632 == -1) ? false : true;
    }
}
