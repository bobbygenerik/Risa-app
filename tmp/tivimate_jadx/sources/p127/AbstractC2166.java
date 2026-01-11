package p127;

import android.net.Uri;
import androidx.media3.common.ParserException;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p002.C0767;
import p017.AbstractC0951;
import p017.AbstractC0983;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p017.C0956;
import p017.C0981;
import p017.C0982;
import p079.C1681;
import p223.C3056;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ˈـ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2166 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Pattern f8450 = Pattern.compile("([A-Z_]+) (.*) RTSP/1\\.0");

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Pattern f8449 = Pattern.compile("RTSP/1\\.0 (\\d+) (.+)");

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Pattern f8444 = Pattern.compile("Content-Length:\\s?(\\d+)", 2);

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final Pattern f8445 = Pattern.compile("([\\w$\\-_.+]+)(?:;\\s?timeout=(\\d+))?");

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Pattern f8446 = Pattern.compile("Digest realm=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\",\\s?(?:domain=\"(.+)\",\\s?)?nonce=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\"(?:,\\s?opaque=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\")?");

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final Pattern f8451 = Pattern.compile("Basic realm=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\"");

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final String f8447 = new String(new byte[]{10});

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final String f8448 = new String(new byte[]{13, 10});

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C1681 m5146(String str) {
        long parseInt;
        Matcher matcher = f8445.matcher(str);
        if (!matcher.matches()) {
            throw ParserException.m740(str, null);
        }
        String group = matcher.group(1);
        group.getClass();
        if (matcher.group(2) != null) {
            try {
                parseInt = Integer.parseInt(r0) * 1000;
            } catch (NumberFormatException e) {
                throw ParserException.m740(str, e);
            }
        } else {
            parseInt = 60000;
        }
        return new C1681(group, parseInt, 3);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static C2150 m5147(Uri uri) {
        String userInfo = uri.getUserInfo();
        if (userInfo == null || !userInfo.contains(":")) {
            return null;
        }
        String str = AbstractC3712.f14481;
        String[] split = userInfo.split(":", 2);
        return new C2150(0, split[0], split[1]);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C0767 m5148(String str) {
        Matcher matcher = f8446.matcher(str);
        if (matcher.find()) {
            String group = matcher.group(1);
            group.getClass();
            String group2 = matcher.group(3);
            group2.getClass();
            String group3 = matcher.group(4);
            return new C0767(2, group, group2, group3 != null ? group3 : "");
        }
        Matcher matcher2 = f8451.matcher(str);
        if (matcher2.matches()) {
            String group4 = matcher2.group(1);
            group4.getClass();
            return new C0767(1, group4, "", "");
        }
        throw ParserException.m740("Invalid WWW-Authenticate header " + str, null);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static String m5149(int i) {
        switch (i) {
            case 1:
                return "ANNOUNCE";
            case 2:
                return "DESCRIBE";
            case 3:
                return "GET_PARAMETER";
            case 4:
                return "OPTIONS";
            case 5:
                return "PAUSE";
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return "PLAY";
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return "PLAY_NOTIFY";
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return "RECORD";
            case 9:
                return "REDIRECT";
            case 10:
                return "SETUP";
            case 11:
                return "SET_PARAMETER";
            case 12:
                return "TEARDOWN";
            default:
                throw new IllegalStateException();
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C0956 m5150(String str) {
        if (str == null) {
            C0982 c0982 = AbstractC0993.f3977;
            return C0956.f3901;
        }
        AbstractC1004.m3282(4, "initialCapacity");
        Object[] objArr = new Object[4];
        String str2 = AbstractC3712.f14481;
        int i = 0;
        for (String str3 : str.split(",\\s?", -1)) {
            int m5151 = m5151(str3);
            if (m5151 != 0) {
                Integer valueOf = Integer.valueOf(m5151);
                int i2 = i + 1;
                int m3234 = AbstractC0951.m3234(objArr.length, i2);
                if (m3234 > objArr.length) {
                    objArr = Arrays.copyOf(objArr, m3234);
                }
                objArr[i] = valueOf;
                i = i2;
            }
        }
        return AbstractC0993.m3259(i, objArr);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m5151(String str) {
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1881579439:
                if (str.equals("RECORD")) {
                    c = 0;
                    break;
                }
                break;
            case -880847356:
                if (str.equals("TEARDOWN")) {
                    c = 1;
                    break;
                }
                break;
            case -702888512:
                if (str.equals("GET_PARAMETER")) {
                    c = 2;
                    break;
                }
                break;
            case -531492226:
                if (str.equals("OPTIONS")) {
                    c = 3;
                    break;
                }
                break;
            case -84360524:
                if (str.equals("PLAY_NOTIFY")) {
                    c = 4;
                    break;
                }
                break;
            case 2458420:
                if (str.equals("PLAY")) {
                    c = 5;
                    break;
                }
                break;
            case 6481884:
                if (str.equals("REDIRECT")) {
                    c = 6;
                    break;
                }
                break;
            case 71242700:
                if (str.equals("SET_PARAMETER")) {
                    c = 7;
                    break;
                }
                break;
            case 75902422:
                if (str.equals("PAUSE")) {
                    c = '\b';
                    break;
                }
                break;
            case 78791261:
                if (str.equals("SETUP")) {
                    c = '\t';
                    break;
                }
                break;
            case 133006441:
                if (str.equals("ANNOUNCE")) {
                    c = '\n';
                    break;
                }
                break;
            case 1800840907:
                if (str.equals("DESCRIBE")) {
                    c = 11;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 8;
            case 1:
                return 12;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 7;
            case 5:
                return 6;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return 9;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return 11;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return 5;
            case '\t':
                return 10;
            case '\n':
                return 1;
            case 11:
                return 2;
            default:
                return 0;
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [ʼʻ.ˊʻ, ʼʻ.ʽʽ] */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static C0956 m5152(C2148 c2148) {
        AbstractC3731.m7849(c2148.f8353.m5112("CSeq") != null);
        ?? abstractC0951 = new AbstractC0951(4);
        Object[] objArr = {m5149(c2148.f8355), c2148.f8356, "RTSP/1.0"};
        String str = AbstractC3712.f14481;
        abstractC0951.m3239(String.format(Locale.US, "%s %s %s", objArr));
        C0981 c0981 = c2148.f8353.f8383;
        AbstractC0983 it = c0981.f3953.keySet().iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            AbstractC0993 m3252 = c0981.m3252(str2);
            for (int i = 0; i < m3252.size(); i++) {
                abstractC0951.m3239(String.format(Locale.US, "%s: %s", str2, m3252.get(i)));
            }
        }
        abstractC0951.m3239("");
        abstractC0951.m3239(c2148.f8354);
        return abstractC0951.m3249();
    }
}
