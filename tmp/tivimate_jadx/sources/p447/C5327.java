package p447;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;
import p233.C3191;
import p233.C3192;
import p296.AbstractC3659;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5327 extends ᵎﹶ {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public String f20222;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public InterfaceC5357 f20223;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Boolean f20224;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Boolean f20225;

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final String m10571(String str) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        try {
            String str2 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            AbstractC3659.m7687(str2);
            return str2;
        } catch (ClassNotFoundException e) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10216(e, "Could not find SystemProperties class");
            return "";
        } catch (IllegalAccessException e2) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20343.m10216(e2, "Could not access SystemProperties.get()");
            return "";
        } catch (NoSuchMethodException e3) {
            C5344 c53443 = c5322.f20193;
            C5322.m10556(c53443);
            c53443.f20343.m10216(e3, "Could not find SystemProperties.get() method");
            return "";
        } catch (InvocationTargetException e4) {
            C5344 c53444 = c5322.f20193;
            C5322.m10556(c53444);
            c53444.f20343.m10216(e4, "SystemProperties.get() threw an exception");
            return "";
        }
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public final boolean m10572(String str) {
        return "1".equals(this.f20223.mo9044(str, "measurement.event_sampling_enabled"));
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final long m10573(String str, C5254 c5254) {
        if (TextUtils.isEmpty(str)) {
            return ((Long) c5254.m10388(null)).longValue();
        }
        String mo9044 = this.f20223.mo9044(str, c5254.f19825);
        if (TextUtils.isEmpty(mo9044)) {
            return ((Long) c5254.m10388(null)).longValue();
        }
        try {
            return ((Long) c5254.m10388(Long.valueOf(Long.parseLong(mo9044)))).longValue();
        } catch (NumberFormatException unused) {
            return ((Long) c5254.m10388(null)).longValue();
        }
    }

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public final boolean m10574() {
        if (this.f20224 == null) {
            Boolean m10581 = m10581("app_measurement_lite");
            this.f20224 = m10581;
            if (m10581 == null) {
                this.f20224 = Boolean.FALSE;
            }
        }
        return this.f20224.booleanValue() || !((C5322) ((ᵎﹶ) this).ʾˋ).f20203;
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public final boolean m10575() {
        ((C5322) ((ᵎﹶ) this).ʾˋ).getClass();
        Boolean m10581 = m10581("firebase_analytics_collection_deactivated");
        return m10581 != null && m10581.booleanValue();
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final int m10576(String str, C5254 c5254) {
        if (TextUtils.isEmpty(str)) {
            return ((Integer) c5254.m10388(null)).intValue();
        }
        String mo9044 = this.f20223.mo9044(str, c5254.f19825);
        if (TextUtils.isEmpty(mo9044)) {
            return ((Integer) c5254.m10388(null)).intValue();
        }
        try {
            return ((Integer) c5254.m10388(Integer.valueOf(Integer.parseInt(mo9044)))).intValue();
        } catch (NumberFormatException unused) {
            return ((Integer) c5254.m10388(null)).intValue();
        }
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public final boolean m10577(String str, C5254 c5254) {
        if (TextUtils.isEmpty(str)) {
            return ((Boolean) c5254.m10388(null)).booleanValue();
        }
        String mo9044 = this.f20223.mo9044(str, c5254.f19825);
        return TextUtils.isEmpty(mo9044) ? ((Boolean) c5254.m10388(null)).booleanValue() : ((Boolean) c5254.m10388(Boolean.valueOf("1".equals(mo9044)))).booleanValue();
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final double m10578(String str, C5254 c5254) {
        if (TextUtils.isEmpty(str)) {
            return ((Double) c5254.m10388(null)).doubleValue();
        }
        String mo9044 = this.f20223.mo9044(str, c5254.f19825);
        if (TextUtils.isEmpty(mo9044)) {
            return ((Double) c5254.m10388(null)).doubleValue();
        }
        try {
            return ((Double) c5254.m10388(Double.valueOf(Double.parseDouble(mo9044)))).doubleValue();
        } catch (NumberFormatException unused) {
            return ((Double) c5254.m10388(null)).doubleValue();
        }
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final void m10579() {
        ((C5322) ((ᵎﹶ) this).ʾˋ).getClass();
    }

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public final EnumC5232 m10580(String str, boolean z) {
        Object obj;
        AbstractC3659.m7680(str);
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        Bundle m10582 = m10582();
        if (m10582 == null) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10217("Failed to load metadata: Metadata bundle is null");
            obj = null;
        } else {
            obj = m10582.get(str);
        }
        EnumC5232 enumC5232 = EnumC5232.f19673;
        if (obj == null) {
            return enumC5232;
        }
        if (Boolean.TRUE.equals(obj)) {
            return EnumC5232.f19674;
        }
        if (Boolean.FALSE.equals(obj)) {
            return EnumC5232.f19671;
        }
        if (z && "eu_consent_policy".equals(obj)) {
            return EnumC5232.f19670;
        }
        C5344 c53442 = c5322.f20193;
        C5322.m10556(c53442);
        c53442.f20348.m10216(str, "Invalid manifest metadata for");
        return enumC5232;
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public final Boolean m10581(String str) {
        AbstractC3659.m7680(str);
        Bundle m10582 = m10582();
        if (m10582 != null) {
            if (m10582.containsKey(str)) {
                return Boolean.valueOf(m10582.getBoolean(str));
            }
            return null;
        }
        C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
        C5322.m10556(c5344);
        c5344.f20343.m10217("Failed to load metadata: Metadata bundle is null");
        return null;
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public final Bundle m10582() {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        try {
            Context context = c5322.f20184;
            C5344 c5344 = c5322.f20193;
            if (context.getPackageManager() == null) {
                C5322.m10556(c5344);
                c5344.f20343.m10217("Failed to load metadata: PackageManager is null");
                return null;
            }
            C3192 m7014 = C3191.m7014(context);
            ApplicationInfo applicationInfo = m7014.f12211.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                return applicationInfo.metaData;
            }
            C5322.m10556(c5344);
            c5344.f20343.m10217("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20343.m10216(e, "Failed to load metadata: Package name not found");
            return null;
        }
    }

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public final boolean m10583() {
        Boolean m10581 = m10581("google_analytics_automatic_screen_reporting_enabled");
        return m10581 == null || m10581.booleanValue();
    }

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public final boolean m10584(String str) {
        return "1".equals(this.f20223.mo9044(str, "gaia_collection_enabled"));
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final String m10585(String str, C5254 c5254) {
        return TextUtils.isEmpty(str) ? (String) c5254.m10388(null) : (String) c5254.m10388(this.f20223.mo9044(str, c5254.f19825));
    }
}
