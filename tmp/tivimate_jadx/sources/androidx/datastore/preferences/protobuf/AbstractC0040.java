package androidx.datastore.preferences.protobuf;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: androidx.datastore.preferences.protobuf.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0040 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final char[] f435;

    static {
        char[] cArr = new char[80];
        f435 = cArr;
        Arrays.fill(cArr, ' ');
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x019a, code lost:
    
        if (((java.lang.Integer) r7).intValue() == 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x019c, code lost:
    
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01af, code lost:
    
        if (java.lang.Float.floatToRawIntBits(((java.lang.Float) r7).floatValue()) == 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01c5, code lost:
    
        if (java.lang.Double.doubleToRawLongBits(((java.lang.Double) r7).doubleValue()) == 0) goto L75;
     */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m283(androidx.datastore.preferences.protobuf.AbstractC0003 r21, java.lang.StringBuilder r22, int r23) {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.AbstractC0040.m283(androidx.datastore.preferences.protobuf.ʻٴ, java.lang.StringBuilder, int):void");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m284(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                m284(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                m284(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        m285(i, sb);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i2 = 1; i2 < str.length(); i2++) {
                char charAt = str.charAt(i2);
                if (Character.isUpperCase(charAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(charAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            C0054 c0054 = C0054.f480;
            sb.append(com.bumptech.glide.ʽ.ˈ(new C0054(((String) obj).getBytes(AbstractC0013.f389))));
            sb.append('\"');
            return;
        }
        if (obj instanceof C0054) {
            sb.append(": \"");
            sb.append(com.bumptech.glide.ʽ.ˈ((C0054) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof AbstractC0003) {
            sb.append(" {");
            m283((AbstractC0003) obj, sb, i + 2);
            sb.append("\n");
            m285(i, sb);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i3 = i + 2;
        m284(sb, i3, "key", entry.getKey());
        m284(sb, i3, "value", entry.getValue());
        sb.append("\n");
        m285(i, sb);
        sb.append("}");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m285(int i, StringBuilder sb) {
        while (i > 0) {
            int i2 = 80;
            if (i <= 80) {
                i2 = i;
            }
            sb.append(f435, 0, i2);
            i -= i2;
        }
    }
}
