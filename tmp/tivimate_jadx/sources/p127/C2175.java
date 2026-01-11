package p127;

import androidx.media3.common.ParserException;
import java.util.HashMap;
import java.util.Locale;
import p017.AbstractC0996;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p307.AbstractC3740;

/* renamed from: ˈـ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2175 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public String f8512;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f8513;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f8514;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public String f8516;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public String f8517;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f8518;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f8519;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final HashMap f8515 = new HashMap();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f8520 = -1;

    public C2175(int i, int i2, String str, String str2) {
        this.f8519 = str;
        this.f8518 = i;
        this.f8513 = str2;
        this.f8514 = i2;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String m5163(int i, int i2, int i3, String str) {
        String str2 = AbstractC3712.f14481;
        Locale locale = Locale.US;
        return i + " " + str + "/" + i2 + "/" + i3;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2147 m5164() {
        String m5163;
        C2174 m5162;
        HashMap hashMap = this.f8515;
        try {
            if (hashMap.containsKey("rtpmap")) {
                String str = (String) hashMap.get("rtpmap");
                String str2 = AbstractC3712.f14481;
                m5162 = C2174.m5162(str);
            } else {
                int i = this.f8514;
                AbstractC3731.m7849(i < 96);
                if (i == 0) {
                    m5163 = m5163(0, 8000, 1, "PCMU");
                } else if (i == 8) {
                    m5163 = m5163(8, 8000, 1, "PCMA");
                } else if (i == 10) {
                    m5163 = m5163(10, 44100, 2, "L16");
                } else {
                    if (i != 11) {
                        throw new IllegalStateException(AbstractC3740.m7932(i, "Unsupported static paylod type "));
                    }
                    m5163 = m5163(11, 44100, 1, "L16");
                }
                m5162 = C2174.m5162(m5163);
            }
            return new C2147(this, AbstractC0996.m3270(hashMap), m5162);
        } catch (ParserException e) {
            throw new IllegalStateException(e);
        }
    }
}
