package p002;

import com.google.android.gms.internal.measurement.ᵎ;
import java.util.EnumSet;
import java.util.HashMap;
import p197.C2900;
import p197.C2902;
import p223.C3056;
import p317.AbstractC3913;
import p317.AbstractC3914;
import p449.AbstractC5359;
import p449.InterfaceC5360;
import ﹳٴ.ﹳٴ;

/* renamed from: ʻʽ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0768 extends ᵎ {

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static final InterfaceC5360 f3166 = AbstractC5359.m10750(C0768.class);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f3167;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f3168;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f3169;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public byte[] f3170;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public HashMap f3171;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f3172;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public EnumSet f3173;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public byte[] f3174;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public String f3175;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final void m2798(C2902 c2902) {
        c2902.m6422(8, AbstractC3913.f15175);
        C2900 c2900 = c2902.f10939;
        c2900.m6402(c2902);
        this.f3167 = c2900.m6406(c2902);
        c2902.m6414(2);
        this.f3168 = c2902.m6418();
        this.f3173 = AbstractC3914.m8087(c2900.m6402(c2902), EnumC0770.class);
        byte[] bArr = new byte[8];
        c2902.m6411(8, bArr);
        this.f3170 = bArr;
        c2902.m6414(8);
        if (this.f3173.contains(EnumC0770.f3182)) {
            this.f3172 = c2900.m6406(c2902);
            c2902.m6414(2);
            this.f3169 = c2902.m6418();
        } else {
            c2902.m6414(8);
        }
        boolean contains = this.f3173.contains(EnumC0770.f3186);
        InterfaceC5360 interfaceC5360 = f3166;
        if (contains) {
            C0767 c0767 = new C0767(0);
            c0767.f3161 = (EnumC0771) AbstractC3914.m8091(c2902.m6410(), EnumC0771.class, null);
            c0767.f3162 = (EnumC0772) AbstractC3914.m8091(c2902.m6410(), EnumC0772.class, null);
            c0767.f3164 = c2900.m6406(c2902);
            c2902.m6414(3);
            c0767.f3163 = (EnumC0775) AbstractC3914.m8091(c2902.m6410(), EnumC0775.class, null);
            interfaceC5360.mo4098(c0767, "Windows version = {}");
        } else {
            c2902.m6414(8);
        }
        int i = this.f3167;
        if (i > 0) {
            c2902.f10937 = this.f3168;
            this.f3175 = c2902.m6422(i / 2, AbstractC3913.f15172);
        }
        HashMap hashMap = this.f3171;
        int i2 = this.f3172;
        if (i2 > 0) {
            c2902.f10937 = this.f3169;
            byte[] bArr2 = new byte[i2];
            c2902.m6411(i2, bArr2);
            this.f3174 = bArr2;
            c2902.f10937 = this.f3169;
            while (true) {
                int m6406 = c2900.m6406(c2902);
                EnumC0774 enumC0774 = (EnumC0774) AbstractC3914.m8091(m6406, EnumC0774.class, null);
                interfaceC5360.mo4082("NTLM channel contains {}({}) TargetInfo", enumC0774, Integer.valueOf(m6406));
                int m64062 = c2900.m6406(c2902);
                switch (enumC0774.ordinal()) {
                    case 0:
                        return;
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 9:
                        hashMap.put(enumC0774, c2902.m6422(m64062 / 2, AbstractC3913.f15172));
                        break;
                    case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                        hashMap.put(enumC0774, Long.valueOf(C2900.f10933.m6402(c2902)));
                        break;
                    case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                        hashMap.put(enumC0774, ﹳٴ.ٴʼ(c2902));
                        break;
                    case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    case 10:
                        break;
                    default:
                        throw new IllegalStateException("Encountered unhandled AvId: " + enumC0774);
                }
            }
        }
    }
}
