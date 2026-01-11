package p447;

import android.net.Uri;
import android.text.TextUtils;

/* renamed from: ﹶﾞ.ᐧˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5312 extends AbstractC5278 {
    /* renamed from: ˋˊ, reason: contains not printable characters */
    public static final boolean m10542(String str) {
        String str2 = (String) AbstractC5321.f20116.m10388(null);
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        for (String str3 : str2.split(",")) {
            if (str.equalsIgnoreCase(str3.trim())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public final String m10543(String str) {
        C5304 c5304 = this.f19910.f20276;
        C5337.m10599(c5304);
        String m10509 = c5304.m10509(str);
        if (TextUtils.isEmpty(m10509)) {
            return (String) AbstractC5321.f20169.m10388(null);
        }
        Uri parse = Uri.parse((String) AbstractC5321.f20169.m10388(null));
        Uri.Builder buildUpon = parse.buildUpon();
        String authority = parse.getAuthority();
        StringBuilder sb = new StringBuilder(String.valueOf(m10509).length() + 1 + String.valueOf(authority).length());
        sb.append(m10509);
        sb.append(".");
        sb.append(authority);
        buildUpon.authority(sb.toString());
        return buildUpon.build().toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x008e, code lost:
    
        if (java.lang.Math.abs(r7.hashCode() % 100) < r9.m1970().m1837()) goto L26;
     */
    /* renamed from: ﹶˎ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p447.C5236 m10544(java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 483
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5312.m10544(java.lang.String):ﹶﾞ.ʾˏ");
    }
}
