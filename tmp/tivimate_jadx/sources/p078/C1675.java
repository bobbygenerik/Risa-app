package p078;

import p012.C0881;
import p368.AbstractC4501;

/* renamed from: ʿʼ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1675 extends AbstractC4501 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C0881 f6792;

    @Override // p368.AbstractC4501
    /* renamed from: ʽ, reason: contains not printable characters */
    public final int mo4564() {
        return this.f6792.f3737;
    }

    @Override // p368.AbstractC4501
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int mo4565(byte[] bArr) {
        C0881 c0881 = this.f6792;
        byte[] bArr2 = c0881.f3738;
        int i = c0881.f3737;
        if (i >= bArr.length) {
            i = bArr.length;
        }
        int i2 = c0881.f3736;
        if (i2 + i <= bArr2.length) {
            System.arraycopy(bArr2, i2, bArr, 0, i);
        } else {
            int length = bArr2.length - i2;
            System.arraycopy(bArr2, i2, bArr, 0, length);
            System.arraycopy(bArr2, 0, bArr, length, i - length);
        }
        c0881.f3736 = (c0881.f3736 + i) % bArr2.length;
        c0881.f3737 -= i;
        return i;
    }
}
