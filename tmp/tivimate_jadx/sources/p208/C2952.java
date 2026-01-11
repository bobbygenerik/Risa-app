package p208;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import p152.AbstractC2444;
import p394.AbstractC4713;
import p435.AbstractC5143;

/* renamed from: ˎᵢ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2952 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InetSocketAddress f11244;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Proxy f11245;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2967 f11246;

    public C2952(C2967 c2967, Proxy proxy, InetSocketAddress inetSocketAddress) {
        this.f11246 = c2967;
        this.f11245 = proxy;
        this.f11244 = inetSocketAddress;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2952)) {
            return false;
        }
        C2952 c2952 = (C2952) obj;
        return AbstractC2444.m5562(c2952.f11246, this.f11246) && AbstractC2444.m5562(c2952.f11245, this.f11245) && AbstractC2444.m5562(c2952.f11244, this.f11244);
    }

    public final int hashCode() {
        return this.f11244.hashCode() + ((this.f11245.hashCode() + ((this.f11246.hashCode() + 527) * 31)) * 31);
    }

    public final String toString() {
        String hostAddress;
        StringBuilder sb = new StringBuilder();
        C2967 c2967 = this.f11246;
        C2940 c2940 = c2967.f11337;
        C2940 c29402 = c2967.f11337;
        String str = c2940.f11161;
        InetSocketAddress inetSocketAddress = this.f11244;
        InetAddress address = inetSocketAddress.getAddress();
        String m9452 = (address == null || (hostAddress = address.getHostAddress()) == null) ? null : AbstractC4713.m9452(hostAddress);
        if (AbstractC5143.m10130(str, ':')) {
            sb.append("[");
            sb.append(str);
            sb.append("]");
        } else {
            sb.append(str);
        }
        if (c29402.f11162 != inetSocketAddress.getPort() || AbstractC2444.m5562(str, m9452)) {
            sb.append(":");
            sb.append(c29402.f11162);
        }
        if (!AbstractC2444.m5562(str, m9452)) {
            if (this.f11245.equals(Proxy.NO_PROXY)) {
                sb.append(" at ");
            } else {
                sb.append(" via proxy ");
            }
            if (m9452 == null) {
                sb.append("<unresolved>");
            } else if (AbstractC5143.m10130(m9452, ':')) {
                sb.append("[");
                sb.append(m9452);
                sb.append("]");
            } else {
                sb.append(m9452);
            }
            sb.append(":");
            sb.append(inetSocketAddress.getPort());
        }
        return sb.toString();
    }
}
