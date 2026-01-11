package p239;

import java.util.Arrays;
import p207.AbstractC2936;

/* renamed from: ˑᐧ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3209 extends AbstractC3207 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f12259;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final boolean[] f12260;

    public C3209(AbstractC2936 abstractC2936, byte[] bArr, int i) {
        super(abstractC2936, bArr);
        this.f12259 = i;
        int length = (bArr.length * 8) - i;
        boolean[] zArr = new boolean[length];
        for (int i2 = 0; i2 < length; i2++) {
            boolean z = true;
            if ((bArr[i2 / 8] & (1 << (7 - (i2 % 8)))) == 0) {
                z = false;
            }
            zArr[i2] = z;
        }
        this.f12260 = zArr;
    }

    @Override // p207.AbstractC2934
    /* renamed from: ⁱˊ */
    public final String mo6460() {
        return Arrays.toString(this.f12260);
    }

    @Override // p207.AbstractC2934
    /* renamed from: ﹳٴ */
    public final Object mo4944() {
        boolean[] zArr = this.f12260;
        return Arrays.copyOf(zArr, zArr.length);
    }
}
