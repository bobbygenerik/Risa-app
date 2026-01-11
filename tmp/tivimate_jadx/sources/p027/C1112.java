package p027;

import android.content.Context;
import ar.tvplayer.core.domain.ʻٴ;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import ˋⁱ.ﾞᴵ;

/* renamed from: ʼٴ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1112 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public volatile ʻٴ f4358;

    /* renamed from: ˈ, reason: contains not printable characters */
    public volatile boolean f4359;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Context f4360;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public volatile ﾞᴵ f4361;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m3522() {
        try {
            Context context = this.f4360;
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getBoolean("com.google.android.play.billingclient.enableBillingOverridesTesting", false);
        } catch (Exception e) {
            AbstractC0542.m2091("BillingClient", "Unable to retrieve metadata value for enableBillingOverridesTesting.", e);
            return false;
        }
    }
}
