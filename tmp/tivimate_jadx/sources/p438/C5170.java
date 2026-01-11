package p438;

import ar.tvplayer.core.domain.ʽﹳ;
import com.parse.ʽˑ;
import p000.C0754;
import p027.C1090;
import p035.AbstractC1220;
import p123.C2127;
import p150.C2420;
import p150.InterfaceC2417;
import p246.InterfaceC3291;
import p320.AbstractC3943;
import ـˎ.ˈ;

/* renamed from: ﹶٴ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5170 implements InterfaceC3291 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C5170 f19465 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C5178 f19464 = new C5178("kotlin.Double", C2420.f9347);

    @Override // p246.InterfaceC3291
    /* renamed from: ʽ */
    public final Object mo4336(ʽˑ r7) {
        ʽˑ r0 = (ʽˑ) r7.ᴵᵔ;
        String str = r0.ᵔʾ();
        try {
            double parseDouble = Double.parseDouble(str);
            ((C2127) r7.ʽʽ).f8311.getClass();
            if (!Double.isInfinite(parseDouble) && !Double.isNaN(parseDouble)) {
                return Double.valueOf(parseDouble);
            }
            ʽˑ.ʽʽ(r0, "Unexpected special floating-point value " + Double.valueOf(parseDouble) + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification", 0, 2);
            throw null;
        } catch (IllegalArgumentException unused) {
            ʽˑ.ʽʽ(r0, AbstractC1220.m3781('\'', "Failed to parse type 'double' for input '", str), 0, 6);
            throw null;
        }
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ˈ */
    public final InterfaceC2417 mo4337() {
        return f19464;
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ﹳٴ */
    public final void mo4339(C0754 c0754, Object obj) {
        double doubleValue = ((Number) obj).doubleValue();
        ʽﹳ r6 = (ʽﹳ) c0754.f3116;
        if (c0754.f3122) {
            c0754.m2743(String.valueOf(doubleValue));
        } else {
            ((C1090) r6.ᴵˊ).m3467(String.valueOf(doubleValue));
        }
        ((ˈ) c0754.f3119).getClass();
        if (Double.isInfinite(doubleValue) || Double.isNaN(doubleValue)) {
            throw new IllegalArgumentException("Unexpected special floating-point value " + Double.valueOf(doubleValue) + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) AbstractC3943.m8117(((C1090) r6.ᴵˊ).toString(), -1)));
        }
    }
}
