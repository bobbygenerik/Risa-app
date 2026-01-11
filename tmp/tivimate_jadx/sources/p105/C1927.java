package p105;

import p234.C3194;
import ﹳˋ.ʼˎ;

/* renamed from: ˆי.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1927 implements InterfaceC1923 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final ʼˎ f7666 = new ʼˎ(11);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f7667;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f7668;

    public C1927(C3194 c3194) {
        this.f7667 = c3194;
        this.f7668 = f7666;
    }

    public C1927(byte[] bArr, int[] iArr) {
        this.f7667 = bArr;
        this.f7668 = iArr;
    }

    @Override // p105.InterfaceC1923
    /* renamed from: ﹳٴ */
    public void mo4864(C1921 c1921, int i) {
        int[] iArr = (int[]) this.f7668;
        try {
            c1921.read((byte[]) this.f7667, iArr[0], i);
            iArr[0] = iArr[0] + i;
        } finally {
            c1921.close();
        }
    }
}
