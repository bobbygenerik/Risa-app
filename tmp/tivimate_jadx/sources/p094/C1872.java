package p094;

import java.util.Arrays;
import p035.AbstractC1220;

/* renamed from: ˆʻ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1872 extends AbstractC1863 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] f7503;

    public C1872(String str, byte[] bArr) {
        super(str);
        this.f7503 = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1872.class == obj.getClass()) {
            C1872 c1872 = (C1872) obj;
            if (this.f7481.equals(c1872.f7481) && Arrays.equals(this.f7503, c1872.f7503)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f7503) + AbstractC1220.m3780(527, 31, this.f7481);
    }
}
