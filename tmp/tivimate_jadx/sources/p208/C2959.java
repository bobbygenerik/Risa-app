package p208;

import com.bumptech.glide.C0229;
import p027.C1084;

/* renamed from: ˎᵢ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2959 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C2942 f11288;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C2942 f11290;

    /* renamed from: ˈ, reason: contains not printable characters */
    public String f11291;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C0229 f11292;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C2962 f11293;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public long f11294;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public C2942 f11297;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public EnumC2956 f11298;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C2945 f11299;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public long f11300;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f11289 = -1;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public AbstractC2960 f11295 = AbstractC2960.f11302;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public InterfaceC2951 f11296 = InterfaceC2951.f11243;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C1084 f11301 = new C1084(3);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m6491(String str, C2942 c2942) {
        if (c2942 != null) {
            if (c2942.f11187 != null) {
                throw new IllegalArgumentException(str.concat(".networkResponse != null").toString());
            }
            if (c2942.f11195 != null) {
                throw new IllegalArgumentException(str.concat(".cacheResponse != null").toString());
            }
            if (c2942.f11190 != null) {
                throw new IllegalArgumentException(str.concat(".priorResponse != null").toString());
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2942 m6492() {
        int i = this.f11289;
        if (i < 0) {
            throw new IllegalStateException(("code < 0: " + this.f11289).toString());
        }
        C2945 c2945 = this.f11299;
        if (c2945 == null) {
            throw new IllegalStateException("request == null");
        }
        EnumC2956 enumC2956 = this.f11298;
        if (enumC2956 == null) {
            throw new IllegalStateException("protocol == null");
        }
        String str = this.f11291;
        if (str != null) {
            return new C2942(c2945, enumC2956, str, i, this.f11293, this.f11301.m3432(), this.f11295, this.f11297, this.f11288, this.f11290, this.f11294, this.f11300, this.f11292, this.f11296);
        }
        throw new IllegalStateException("message == null");
    }
}
