package p368;

/* renamed from: ᵢʼ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4502 extends AbstractC4501 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f16855;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f16856;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final byte[] f16857;

    public C4502(int i, byte[] bArr) {
        this.f16857 = bArr;
        this.f16854 = 0L;
        this.f16855 = 0;
        this.f16856 = i;
    }

    @Override // p368.AbstractC4501
    /* renamed from: ʽ */
    public final int mo4564() {
        return this.f16856;
    }

    @Override // p368.AbstractC4501
    /* renamed from: ᵎﹶ */
    public final int mo4565(byte[] bArr) {
        int length = bArr.length;
        int i = this.f16856;
        if (length > i) {
            length = i;
        }
        System.arraycopy(this.f16857, this.f16855, bArr, 0, length);
        this.f16855 += length;
        this.f16856 -= length;
        return length;
    }
}
