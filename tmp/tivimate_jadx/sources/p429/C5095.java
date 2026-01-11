package p429;

import com.google.android.gms.internal.play_billing.י;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import p277.InterfaceC3536;
import p307.AbstractC3740;
import p404.AbstractC4796;
import p404.AbstractC4804;

/* renamed from: ﹶˆ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5095 implements InterfaceC3536 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f19198;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final byte[] f19199;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5090 f19200;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5093 f19201;

    public C5095(C5093 c5093, C5090 c5090, int i, byte[] bArr) {
        this.f19201 = c5093;
        this.f19200 = c5090;
        this.f19198 = i;
        this.f19199 = bArr;
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ⁱˊ */
    public final byte[] mo4895(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = this.f19199;
        int length2 = bArr3.length;
        int i = this.f19198;
        if (length < length2 + i) {
            throw new GeneralSecurityException("Decryption failed (ciphertext too short).");
        }
        if (!AbstractC4804.m9602(bArr3, bArr)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, bArr3.length, bArr.length - i);
        byte[] copyOfRange2 = Arrays.copyOfRange(bArr, bArr.length - i, bArr.length);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        if (!MessageDigest.isEqual(this.f19200.m9994(י.ﾞʻ(new byte[][]{bArr2, copyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8)})), copyOfRange2)) {
            throw new GeneralSecurityException("invalid MAC");
        }
        int length3 = copyOfRange.length;
        C5093 c5093 = this.f19201;
        int i2 = c5093.f19195;
        if (length3 < i2) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        byte[] bArr4 = new byte[i2];
        System.arraycopy(copyOfRange, 0, bArr4, 0, i2);
        int length4 = copyOfRange.length;
        int i3 = c5093.f19195;
        byte[] bArr5 = new byte[length4 - i3];
        c5093.m9996(copyOfRange, i3, copyOfRange.length - i3, bArr5, 0, bArr4, false);
        return bArr5;
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ﹳٴ */
    public final byte[] mo4896(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        C5093 c5093 = this.f19201;
        int i = c5093.f19195;
        int i2 = Integer.MAX_VALUE - i;
        if (length > i2) {
            throw new GeneralSecurityException(AbstractC3740.m7932(i2, "plaintext length can not exceed "));
        }
        byte[] bArr3 = new byte[bArr.length + i];
        byte[] m9578 = AbstractC4796.m9578(i);
        System.arraycopy(m9578, 0, bArr3, 0, i);
        c5093.m9996(bArr, 0, bArr.length, bArr3, c5093.f19195, m9578, true);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        return י.ﾞʻ(new byte[][]{this.f19199, bArr3, this.f19200.m9994(י.ﾞʻ(new byte[][]{bArr2, bArr3, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8)}))});
    }
}
