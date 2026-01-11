package p127;

import androidx.media3.common.ParserException;
import java.util.regex.Pattern;
import p035.AbstractC1220;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ˈـ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2174 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f8508;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f8509;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8510;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f8511;

    public C2174(int i, int i2, int i3, String str) {
        this.f8511 = i;
        this.f8510 = str;
        this.f8508 = i2;
        this.f8509 = i3;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2174 m5162(String str) {
        String str2 = AbstractC3712.f14481;
        String[] split = str.split(" ", 2);
        AbstractC3731.m7849(split.length == 2);
        String str3 = split[0];
        Pattern pattern = AbstractC2166.f8450;
        try {
            int parseInt = Integer.parseInt(str3);
            int i = -1;
            String[] split2 = split[1].trim().split("/", -1);
            AbstractC3731.m7849(split2.length >= 2);
            String str4 = split2[1];
            try {
                int parseInt2 = Integer.parseInt(str4);
                if (split2.length == 3) {
                    String str5 = split2[2];
                    try {
                        i = Integer.parseInt(str5);
                    } catch (NumberFormatException e) {
                        throw ParserException.m740(str5, e);
                    }
                }
                return new C2174(parseInt, parseInt2, i, split2[0]);
            } catch (NumberFormatException e2) {
                throw ParserException.m740(str4, e2);
            }
        } catch (NumberFormatException e3) {
            throw ParserException.m740(str3, e3);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2174.class == obj.getClass()) {
            C2174 c2174 = (C2174) obj;
            if (this.f8511 == c2174.f8511 && this.f8510.equals(c2174.f8510) && this.f8508 == c2174.f8508 && this.f8509 == c2174.f8509) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((AbstractC1220.m3780((217 + this.f8511) * 31, 31, this.f8510) + this.f8508) * 31) + this.f8509;
    }
}
