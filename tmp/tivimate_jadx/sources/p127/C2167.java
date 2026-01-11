package p127;

import android.net.Uri;
import androidx.media3.common.ParserException;
import java.util.Arrays;
import p017.AbstractC0951;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p017.C0956;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ˈـ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2167 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Uri f8452;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f8453;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f8454;

    public C2167(int i, long j, Uri uri) {
        this.f8454 = j;
        this.f8453 = i;
        this.f8452 = uri;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Uri m5153(Uri uri, String str) {
        String scheme = uri.getScheme();
        scheme.getClass();
        AbstractC3731.m7849(scheme.equals("rtsp"));
        Uri parse = Uri.parse(str);
        if (parse.isAbsolute()) {
            return parse;
        }
        Uri parse2 = Uri.parse("rtsp://" + str);
        String uri2 = uri.toString();
        String host = parse2.getHost();
        host.getClass();
        return host.equals(uri.getHost()) ? parse2 : uri2.endsWith("/") ? AbstractC3731.m7858(uri2, str) : AbstractC3731.m7858(uri2.concat("/"), str);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C0956 m5154(Uri uri, String str) {
        AbstractC1004.m3282(4, "initialCapacity");
        Object[] objArr = new Object[4];
        String str2 = AbstractC3712.f14481;
        int i = -1;
        String[] split = str.split(",", -1);
        int length = split.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            String str3 = split[i2];
            String[] split2 = str3.split(";", i);
            int length2 = split2.length;
            int i4 = i;
            int i5 = i2;
            long j = -9223372036854775807L;
            int i6 = 0;
            Uri uri2 = null;
            while (i6 < length2) {
                String str4 = split2[i6];
                try {
                    String[] split3 = str4.split("=", 2);
                    String str5 = split3[0];
                    String str6 = split3[1];
                    int hashCode = str5.hashCode();
                    String[] strArr = split;
                    if (hashCode != 113759) {
                        if (hashCode != 116079) {
                            if (hashCode == 1524180539 && str5.equals("rtptime")) {
                                j = Long.parseLong(str6);
                                i6++;
                                split = strArr;
                            }
                            throw ParserException.m740(str5, null);
                        }
                        if (!str5.equals("url")) {
                            throw ParserException.m740(str5, null);
                        }
                        uri2 = m5153(uri, str6);
                        i6++;
                        split = strArr;
                    } else {
                        if (!str5.equals("seq")) {
                            throw ParserException.m740(str5, null);
                        }
                        i4 = Integer.parseInt(str6);
                        i6++;
                        split = strArr;
                    }
                } catch (Exception e) {
                    throw ParserException.m740(str4, e);
                }
                throw ParserException.m740(str4, e);
            }
            String[] strArr2 = split;
            if (uri2 != null && uri2.getScheme() != null) {
                i = -1;
                if (i4 != -1 || j != -9223372036854775807L) {
                    C2167 c2167 = new C2167(i4, j, uri2);
                    int i7 = i3 + 1;
                    int m3234 = AbstractC0951.m3234(objArr.length, i7);
                    if (m3234 > objArr.length) {
                        objArr = Arrays.copyOf(objArr, m3234);
                    }
                    objArr[i3] = c2167;
                    i3 = i7;
                    split = strArr2;
                    i2 = i5 + 1;
                }
            }
            throw ParserException.m740(str3, null);
        }
        return AbstractC0993.m3259(i3, objArr);
    }
}
