package p016;

import android.util.Log;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import p208.C2937;
import p361.AbstractC4398;
import p430.AbstractC5103;
import p435.AbstractC5143;
import p452.C5365;

/* renamed from: ʼ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0930 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Map f3850;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final CopyOnWriteArraySet f3851 = new CopyOnWriteArraySet();

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r2 = C2937.class.getPackage();
        String name = r2 != null ? r2.getName() : null;
        if (name != null) {
            linkedHashMap.put(name, "OkHttp");
        }
        linkedHashMap.put(C2937.class.getName(), "okhttp.OkHttpClient");
        linkedHashMap.put(AbstractC4398.class.getName(), "okhttp.Http2");
        linkedHashMap.put(C5365.class.getName(), "okhttp.TaskRunner");
        linkedHashMap.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        f3850 = AbstractC5103.m10044(linkedHashMap);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m3197(String str, int i, String str2, Throwable th) {
        int min;
        String str3 = (String) f3850.get(str);
        if (str3 == null) {
            str3 = AbstractC5143.m10106(23, str);
        }
        if (Log.isLoggable(str3, i)) {
            if (th != null) {
                str2 = str2 + '\n' + Log.getStackTraceString(th);
            }
            int length = str2.length();
            int i2 = 0;
            while (i2 < length) {
                int m10118 = AbstractC5143.m10118(str2, '\n', i2, 4);
                if (m10118 == -1) {
                    m10118 = length;
                }
                while (true) {
                    min = Math.min(m10118, i2 + 4000);
                    str2.substring(i2, min);
                    if (min >= m10118) {
                        break;
                    } else {
                        i2 = min;
                    }
                }
                i2 = min + 1;
            }
        }
    }
}
