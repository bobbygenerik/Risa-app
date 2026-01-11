package p042;

import p187.C2841;
import ʻʿ.ᵔﹳ;

/* renamed from: ʽˆ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1319 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1317 f5063;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C2841 f5062 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final String f5059 = m3947("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final String f5060 = m3947("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final ᵔﹳ f5061 = new ᵔﹳ(21);

    public C1319(C1317 c1317) {
        this.f5063 = c1317;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m3947(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }
}
