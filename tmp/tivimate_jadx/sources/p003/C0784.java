package p003;

import android.util.Base64;
import p095.InterfaceC1882;
import p364.C4443;
import p392.C4655;

/* renamed from: ʻʿ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0784 implements InterfaceC1882 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3271;

    @Override // p095.InterfaceC1882
    public final Object get() {
        switch (this.f3271) {
            case 0:
                byte[] bArr = new byte[12];
                C0780.f3255.nextBytes(bArr);
                return Base64.encodeToString(bArr, 10);
            case 1:
                throw new IllegalStateException();
            case 2:
                return new C4655(new C4443(), 50000, 50000, 1000, 2000);
            default:
                try {
                    return Class.forName("androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder");
                } catch (Exception e) {
                    throw new IllegalStateException(e);
                }
        }
    }
}
