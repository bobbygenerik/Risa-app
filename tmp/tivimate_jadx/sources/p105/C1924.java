package p105;

import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: ˆי.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1924 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f7655;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f7657 = new HashMap();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f7656 = 64;

    public C1924(int i) {
        this.f7655 = i;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String m4865(int i, String str) {
        if (str != null) {
            str = str.trim();
            if (str.length() > i) {
                return str.substring(0, i);
            }
        }
        return str;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final synchronized boolean m4866(String str) {
        String m4865 = m4865(this.f7655, "com.crashlytics.version-control-info");
        if (this.f7657.size() >= this.f7656 && !this.f7657.containsKey(m4865)) {
            String str2 = "Ignored entry \"com.crashlytics.version-control-info\" when adding custom keys. Maximum allowable: " + this.f7656;
            return false;
        }
        String m48652 = m4865(this.f7655, str);
        String str3 = (String) this.f7657.get(m4865);
        if (str3 == null ? m48652 == null : str3.equals(m48652)) {
            return false;
        }
        this.f7657.put(m4865, m48652);
        return true;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final synchronized void m4867(Map map) {
        try {
            int i = 0;
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw new IllegalArgumentException("Custom attribute key must not be null.");
                }
                String m4865 = m4865(this.f7655, str);
                if (this.f7657.size() >= this.f7656 && !this.f7657.containsKey(m4865)) {
                    i++;
                }
                String str2 = (String) entry.getValue();
                this.f7657.put(m4865, str2 == null ? "" : m4865(this.f7655, str2));
            }
            if (i > 0) {
                String str3 = "Ignored " + i + " entries when adding custom keys. Maximum allowable: " + this.f7656;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized Map m4868() {
        return DesugarCollections.unmodifiableMap(new HashMap(this.f7657));
    }
}
