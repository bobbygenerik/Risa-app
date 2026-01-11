package p062;

import java.util.Locale;
import java.util.UUID;
import p435.AbstractC5152;

/* renamed from: ʾˈ.ﹳـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1588 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1591 f6196;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1549 f6197;

    public C1588(C1549 c1549, C1591 c1591) {
        this.f6197 = c1549;
        this.f6196 = c1591;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1583 m4366(C1583 c1583) {
        String str;
        this.f6196.getClass();
        String lowerCase = AbstractC5152.m10146(UUID.randomUUID().toString(), "-", "", false).toLowerCase(Locale.ROOT);
        return new C1583(lowerCase, (c1583 == null || (str = c1583.f6184) == null) ? lowerCase : str, c1583 != null ? c1583.f6182 + 1 : 0, this.f6197.m4347().f6130);
    }
}
