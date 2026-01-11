package p208;

import j$.util.Objects;
import java.net.ProxySelector;
import java.util.List;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import p035.AbstractC1220;
import p082.AbstractC1719;
import p152.AbstractC2444;
import p170.C2617;
import p307.AbstractC3740;
import p394.AbstractC4712;
import p394.AbstractC4713;

/* renamed from: ˎᵢ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2967 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final List f11331;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final SSLSocketFactory f11332;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final List f11333;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final HostnameVerifier f11334;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2970 f11335;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ProxySelector f11336;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C2940 f11337;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final SocketFactory f11338;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2966 f11339;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C2966 f11340;

    public C2967(String str, int i, C2966 c2966, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, C2970 c2970, C2966 c29662, List list, List list2, ProxySelector proxySelector) {
        this.f11339 = c2966;
        this.f11338 = socketFactory;
        this.f11332 = sSLSocketFactory;
        this.f11334 = hostnameVerifier;
        this.f11335 = c2970;
        this.f11340 = c29662;
        this.f11336 = proxySelector;
        C2617 c2617 = new C2617();
        String str2 = sSLSocketFactory != null ? "https" : "http";
        if (str2.equalsIgnoreCase("http")) {
            c2617.f9913 = "http";
        } else {
            if (!str2.equalsIgnoreCase("https")) {
                throw new IllegalArgumentException("unexpected scheme: ".concat(str2));
            }
            c2617.f9913 = "https";
        }
        String m9452 = AbstractC4713.m9452(AbstractC1719.m4657(0, 0, 7, str));
        if (m9452 == null) {
            throw new IllegalArgumentException("unexpected host: ".concat(str));
        }
        c2617.f9920 = m9452;
        if (1 > i || i >= 65536) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "unexpected port: ").toString());
        }
        c2617.f9918 = i;
        this.f11337 = c2617.m5875();
        this.f11331 = AbstractC4712.m9443(list);
        this.f11333 = AbstractC4712.m9443(list2);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2967)) {
            return false;
        }
        C2967 c2967 = (C2967) obj;
        return AbstractC2444.m5562(this.f11337, c2967.f11337) && m6499(c2967);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f11335) + ((Objects.hashCode(this.f11334) + ((Objects.hashCode(this.f11332) + ((this.f11336.hashCode() + ((this.f11333.hashCode() + ((this.f11331.hashCode() + ((this.f11340.hashCode() + ((this.f11339.hashCode() + AbstractC1220.m3780(527, 31, this.f11337.f11159)) * 31)) * 31)) * 31)) * 31)) * 961)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Address{");
        C2940 c2940 = this.f11337;
        sb.append(c2940.f11161);
        sb.append(':');
        sb.append(c2940.f11162);
        sb.append(", ");
        sb.append("proxySelector=" + this.f11336);
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m6499(C2967 c2967) {
        return AbstractC2444.m5562(this.f11339, c2967.f11339) && AbstractC2444.m5562(this.f11340, c2967.f11340) && AbstractC2444.m5562(this.f11331, c2967.f11331) && AbstractC2444.m5562(this.f11333, c2967.f11333) && AbstractC2444.m5562(this.f11336, c2967.f11336) && AbstractC2444.m5562(this.f11332, c2967.f11332) && AbstractC2444.m5562(this.f11334, c2967.f11334) && AbstractC2444.m5562(this.f11335, c2967.f11335) && this.f11337.f11162 == c2967.f11337.f11162;
    }
}
