package p447;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.internal.measurement.C0492;
import p296.AbstractC3659;

/* renamed from: ﹶﾞ.ᵎʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5323 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f20212;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0492 f20213;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f20214;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String f20215;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Boolean f20216;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f20217;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Long f20218;

    public C5323(Context context, C0492 c0492, Long l) {
        this.f20214 = true;
        AbstractC3659.m7687(context);
        Context applicationContext = context.getApplicationContext();
        AbstractC3659.m7687(applicationContext);
        this.f20217 = applicationContext;
        this.f20218 = l;
        if (c0492 != null) {
            this.f20213 = c0492;
            this.f20214 = c0492.f2252;
            this.f20212 = c0492.f2255;
            this.f20215 = c0492.f2256;
            Bundle bundle = c0492.f2254;
            if (bundle != null) {
                this.f20216 = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
