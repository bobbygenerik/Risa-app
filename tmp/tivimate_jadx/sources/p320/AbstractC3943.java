package p320;

import com.parse.ʽˑ;
import p010.AbstractC0844;
import p123.C2127;
import p150.AbstractC2416;
import p150.AbstractC2421;
import p150.C2418;
import p150.C2422;
import p150.InterfaceC2417;
import p152.AbstractC2444;
import p366.C4483;
import ˉᵎ.ⁱˊ;
import ᴵˋ.ˊʻ;

/* renamed from: ᴵˉ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3943 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3948 f15240 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final void m8115(ʽˑ r2, String str) {
        r2.ᴵˊ(r2.ᴵˊ - 1, "Trailing comma before the end of JSON ".concat(str), "Trailing commas are non-complaint JSON and not allowed by default. Use 'allowTrailingCommas = true' in 'Json {}' builder to support them.");
        throw null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static /* synthetic */ void m8116(ʽˑ r1) {
        m8115(r1, "object");
        throw null;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final CharSequence m8117(CharSequence charSequence, int i) {
        if (charSequence.length() >= 200) {
            if (i != -1) {
                int i2 = i - 30;
                int i3 = i + 30;
                String str = i2 <= 0 ? "" : ".....";
                String str2 = i3 >= charSequence.length() ? "" : ".....";
                StringBuilder m3020 = AbstractC0844.m3020(str);
                if (i2 < 0) {
                    i2 = 0;
                }
                int length = charSequence.length();
                if (i3 > length) {
                    i3 = length;
                }
                m3020.append(charSequence.subSequence(i2, i3).toString());
                m3020.append(str2);
                return m3020.toString();
            }
            int length2 = charSequence.length() - 60;
            if (length2 > 0) {
                return "....." + charSequence.subSequence(length2, charSequence.length()).toString();
            }
        }
        return charSequence;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final EnumC3945 m8118(C2127 c2127, InterfaceC2417 interfaceC2417) {
        ˊʻ mo5520 = interfaceC2417.mo5520();
        if (mo5520 instanceof AbstractC2421) {
            return EnumC3945.f15246;
        }
        if (AbstractC2444.m5562(mo5520, C2422.f9352)) {
            return EnumC3945.f15244;
        }
        if (!AbstractC2444.m5562(mo5520, C2422.f9353)) {
            return EnumC3945.f15243;
        }
        InterfaceC2417 m8120 = m8120(interfaceC2417.mo5521(0), c2127.f8310);
        ˊʻ mo55202 = m8120.mo5520();
        if ((mo55202 instanceof AbstractC2416) || AbstractC2444.m5562(mo55202, C2418.f9345)) {
            return EnumC3945.f15248;
        }
        c2127.f8311.getClass();
        throw new IllegalArgumentException("Value of type '" + m8120.mo5525() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + m8120.mo5520() + "'.\nUse 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final byte m8119(char c) {
        if (c < '~') {
            return C3941.f15238[c];
        }
        return (byte) 0;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final InterfaceC2417 m8120(InterfaceC2417 interfaceC2417, C4483 c4483) {
        if (!AbstractC2444.m5562(interfaceC2417.mo5520(), C2418.f9344)) {
            return interfaceC2417.mo5527() ? m8120(interfaceC2417.mo5521(0), c4483) : interfaceC2417;
        }
        ⁱˊ.ᵔﹳ(interfaceC2417);
        return interfaceC2417;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final void m8121(C2127 c2127, InterfaceC2417 interfaceC2417) {
        if (AbstractC2444.m5562(interfaceC2417.mo5520(), C2422.f9351)) {
            c2127.f8311.getClass();
        }
    }
}
