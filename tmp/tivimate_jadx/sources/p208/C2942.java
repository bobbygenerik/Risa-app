package p208;

import com.bumptech.glide.C0229;
import java.io.Closeable;

/* renamed from: ˎᵢ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2942 implements Closeable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final String f11182;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2945 f11183;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final C0229 f11184;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final boolean f11185;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f11186;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C2942 f11187;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C2950 f11188;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final boolean f11189;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C2942 f11190;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final AbstractC2960 f11191;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final EnumC2956 f11192;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C2962 f11193;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final long f11194;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C2942 f11195;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final long f11196;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final InterfaceC2951 f11197;

    public C2942(C2945 c2945, EnumC2956 enumC2956, String str, int i, C2962 c2962, C2950 c2950, AbstractC2960 abstractC2960, C2942 c2942, C2942 c29422, C2942 c29423, long j, long j2, C0229 c0229, InterfaceC2951 interfaceC2951) {
        this.f11183 = c2945;
        this.f11192 = enumC2956;
        this.f11182 = str;
        this.f11186 = i;
        this.f11193 = c2962;
        this.f11188 = c2950;
        this.f11191 = abstractC2960;
        this.f11187 = c2942;
        this.f11195 = c29422;
        this.f11190 = c29423;
        this.f11194 = j;
        this.f11196 = j2;
        this.f11184 = c0229;
        this.f11197 = interfaceC2951;
        boolean z = true;
        this.f11185 = 200 <= i && i < 300;
        if (i != 307 && i != 308) {
            switch (i) {
                case 300:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    z = false;
                    break;
            }
        }
        this.f11189 = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f11191.close();
    }

    public final String toString() {
        return "Response{protocol=" + this.f11192 + ", code=" + this.f11186 + ", message=" + this.f11182 + ", url=" + this.f11183.f11226 + '}';
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m6474() {
        return this.f11186;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˎᵢ.ᴵˊ] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C2959 m6475() {
        ?? obj = new Object();
        obj.f11289 = -1;
        obj.f11295 = AbstractC2960.f11302;
        obj.f11296 = InterfaceC2951.f11243;
        obj.f11299 = this.f11183;
        obj.f11298 = this.f11192;
        obj.f11289 = this.f11186;
        obj.f11291 = this.f11182;
        obj.f11293 = this.f11193;
        obj.f11301 = this.f11188.m6482();
        obj.f11295 = this.f11191;
        obj.f11297 = this.f11187;
        obj.f11288 = this.f11195;
        obj.f11290 = this.f11190;
        obj.f11294 = this.f11194;
        obj.f11300 = this.f11196;
        obj.f11292 = this.f11184;
        obj.f11296 = this.f11197;
        return obj;
    }
}
