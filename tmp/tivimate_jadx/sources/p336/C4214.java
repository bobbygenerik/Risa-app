package p336;

import android.net.Uri;
import java.net.URL;
import p062.C1587;
import p062.C1589;
import p126.InterfaceC2139;

/* renamed from: ᵎʽ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4214 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC2139 f15679;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1587 f15680;

    public C4214(C1587 c1587, InterfaceC2139 interfaceC2139) {
        this.f15680 = c1587;
        this.f15679 = interfaceC2139;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final URL m8619(C4214 c4214) {
        c4214.getClass();
        Uri.Builder appendPath = new Uri.Builder().scheme("https").authority("firebase-settings.crashlytics.com").appendPath("spi").appendPath("v2").appendPath("platforms").appendPath("android").appendPath("gmp");
        C1587 c1587 = c4214.f15680;
        Uri.Builder appendPath2 = appendPath.appendPath(c1587.f6195).appendPath("settings");
        C1589 c1589 = c1587.f6194;
        return new URL(appendPath2.appendQueryParameter("build_version", c1589.f6198).appendQueryParameter("display_version", c1589.f6201).build().toString());
    }
}
