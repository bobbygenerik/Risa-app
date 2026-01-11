package p308;

import java.util.Arrays;

/* renamed from: ᐧٴ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3747 extends AbstractC3767 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] f14601;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f14602;

    public C3747(byte[] bArr, byte[] bArr2) {
        this.f14602 = bArr;
        this.f14601 = bArr2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC3767) {
            AbstractC3767 abstractC3767 = (AbstractC3767) obj;
            boolean z = abstractC3767 instanceof C3747;
            C3747 c3747 = (C3747) abstractC3767;
            if (Arrays.equals(this.f14602, z ? c3747.f14602 : c3747.f14602)) {
                C3747 c37472 = (C3747) abstractC3767;
                if (Arrays.equals(this.f14601, z ? c37472.f14601 : c37472.f14601)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Arrays.hashCode(this.f14602) ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f14601);
    }

    public final String toString() {
        return "ExperimentIds{clearBlob=" + Arrays.toString(this.f14602) + ", encryptedBlob=" + Arrays.toString(this.f14601) + "}";
    }
}
