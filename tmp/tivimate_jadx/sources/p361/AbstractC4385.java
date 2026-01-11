package p361;

import j$.util.DesugarCollections;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;
import p164.C2571;

/* renamed from: ᵔᐧ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4385 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Map f16288;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4394[] f16289;

    static {
        C4394 c4394 = new C4394(C4394.f16341, "");
        C2571 c2571 = C4394.f16346;
        C4394 c43942 = new C4394(c2571, "GET");
        C4394 c43943 = new C4394(c2571, "POST");
        C2571 c25712 = C4394.f16344;
        C4394 c43944 = new C4394(c25712, "/");
        C4394 c43945 = new C4394(c25712, "/index.html");
        C2571 c25713 = C4394.f16345;
        C4394 c43946 = new C4394(c25713, "http");
        C4394 c43947 = new C4394(c25713, "https");
        C2571 c25714 = C4394.f16343;
        C4394[] c4394Arr = {c4394, c43942, c43943, c43944, c43945, c43946, c43947, new C4394(c25714, "200"), new C4394(c25714, "204"), new C4394(c25714, "206"), new C4394(c25714, "304"), new C4394(c25714, "400"), new C4394(c25714, "404"), new C4394(c25714, "500"), new C4394("accept-charset", ""), new C4394("accept-encoding", "gzip, deflate"), new C4394("accept-language", ""), new C4394("accept-ranges", ""), new C4394("accept", ""), new C4394("access-control-allow-origin", ""), new C4394("age", ""), new C4394("allow", ""), new C4394("authorization", ""), new C4394("cache-control", ""), new C4394("content-disposition", ""), new C4394("content-encoding", ""), new C4394("content-language", ""), new C4394("content-length", ""), new C4394("content-location", ""), new C4394("content-range", ""), new C4394("content-type", ""), new C4394("cookie", ""), new C4394("date", ""), new C4394("etag", ""), new C4394("expect", ""), new C4394("expires", ""), new C4394("from", ""), new C4394("host", ""), new C4394("if-match", ""), new C4394("if-modified-since", ""), new C4394("if-none-match", ""), new C4394("if-range", ""), new C4394("if-unmodified-since", ""), new C4394("last-modified", ""), new C4394("link", ""), new C4394("location", ""), new C4394("max-forwards", ""), new C4394("proxy-authenticate", ""), new C4394("proxy-authorization", ""), new C4394("range", ""), new C4394("referer", ""), new C4394("refresh", ""), new C4394("retry-after", ""), new C4394("server", ""), new C4394("set-cookie", ""), new C4394("strict-transport-security", ""), new C4394("transfer-encoding", ""), new C4394("user-agent", ""), new C4394("vary", ""), new C4394("via", ""), new C4394("www-authenticate", "")};
        f16289 = c4394Arr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(61, 1.0f);
        for (int i = 0; i < 61; i++) {
            if (!linkedHashMap.containsKey(c4394Arr[i].f16349)) {
                linkedHashMap.put(c4394Arr[i].f16349, Integer.valueOf(i));
            }
        }
        f16288 = DesugarCollections.unmodifiableMap(linkedHashMap);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m8868(C2571 c2571) {
        int mo5749 = c2571.mo5749();
        for (int i = 0; i < mo5749; i++) {
            byte mo5757 = c2571.mo5757(i);
            if (65 <= mo5757 && mo5757 < 91) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: ".concat(c2571.m5748()));
            }
        }
    }
}
