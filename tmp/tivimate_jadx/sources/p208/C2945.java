package p208;

import androidx.leanback.widget.ʻٴ;
import java.util.LinkedHashMap;
import java.util.Map;
import p013.C0913;
import p027.C1084;
import p394.AbstractC4710;
import p430.AbstractC5103;
import p430.AbstractC5106;
import p430.C5110;

/* renamed from: ˎᵢ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2945 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2950 f11222;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC2944 f11223;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Map f11224;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f11225;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2940 f11226;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C2941 f11227;

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.Map, java.lang.Object] */
    public C2945(ʻٴ r2) {
        C2940 c2940 = (C2940) r2.ʽʽ;
        if (c2940 == null) {
            throw new IllegalStateException("url == null");
        }
        this.f11226 = c2940;
        this.f11225 = (String) r2.ˈٴ;
        this.f11222 = ((C1084) r2.ᴵᵔ).m3432();
        this.f11223 = (AbstractC2944) r2.ˊʻ;
        this.f11224 = AbstractC5103.m10044(r2.ᴵˊ);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append("Request{method=");
        sb.append(this.f11225);
        sb.append(", url=");
        sb.append(this.f11226);
        C2950 c2950 = this.f11222;
        if (c2950.size() != 0) {
            sb.append(", headers=[");
            int i = 0;
            for (Object obj : c2950) {
                int i2 = i + 1;
                if (i < 0) {
                    AbstractC5106.m10049();
                    throw null;
                }
                C0913 c0913 = (C0913) obj;
                String str = (String) c0913.f3836;
                String str2 = (String) c0913.f3837;
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(str);
                sb.append(':');
                if (AbstractC4710.m9429(str)) {
                    str2 = "██";
                }
                sb.append(str2);
                i = i2;
            }
            sb.append(']');
        }
        Map map = this.f11224;
        if (!map.isEmpty()) {
            sb.append(", tags=");
            sb.append(map);
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʻٴ m6477() {
        ʻٴ r0 = new ʻٴ(8, false);
        Object obj = C5110.f19215;
        r0.ᴵˊ = obj;
        r0.ʽʽ = this.f11226;
        r0.ˈٴ = this.f11225;
        r0.ˊʻ = this.f11223;
        Map map = this.f11224;
        if (!map.isEmpty()) {
            obj = new LinkedHashMap(map);
        }
        r0.ᴵˊ = obj;
        r0.ᴵᵔ = this.f11222.m6482();
        return r0;
    }
}
