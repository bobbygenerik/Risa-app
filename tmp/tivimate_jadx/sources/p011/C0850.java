package p011;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.preference.PreferenceScreen;

/* renamed from: ʻᐧ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0850 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public AbstractC0864 f3636;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public AbstractC0864 f3638;

    /* renamed from: ˈ, reason: contains not printable characters */
    public SharedPreferences.Editor f3639;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f3640;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public PreferenceScreen f3641;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public AbstractC0864 f3642;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f3644;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f3645;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long f3643 = 0;

    /* renamed from: ʽ, reason: contains not printable characters */
    public SharedPreferences f3637 = null;

    public C0850(Context context) {
        this.f3644 = context;
        this.f3645 = context.getPackageName() + "_preferences";
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long m3046() {
        long j;
        synchronized (this) {
            j = this.f3643;
            this.f3643 = 1 + j;
        }
        return j;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final SharedPreferences m3047() {
        if (this.f3637 == null) {
            this.f3637 = this.f3644.getSharedPreferences(this.f3645, 0);
        }
        return this.f3637;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final SharedPreferences.Editor m3048() {
        if (!this.f3640) {
            return m3047().edit();
        }
        if (this.f3639 == null) {
            this.f3639 = m3047().edit();
        }
        return this.f3639;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final PreferenceScreen m3049(Context context) {
        PreferenceScreen preferenceScreen = new PreferenceScreen(context, null);
        preferenceScreen.m836(this);
        return preferenceScreen;
    }
}
