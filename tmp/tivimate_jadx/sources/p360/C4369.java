package p360;

import android.net.Uri;

/* renamed from: ᵔٴ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4369 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f16221;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f16222;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f16223;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f16224;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Uri f16225;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f16226;

    public C4369(Uri uri, int i, int i2, boolean z, int i3) {
        uri.getClass();
        this.f16225 = uri;
        this.f16224 = i;
        this.f16221 = i2;
        this.f16222 = z;
        this.f16223 = null;
        this.f16226 = i3;
    }

    public C4369(String str, String str2) {
        this.f16225 = new Uri.Builder().scheme("systemfont").authority(str).build();
        this.f16224 = 0;
        this.f16221 = 400;
        this.f16222 = false;
        this.f16223 = str2;
        this.f16226 = 0;
    }
}
