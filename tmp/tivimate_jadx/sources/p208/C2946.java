package p208;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
import p109.C1947;
import p137.AbstractC2305;
import p137.C2330;
import p394.AbstractC4710;
import p430.AbstractC5106;
import ˈˋ.ʾˊ;

/* renamed from: ˎᵢ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2946 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C2946 f11228;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C2946 f11229;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C2946 f11230;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String[] f11231;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String[] f11232;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f11233;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean f11234;

    static {
        C2963 c2963 = C2963.f11323;
        C2963 c29632 = C2963.f11316;
        C2963 c29633 = C2963.f11314;
        C2963 c29634 = C2963.f11324;
        C2963 c29635 = C2963.f11319;
        C2963 c29636 = C2963.f11312;
        C2963 c29637 = C2963.f11313;
        C2963 c29638 = C2963.f11321;
        C2963 c29639 = C2963.f11308;
        List m10045 = AbstractC5106.m10045(c2963, c29632, c29633, c29634, c29635, c29636, c29637, c29638, c29639);
        List m100452 = AbstractC5106.m10045(c2963, c29632, c29633, c29634, c29635, c29636, c29637, c29638, c29639, C2963.f11310, C2963.f11317, C2963.f11320, C2963.f11307, C2963.f11325, C2963.f11318, C2963.f11315);
        C2330 c2330 = new C2330();
        C2963[] c2963Arr = (C2963[]) m10045.toArray(new C2963[0]);
        c2330.m5424((C2963[]) Arrays.copyOf(c2963Arr, c2963Arr.length));
        EnumC2957 enumC2957 = EnumC2957.f11271;
        EnumC2957 enumC29572 = EnumC2957.f11267;
        c2330.m5423(enumC2957, enumC29572);
        c2330.f9071 = true;
        c2330.m5425();
        C2330 c23302 = new C2330();
        C2963[] c2963Arr2 = (C2963[]) m100452.toArray(new C2963[0]);
        c23302.m5424((C2963[]) Arrays.copyOf(c2963Arr2, c2963Arr2.length));
        c23302.m5423(enumC2957, enumC29572);
        c23302.f9071 = true;
        f11228 = c23302.m5425();
        C2330 c23303 = new C2330();
        C2963[] c2963Arr3 = (C2963[]) m100452.toArray(new C2963[0]);
        c23303.m5424((C2963[]) Arrays.copyOf(c2963Arr3, c2963Arr3.length));
        c23303.m5423(enumC2957, enumC29572, EnumC2957.f11268, EnumC2957.f11272);
        c23303.f9071 = true;
        f11230 = c23303.m5425();
        f11229 = new C2946(false, false, null, null);
    }

    public C2946(boolean z, boolean z2, String[] strArr, String[] strArr2) {
        this.f11234 = z;
        this.f11233 = z2;
        this.f11231 = strArr;
        this.f11232 = strArr2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2946)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C2946 c2946 = (C2946) obj;
        boolean z = c2946.f11234;
        boolean z2 = this.f11234;
        if (z2 != z) {
            return false;
        }
        if (z2) {
            return Arrays.equals(this.f11231, c2946.f11231) && Arrays.equals(this.f11232, c2946.f11232) && this.f11233 == c2946.f11233;
        }
        return true;
    }

    public final int hashCode() {
        if (!this.f11234) {
            return 17;
        }
        String[] strArr = this.f11231;
        int hashCode = (527 + (strArr != null ? Arrays.hashCode(strArr) : 0)) * 31;
        String[] strArr2 = this.f11232;
        return ((hashCode + (strArr2 != null ? Arrays.hashCode(strArr2) : 0)) * 31) + (!this.f11233 ? 1 : 0);
    }

    public final String toString() {
        if (!this.f11234) {
            return "ConnectionSpec()";
        }
        StringBuilder sb = new StringBuilder("ConnectionSpec(cipherSuites=");
        sb.append(Objects.toString(m6479(), "[all enabled]"));
        sb.append(", tlsVersions=");
        sb.append(Objects.toString(m6478(), "[all enabled]"));
        sb.append(", supportsTlsExtensions=");
        return AbstractC2305.m5377(sb, this.f11233, ')');
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayList m6478() {
        String[] strArr = this.f11232;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(ʾˊ.ˉˆ(str));
        }
        return arrayList;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList m6479() {
        String[] strArr = this.f11231;
        if (strArr == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(C2963.f11322.m6498(str));
        }
        return arrayList;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6480(SSLSocket sSLSocket, boolean z) {
        String[] enabledCipherSuites = sSLSocket.getEnabledCipherSuites();
        String[] strArr = this.f11231;
        if (strArr != null) {
            enabledCipherSuites = AbstractC4710.m9427(strArr, enabledCipherSuites, C2963.f11309);
        }
        String[] strArr2 = this.f11232;
        String[] m9427 = strArr2 != null ? AbstractC4710.m9427(sSLSocket.getEnabledProtocols(), strArr2, C1947.f7727) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        C2961 c2961 = C2963.f11309;
        byte[] bArr = AbstractC4710.f17800;
        int length = supportedCipherSuites.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            } else if (c2961.compare(supportedCipherSuites[i], "TLS_FALLBACK_SCSV") == 0) {
                break;
            } else {
                i++;
            }
        }
        if (z && i != -1) {
            String str = supportedCipherSuites[i];
            enabledCipherSuites = (String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length + 1);
            enabledCipherSuites[enabledCipherSuites.length - 1] = str;
        }
        String[] strArr3 = (String[]) Arrays.copyOf(enabledCipherSuites, enabledCipherSuites.length);
        boolean z2 = this.f11234;
        if (!z2) {
            throw new IllegalArgumentException("no cipher suites for cleartext connections");
        }
        if (strArr3.length == 0) {
            throw new IllegalArgumentException("At least one cipher suite is required");
        }
        String[] strArr4 = (String[]) Arrays.copyOf(strArr3, strArr3.length);
        String[] strArr5 = (String[]) Arrays.copyOf(m9427, m9427.length);
        if (!z2) {
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }
        if (strArr5.length == 0) {
            throw new IllegalArgumentException("At least one TLS version is required");
        }
        C2946 c2946 = new C2946(z2, this.f11233, strArr4, (String[]) Arrays.copyOf(strArr5, strArr5.length));
        if (c2946.m6478() != null) {
            sSLSocket.setEnabledProtocols(c2946.f11232);
        }
        if (c2946.m6479() != null) {
            sSLSocket.setEnabledCipherSuites(c2946.f11231);
        }
    }
}
