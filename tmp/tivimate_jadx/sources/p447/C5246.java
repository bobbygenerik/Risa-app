package p447;

import android.content.pm.PackageManager;
import android.os.SystemClock;
import android.util.Pair;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import p035.C1218;
import p347.C4279;
import p392.C4643;
import p446.C5211;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˆˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5246 extends AbstractC5277 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final HashMap f19763;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C4643 f19764;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C4643 f19765;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C4643 f19766;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C4643 f19767;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C4643 f19768;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C4643 f19769;

    public C5246(C5337 c5337) {
        super(c5337);
        this.f19763 = new HashMap();
        C5313 c5313 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20205;
        C5322.m10560(c5313);
        this.f19768 = new C4643(c5313, "last_delete_stale", 0L);
        C5313 c53132 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20205;
        C5322.m10560(c53132);
        this.f19765 = new C4643(c53132, "last_delete_stale_batch", 0L);
        C5313 c53133 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20205;
        C5322.m10560(c53133);
        this.f19767 = new C4643(c53133, "backoff", 0L);
        C5313 c53134 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20205;
        C5322.m10560(c53134);
        this.f19764 = new C4643(c53134, "last_upload", 0L);
        C5313 c53135 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20205;
        C5322.m10560(c53135);
        this.f19769 = new C4643(c53135, "last_upload_attempt", 0L);
        C5313 c53136 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20205;
        C5322.m10560(c53136);
        this.f19766 = new C4643(c53136, "midnight_offset", 0L);
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final Pair m10355(String str) {
        C5248 c5248;
        C1218 c1218;
        ⁱᴵ();
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C4279 c4279 = c5322.f20206;
        C5327 c5327 = c5322.f20189;
        c4279.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        HashMap hashMap = this.f19763;
        C5248 c52482 = (C5248) hashMap.get(str);
        if (c52482 != null && elapsedRealtime < c52482.f19773) {
            return new Pair(c52482.f19775, Boolean.valueOf(c52482.f19774));
        }
        long m10573 = c5327.m10573(str, AbstractC5321.f20164) + elapsedRealtime;
        try {
            try {
                c1218 = C5211.m10184(c5322.f20184);
            } catch (PackageManager.NameNotFoundException unused) {
                if (c52482 != null && elapsedRealtime < c52482.f19773 + c5327.m10573(str, AbstractC5321.f20076)) {
                    return new Pair(c52482.f19775, Boolean.valueOf(c52482.f19774));
                }
                c1218 = null;
            }
        } catch (Exception e) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20340.m10216(e, "Unable to get advertising id");
            c5248 = new C5248(m10573, "", false);
        }
        if (c1218 == null) {
            return new Pair("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
        }
        String str2 = c1218.f4715;
        c5248 = str2 != null ? new C5248(m10573, str2, c1218.f4714) : new C5248(m10573, "", c1218.f4714);
        hashMap.put(str, c5248);
        return new Pair(c5248.f19775, Boolean.valueOf(c5248.f19774));
    }

    @Override // p447.AbstractC5277
    /* renamed from: ˋˊ */
    public final void mo10191() {
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final String m10356(String str, boolean z) {
        ⁱᴵ();
        String str2 = z ? (String) m10355(str).first : "00000000-0000-0000-0000-000000000000";
        MessageDigest m10672 = C5339.m10672();
        if (m10672 == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, m10672.digest(str2.getBytes())));
    }
}
