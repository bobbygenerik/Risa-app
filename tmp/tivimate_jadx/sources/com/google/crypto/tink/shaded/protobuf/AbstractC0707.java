package com.google.crypto.tink.shaded.protobuf;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0707 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final char[] f2994;

    static {
        char[] cArr = new char[80];
        f2994 = cArr;
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
    public static void m2509(com.google.crypto.tink.shaded.protobuf.AbstractC0725 r21, java.lang.StringBuilder r22, int r23) {
        /*
            Method dump skipped, instructions count: 561
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.AbstractC0707.m2509(com.google.crypto.tink.shaded.protobuf.ـˆ, java.lang.StringBuilder, int):void");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m2510(StringBuilder sb, int i, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                m2510(sb, i, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                m2510(sb, i, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        m2511(i, sb);
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
            C0740 c0740 = AbstractC0744.f3063;
            sb.append(com.bumptech.glide.ʽ.ˑﹳ(new C0740(((String) obj).getBytes(AbstractC0702.f2979))));
            sb.append('\"');
            return;
        }
        if (obj instanceof AbstractC0744) {
            sb.append(": \"");
            sb.append(com.bumptech.glide.ʽ.ˑﹳ((AbstractC0744) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof AbstractC0725) {
            sb.append(" {");
            m2509((AbstractC0725) obj, sb, i + 2);
            sb.append("\n");
            m2511(i, sb);
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
        m2510(sb, i3, "key", entry.getKey());
        m2510(sb, i3, "value", entry.getValue());
        sb.append("\n");
        m2511(i, sb);
        sb.append("}");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m2511(int i, StringBuilder sb) {
        while (i > 0) {
            int i2 = 80;
            if (i <= 80) {
                i2 = i;
            }
            sb.append(f2994, 0, i2);
            i -= i2;
        }
    }
}
