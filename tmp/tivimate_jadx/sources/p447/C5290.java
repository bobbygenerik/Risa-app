package p447;

import android.os.Bundle;
import android.text.TextUtils;
import j$.util.Objects;
import java.util.HashMap;
import java.util.Map;
import p017.C0956;

/* renamed from: ﹶﾞ.יʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5290 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f19961;

    public C5290(Map map) {
        HashMap hashMap = new HashMap();
        this.f19961 = hashMap;
        hashMap.putAll(map);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C5290) {
            return m10486().equalsIgnoreCase(((C5290) obj).m10486());
        }
        return false;
    }

    public final int hashCode() {
        return m10486().hashCode();
    }

    public final String toString() {
        return m10486();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String m10482() {
        HashMap hashMap = this.f19961;
        StringBuilder sb = new StringBuilder("1");
        int i = -1;
        try {
            String str = (String) hashMap.get("CmpSdkID");
            if (!TextUtils.isEmpty(str)) {
                i = Integer.parseInt(str);
            }
        } catch (NumberFormatException unused) {
        }
        if (i < 0 || i > 4095) {
            sb.append("00");
        } else {
            sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i >> 6));
            sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i & 63));
        }
        int m10484 = m10484();
        if (m10484 < 0 || m10484 > 63) {
            sb.append("0");
        } else {
            sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(m10484));
        }
        int i2 = true != "1".equals(hashMap.get("gdprApplies")) ? 0 : 2;
        int i3 = i2 | 4;
        if ("1".equals(hashMap.get("EnableAdvertiserConsentMode"))) {
            i3 = i2 | 12;
        }
        sb.append("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i3));
        return sb.toString();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Bundle m10483() {
        int m10484;
        HashMap hashMap = this.f19961;
        if ("1".equals(hashMap.get("GoogleConsent")) && (m10484 = m10484()) >= 0) {
            String str = (String) hashMap.get("PurposeConsents");
            if (!TextUtils.isEmpty(str)) {
                Bundle bundle = new Bundle();
                String str2 = "denied";
                if (str.length() > 0) {
                    bundle.putString("ad_storage", str.charAt(0) == '1' ? "granted" : "denied");
                }
                if (str.length() > 3) {
                    bundle.putString("ad_personalization", (str.charAt(2) == '1' && str.charAt(3) == '1') ? "granted" : "denied");
                }
                if (str.length() > 6 && m10484 >= 4) {
                    if (str.charAt(0) == '1' && str.charAt(6) == '1') {
                        str2 = "granted";
                    }
                    bundle.putString("ad_user_data", str2);
                }
                return bundle;
            }
        }
        return Bundle.EMPTY;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m10484() {
        try {
            String str = (String) this.f19961.get("PolicyVersion");
            if (TextUtils.isEmpty(str)) {
                return -1;
            }
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Bundle m10485() {
        C5254 c5254 = AbstractC5321.f20174;
        boolean booleanValue = ((Boolean) c5254.m10388(null)).booleanValue();
        HashMap hashMap = this.f19961;
        if (!booleanValue ? !(!"1".equals(hashMap.get("GoogleConsent")) || !"1".equals(hashMap.get("gdprApplies")) || !"1".equals(hashMap.get("EnableAdvertiserConsentMode"))) : !(!"1".equals(hashMap.get("gdprApplies")) || !"1".equals(hashMap.get("EnableAdvertiserConsentMode")))) {
            if (((Boolean) c5254.m10388(null)).booleanValue() && hashMap.get("Version") != null) {
                if (m10484() >= 0) {
                    Bundle bundle = new Bundle();
                    bundle.putString("ad_storage", true != Objects.equals(hashMap.get("AuthorizePurpose1"), "1") ? "denied" : "granted");
                    bundle.putString("ad_personalization", (Objects.equals(hashMap.get("AuthorizePurpose3"), "1") && Objects.equals(hashMap.get("AuthorizePurpose4"), "1")) ? "granted" : "denied");
                    if (m10484() >= 4) {
                        bundle.putString("ad_user_data", (Objects.equals(hashMap.get("AuthorizePurpose1"), "1") && Objects.equals(hashMap.get("AuthorizePurpose7"), "1")) ? "granted" : "denied");
                    }
                    return bundle;
                }
            }
            return m10483();
        }
        return Bundle.EMPTY;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String m10486() {
        StringBuilder sb = new StringBuilder();
        C0956 c0956 = AbstractC5288.f19955;
        int i = c0956.f3903;
        for (int i2 = 0; i2 < i; i2++) {
            String str = (String) c0956.get(i2);
            HashMap hashMap = this.f19961;
            if (hashMap.containsKey(str)) {
                if (sb.length() > 0) {
                    sb.append(";");
                }
                sb.append(str);
                sb.append("=");
                sb.append((String) hashMap.get(str));
            }
        }
        return sb.toString();
    }
}
