package p106;

import android.content.Context;
import android.preference.PreferenceManager;
import com.parse.ٴʼ;
import p183.C2760;
import p277.C3529;

/* renamed from: ˆـ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1938 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Object f7698 = new Object();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3529 f7699;

    public C1938(C2760 c2760) {
        Context context = (Context) c2760.f10517;
        String str = (String) c2760.f10511;
        String str2 = (String) c2760.f10513;
        if (str == null) {
            throw new IllegalArgumentException("keysetName cannot be null");
        }
        Context applicationContext = context.getApplicationContext();
        if (str2 == null) {
            PreferenceManager.getDefaultSharedPreferences(applicationContext).edit();
        } else {
            applicationContext.getSharedPreferences(str2, 0).edit();
        }
        this.f7699 = (C3529) c2760.f10514;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized ٴʼ m4897() {
        return this.f7699.m7490();
    }
}
