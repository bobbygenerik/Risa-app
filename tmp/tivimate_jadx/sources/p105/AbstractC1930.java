package p105;

import org.json.JSONObject;
import p099.C1902;
import ﹳי.ʽ;

/* renamed from: ˆי.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1930 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ʽ f7678;

    static {
        C1902 c1902 = new C1902();
        C1933 c1933 = C1933.f7691;
        c1902.m4849(AbstractC1930.class, c1933);
        c1902.m4849(C1932.class, c1933);
        f7678 = new ʽ(c1902);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1932 m4892(String str) {
        JSONObject jSONObject = new JSONObject(str);
        String string = jSONObject.getString("rolloutId");
        String string2 = jSONObject.getString("parameterKey");
        String string3 = jSONObject.getString("parameterValue");
        String string4 = jSONObject.getString("variantId");
        long j = jSONObject.getLong("templateVersion");
        if (string3.length() > 256) {
            string3 = string3.substring(0, 256);
        }
        return new C1932(j, string, string2, string3, string4);
    }
}
