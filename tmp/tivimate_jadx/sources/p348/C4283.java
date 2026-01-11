package p348;

import com.google.android.gms.internal.measurement.ᵎ;
import java.security.MessageDigest;
import java.util.zip.CRC32;

/* renamed from: ᵎᵎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4283 extends AbstractC4280 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f15868;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object f15869;

    public C4283(int i) {
        this.f15868 = i;
        switch (i) {
            case 1:
                this.f15865 = 32;
                this.f15864 = "SHA-256";
                this.f15869 = MessageDigest.getInstance("SHA-256");
                return;
            default:
                this.f15869 = new CRC32();
                this.f15865 = 4;
                this.f15864 = "CRC32";
                return;
        }
    }

    @Override // p348.AbstractC4280
    /* renamed from: ˈ */
    public final void mo8659(byte[] bArr, int i, int i2) {
        switch (this.f15868) {
            case 0:
                ((CRC32) this.f15869).update(bArr, i, i2);
                return;
            default:
                ((MessageDigest) this.f15869).update(bArr, i, i2);
                return;
        }
    }

    @Override // p348.AbstractC4280
    /* renamed from: ﹳٴ */
    public final byte[] mo8662() {
        switch (this.f15868) {
            case 0:
                byte[] bArr = new byte[4];
                CRC32 crc32 = (CRC32) this.f15869;
                ᵎ.ﹳᐧ(bArr, 0, (int) crc32.getValue());
                crc32.reset();
                return bArr;
            default:
                MessageDigest messageDigest = (MessageDigest) this.f15869;
                byte[] digest = messageDigest.digest();
                messageDigest.reset();
                return digest;
        }
    }
}
