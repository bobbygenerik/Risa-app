package p047;

import android.net.Uri;
import com.parse.ʼᐧ;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p305.AbstractC3731;

/* renamed from: ʽˑ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1372 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean f5393;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final String f5394;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Uri f5395;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final long f5396;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f5397;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final AbstractC0993 f5398;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean f5399;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f5400;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final long f5401;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long f5402;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final C0956 f5403;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final List f5404;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final String f5405;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Uri f5406;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f5407;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final AbstractC0993 f5408;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f5409;

    public C1372(String str, Uri uri, Uri uri2, long j, long j2, long j3, long j4, ArrayList arrayList, boolean z, long j5, long j6, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4, boolean z2, String str2, String str3) {
        AbstractC3731.m7849((uri == null || uri2 == null) && !(uri == null && uri2 == null));
        this.f5407 = str;
        this.f5406 = uri;
        this.f5395 = uri2;
        this.f5397 = j;
        this.f5400 = j2;
        this.f5409 = j3;
        this.f5402 = j4;
        this.f5404 = arrayList;
        this.f5393 = z;
        this.f5396 = j5;
        this.f5401 = j6;
        this.f5408 = AbstractC0993.m3264(arrayList2);
        this.f5398 = AbstractC0993.m3264(arrayList3);
        this.f5403 = AbstractC0993.m3262(new ʼᐧ(1), arrayList4);
        this.f5399 = z2;
        this.f5394 = str2;
        this.f5405 = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1372)) {
            return false;
        }
        C1372 c1372 = (C1372) obj;
        return this.f5397 == c1372.f5397 && this.f5400 == c1372.f5400 && this.f5409 == c1372.f5409 && this.f5402 == c1372.f5402 && this.f5393 == c1372.f5393 && this.f5396 == c1372.f5396 && this.f5401 == c1372.f5401 && this.f5399 == c1372.f5399 && Objects.equals(this.f5407, c1372.f5407) && Objects.equals(this.f5406, c1372.f5406) && Objects.equals(this.f5395, c1372.f5395) && Objects.equals(this.f5404, c1372.f5404) && Objects.equals(this.f5408, c1372.f5408) && Objects.equals(this.f5398, c1372.f5398) && Objects.equals(this.f5403, c1372.f5403) && Objects.equals(this.f5394, c1372.f5394) && Objects.equals(this.f5405, c1372.f5405);
    }

    public final int hashCode() {
        return Objects.hash(this.f5407, this.f5406, this.f5395, Long.valueOf(this.f5397), Long.valueOf(this.f5400), Long.valueOf(this.f5409), Long.valueOf(this.f5402), this.f5404, Boolean.valueOf(this.f5393), Long.valueOf(this.f5396), Long.valueOf(this.f5401), this.f5408, this.f5398, this.f5403, Boolean.valueOf(this.f5399), this.f5394, this.f5405);
    }
}
