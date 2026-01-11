package p296;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import ar.tvplayer.tv.R;
import com.google.android.gms.internal.measurement.AbstractC0473;
import java.util.Locale;
import p114.C1981;
import p114.C1987;
import p223.C3056;
import p233.C3191;
import p255.C3368;
import p319.AbstractC3932;
import p347.AbstractC4278;

/* renamed from: ٴﾞ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3683 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static Locale f14424;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3368 f14425 = new C3368(0);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static String m7718(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(R.string.1bv);
            case 2:
                return resources.getString(R.string.5pm);
            case 3:
                return resources.getString(R.string.1us);
            case 4:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
            case 18:
                return null;
            case 5:
                return m7720(context, "common_google_play_services_invalid_account_title");
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return m7720(context, "common_google_play_services_network_error_title");
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return null;
            case 9:
                return null;
            case 10:
                return null;
            case 11:
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                String str = "Unexpected error code " + i;
                return null;
            case 16:
                return null;
            case 17:
                return m7720(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                return m7720(context, "common_google_play_services_restricted_profile_title");
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static String m7719(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String m7720 = m7720(context, str);
        if (m7720 == null) {
            m7720 = resources.getString(R.string.4jd);
        }
        return String.format(resources.getConfiguration().locale, m7720, str2);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static String m7720(Context context, String str) {
        Resources resources;
        C3368 c3368 = f14425;
        synchronized (c3368) {
            try {
                Configuration configuration = context.getResources().getConfiguration();
                Locale locale = (Build.VERSION.SDK_INT >= 24 ? new C1981(new C1987(AbstractC0473.m1922(configuration))) : C1981.m4967(configuration.locale)).f7840.get(0);
                if (!locale.equals(f14424)) {
                    c3368.clear();
                    f14424 = locale;
                }
                String str2 = (String) c3368.get(str);
                if (str2 != null) {
                    return str2;
                }
                int i = AbstractC3932.f15210;
                try {
                    resources = context.getPackageManager().getResourcesForApplication("com.google.android.gms");
                } catch (PackageManager.NameNotFoundException unused) {
                    resources = null;
                }
                if (resources != null) {
                    int identifier = resources.getIdentifier(str, "string", "com.google.android.gms");
                    if (identifier == 0) {
                        "Missing resource: ".concat(str);
                    } else {
                        String string = resources.getString(identifier);
                        if (!TextUtils.isEmpty(string)) {
                            f14425.put(str, string);
                            return string;
                        }
                        "Got empty resource: ".concat(str);
                    }
                }
                return null;
            } finally {
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String m7721(Context context, int i) {
        Resources resources = context.getResources();
        String m7722 = m7722(context);
        if (i == 1) {
            return resources.getString(R.string.28j, m7722);
        }
        if (i == 2) {
            return AbstractC4278.m8654(context) ? resources.getString(R.string.24) : resources.getString(R.string.42d, m7722);
        }
        if (i == 3) {
            return resources.getString(R.string.4m6, m7722);
        }
        if (i == 5) {
            return m7719(context, "common_google_play_services_invalid_account_text", m7722);
        }
        if (i == 7) {
            return m7719(context, "common_google_play_services_network_error_text", m7722);
        }
        if (i == 9) {
            return resources.getString(R.string.4go, m7722);
        }
        if (i == 20) {
            return m7719(context, "common_google_play_services_restricted_profile_text", m7722);
        }
        switch (i) {
            case 16:
                return m7719(context, "common_google_play_services_api_unavailable_text", m7722);
            case 17:
                return m7719(context, "common_google_play_services_sign_in_failed_text", m7722);
            case 18:
                return resources.getString(R.string.59b, m7722);
            default:
                return resources.getString(R.string.4jd, m7722);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m7722(Context context) {
        String packageName = context.getPackageName();
        try {
            Context context2 = C3191.m7014(context).f12211;
            return context2.getPackageManager().getApplicationLabel(context2.getPackageManager().getApplicationInfo(packageName, 0)).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }
}
