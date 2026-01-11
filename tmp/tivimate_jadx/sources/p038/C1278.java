package p038;

import android.text.TextUtils;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import p211.C2980;
import p366.C4472;

/* renamed from: ʽʼ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1278 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static C1278 f4942;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4472 f4944;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final long f4943 = TimeUnit.HOURS.toSeconds(1);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Pattern f4941 = Pattern.compile("\\AA[\\w-]{38}\\z");

    public C1278(C4472 c4472) {
        this.f4944 = c4472;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m3871(C2980 c2980) {
        if (TextUtils.isEmpty(c2980.f11381)) {
            return true;
        }
        long j = c2980.f11387 + c2980.f11383;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.f4944.getClass();
        return j < timeUnit.toSeconds(System.currentTimeMillis()) + f4943;
    }
}
