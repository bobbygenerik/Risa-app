package p447;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.EnumC0349;
import com.google.android.gms.internal.measurement.EnumC0477;
import p017.AbstractC0993;
import p017.C0943;
import p017.C0956;
import p017.C0987;

/* renamed from: ﹶﾞ.ˑﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5288 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C0956 f19955 = AbstractC0993.m3263("Version", "GoogleConsent", "VendorConsent", "VendorLegitimateInterest", "gdprApplies", "EnableAdvertiserConsentMode", "PolicyVersion", "PurposeConsents", "PurposeOneTreatment", "Purpose1", "Purpose3", "Purpose4", "Purpose7", "CmpSdkID", "PublisherCC", "PublisherRestrictions1", "PublisherRestrictions3", "PublisherRestrictions4", "PublisherRestrictions7", "AuthorizePurpose1", "AuthorizePurpose3", "AuthorizePurpose4", "AuthorizePurpose7", "PurposeDiagnostics");

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final int m10475(EnumC0349 enumC0349) {
        if (enumC0349 == EnumC0349.f2008) {
            return 1;
        }
        if (enumC0349 == EnumC0349.f2003) {
            return 2;
        }
        if (enumC0349 == EnumC0349.f2009) {
            return 3;
        }
        return enumC0349 == EnumC0349.f2005 ? 4 : -1;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final String m10476(EnumC0349 enumC0349, String str, String str2) {
        String str3 = "0";
        String valueOf = (TextUtils.isEmpty(str) || str.length() < enumC0349.mo1636()) ? "0" : String.valueOf(str.charAt(enumC0349.mo1636() - 1));
        if (!TextUtils.isEmpty(str2) && str2.length() >= enumC0349.mo1636()) {
            str3 = String.valueOf(str2.charAt(enumC0349.mo1636() - 1));
        }
        return String.valueOf(valueOf).concat(String.valueOf(str3));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final boolean m10477(EnumC0349 enumC0349, char[] cArr, String str, boolean z) {
        char c;
        int m10475 = m10475(enumC0349);
        if (!z) {
            c = '4';
        } else {
            if (str.length() >= enumC0349.mo1636()) {
                char charAt = str.charAt(enumC0349.mo1636() - 1);
                boolean z2 = charAt == '1';
                if (m10475 > 0 && cArr[m10475] != '2') {
                    cArr[m10475] = charAt != '1' ? '6' : '1';
                }
                return z2;
            }
            c = '0';
        }
        if (m10475 > 0 && cArr[m10475] != '2') {
            cArr[m10475] = c;
        }
        return false;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final EnumC0477 m10478(EnumC0349 enumC0349, C0987 c0987) {
        Object obj = c0987.get(enumC0349);
        if (obj == null) {
            obj = EnumC0477.f2236;
        }
        return (EnumC0477) obj;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final boolean m10479(EnumC0349 enumC0349, C0987 c0987, C0987 c09872, C0943 c0943, char[] cArr, int i, int i2, int i3, String str, String str2, String str3, boolean z, boolean z2) {
        EnumC5320 enumC5320;
        char c;
        int m10475 = m10475(enumC0349);
        if (m10475 > 0 && (i2 != 1 || i != 1)) {
            cArr[m10475] = '2';
        }
        if (m10478(enumC0349, c09872) == EnumC0477.f2235) {
            c = '3';
        } else {
            if (enumC0349 == EnumC0349.f2008 && i3 == 1 && c0943.f3867.equals(str)) {
                if (m10475 > 0 && cArr[m10475] != '2') {
                    cArr[m10475] = '1';
                }
                return true;
            }
            if (c0987.containsKey(enumC0349) && (enumC5320 = (EnumC5320) c0987.get(enumC0349)) != null) {
                int ordinal = enumC5320.ordinal();
                EnumC0477 enumC0477 = EnumC0477.f2232;
                if (ordinal != 0) {
                    EnumC0477 enumC04772 = EnumC0477.f2231;
                    if (ordinal != 1) {
                        if (ordinal == 2) {
                            return m10478(enumC0349, c09872) == enumC0477 ? m10481(enumC0349, cArr, str3, z2) : m10477(enumC0349, cArr, str2, z);
                        }
                        if (ordinal == 3) {
                            return m10478(enumC0349, c09872) == enumC04772 ? m10477(enumC0349, cArr, str2, z) : m10481(enumC0349, cArr, str3, z2);
                        }
                    } else if (m10478(enumC0349, c09872) != enumC04772) {
                        return m10481(enumC0349, cArr, str3, z2);
                    }
                } else if (m10478(enumC0349, c09872) != enumC0477) {
                    return m10477(enumC0349, cArr, str2, z);
                }
                c = '8';
            }
            c = '0';
        }
        if (m10475 <= 0 || cArr[m10475] == '2') {
            return false;
        }
        cArr[m10475] = c;
        return false;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m10480(SharedPreferences sharedPreferences, String str) {
        try {
            return sharedPreferences.getString(str, "");
        } catch (ClassCastException unused) {
            return "";
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final boolean m10481(EnumC0349 enumC0349, char[] cArr, String str, boolean z) {
        char c;
        int m10475 = m10475(enumC0349);
        if (!z) {
            c = '5';
        } else {
            if (str.length() >= enumC0349.mo1636()) {
                char charAt = str.charAt(enumC0349.mo1636() - 1);
                boolean z2 = charAt == '1';
                if (m10475 > 0 && cArr[m10475] != '2') {
                    cArr[m10475] = charAt != '1' ? '7' : '1';
                }
                return z2;
            }
            c = '0';
        }
        if (m10475 > 0 && cArr[m10475] != '2') {
            cArr[m10475] = c;
        }
        return false;
    }
}
