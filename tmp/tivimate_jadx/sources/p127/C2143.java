package p127;

import android.net.Uri;
import android.util.Base64;
import p012.AbstractC0903;

/* renamed from: ˈـ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2143 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Uri f8329;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2177 f8330;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x021a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0138. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0487  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x058c  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x05c5  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x06b0  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0599  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x06c8  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x06f7  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x06ca  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x059b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x030e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2143(p127.C2156 r39, p127.C2147 r40, android.net.Uri r41) {
        /*
            Method dump skipped, instructions count: 2020
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p127.C2143.<init>(ˈـ.ˉˆ, ˈـ.ʽ, android.net.Uri):void");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static byte[] m5096(String str) {
        byte[] decode = Base64.decode(str, 0);
        byte[] bArr = new byte[decode.length + 4];
        System.arraycopy(AbstractC0903.f3824, 0, bArr, 0, 4);
        System.arraycopy(decode, 0, bArr, 4, decode.length);
        return bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2143.class == obj.getClass()) {
            C2143 c2143 = (C2143) obj;
            if (this.f8330.equals(c2143.f8330) && this.f8329.equals(c2143.f8329)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f8329.hashCode() + ((this.f8330.hashCode() + 217) * 31);
    }
}
