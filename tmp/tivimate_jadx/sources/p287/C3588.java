package p287;

import com.google.android.gms.internal.measurement.ᵎ;
import j$.util.DesugarCollections;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;
import p139.InterfaceC2364;
import p318.C3919;

/* renamed from: ٴי.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3588 implements InterfaceC2364 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final String f14021;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final Set f14022;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C3588 f14023;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C3588 f14024;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f14025;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f14026;

    static {
        String str = ᵎ.ˉˆ("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
        f14021 = str;
        String str2 = ᵎ.ˉˆ("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        String str3 = ᵎ.ˉˆ("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        f14022 = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(new C3919("proto"), new C3919("json"))));
        f14023 = new C3588(str, null);
        f14024 = new C3588(str2, str3);
    }

    public C3588(String str, String str2) {
        this.f14026 = str;
        this.f14025 = str2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C3588 m7549(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] split = str.substring(2).split(Pattern.quote("\\"), 2);
        if (split.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = split[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = split[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new C3588(str2, str3);
    }
}
