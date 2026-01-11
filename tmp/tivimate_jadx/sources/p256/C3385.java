package p256;

import androidx.datastore.preferences.protobuf.AbstractC0016;
import java.security.GeneralSecurityException;
import p035.AbstractC1220;

/* renamed from: יٴ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3385 extends AbstractC3376 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f13222;

    public C3385(int i, byte[] bArr) {
        this.f13222 = i;
        if (!AbstractC1220.m3779(1)) {
            throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
        }
        this.f13191 = mo7248(1, bArr);
        this.f13190 = mo7248(0, bArr);
    }

    @Override // p256.AbstractC3376
    /* renamed from: ˆʾ */
    public final AbstractC0016 mo7248(int i, byte[] bArr) {
        switch (this.f13222) {
            case 0:
                return new C3379(bArr, i, 0);
            default:
                return new C3379(bArr, i, 1);
        }
    }
}
