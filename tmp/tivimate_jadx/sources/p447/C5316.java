package p447;

import android.content.SharedPreferences;
import p296.AbstractC3659;

/* renamed from: ﹶﾞ.ᐧﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5316 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f20052;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f20053;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ C5313 f20054;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f20055;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f20056;

    public C5316(C5313 c5313, String str, boolean z) {
        this.f20054 = c5313;
        AbstractC3659.m7680(str);
        this.f20056 = str;
        this.f20055 = z;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m10552(boolean z) {
        SharedPreferences.Editor edit = this.f20054.m10545().edit();
        edit.putBoolean(this.f20056, z);
        edit.apply();
        this.f20053 = z;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m10553() {
        if (!this.f20052) {
            this.f20052 = true;
            this.f20053 = this.f20054.m10545().getBoolean(this.f20056, this.f20055);
        }
        return this.f20053;
    }
}
