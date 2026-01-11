package p383;

import android.text.TextUtils;
import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: ⁱʼ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4577 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Map f17068;

    static {
        String property = System.getProperty("http.agent");
        if (!TextUtils.isEmpty(property)) {
            int length = property.length();
            StringBuilder sb = new StringBuilder(property.length());
            for (int i = 0; i < length; i++) {
                char charAt = property.charAt(i);
                if ((charAt > 31 || charAt == '\t') && charAt < 127) {
                    sb.append(charAt);
                } else {
                    sb.append('?');
                }
            }
            property = sb.toString();
        }
        HashMap hashMap = new HashMap(2);
        if (!TextUtils.isEmpty(property)) {
            hashMap.put("User-Agent", Collections.singletonList(new C4583(property)));
        }
        f17068 = DesugarCollections.unmodifiableMap(hashMap);
    }
}
