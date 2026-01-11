package p145;

import android.content.Context;
import android.text.TextUtils;
import java.util.Arrays;
import p229.C3125;
import p262.C3433;
import p296.AbstractC3659;
import p347.AbstractC4276;

/* renamed from: ˉᵎ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2401 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f9274;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f9275;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f9276;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String f9277;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f9278;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f9279;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f9280;

    public C2401(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        int i = AbstractC4276.f15856;
        AbstractC3659.m7684("ApplicationId must be set.", true ^ (str == null || str.trim().isEmpty()));
        this.f9278 = str;
        this.f9279 = str2;
        this.f9274 = str3;
        this.f9275 = str4;
        this.f9276 = str5;
        this.f9280 = str6;
        this.f9277 = str7;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2401 m5504(Context context) {
        C3433 c3433 = new C3433(context, 4);
        String m7340 = c3433.m7340("google_app_id");
        if (TextUtils.isEmpty(m7340)) {
            return null;
        }
        return new C2401(m7340, c3433.m7340("google_api_key"), c3433.m7340("firebase_database_url"), c3433.m7340("ga_trackingId"), c3433.m7340("gcm_defaultSenderId"), c3433.m7340("google_storage_bucket"), c3433.m7340("project_id"));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2401)) {
            return false;
        }
        C2401 c2401 = (C2401) obj;
        return AbstractC3659.m7679(this.f9278, c2401.f9278) && AbstractC3659.m7679(this.f9279, c2401.f9279) && AbstractC3659.m7679(this.f9274, c2401.f9274) && AbstractC3659.m7679(this.f9275, c2401.f9275) && AbstractC3659.m7679(this.f9276, c2401.f9276) && AbstractC3659.m7679(this.f9280, c2401.f9280) && AbstractC3659.m7679(this.f9277, c2401.f9277);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f9278, this.f9279, this.f9274, this.f9275, this.f9276, this.f9280, this.f9277});
    }

    public final String toString() {
        C3125 c3125 = new C3125(this);
        c3125.m6847(this.f9278, "applicationId");
        c3125.m6847(this.f9279, "apiKey");
        c3125.m6847(this.f9274, "databaseUrl");
        c3125.m6847(this.f9276, "gcmSenderId");
        c3125.m6847(this.f9280, "storageBucket");
        c3125.m6847(this.f9277, "projectId");
        return c3125.toString();
    }
}
