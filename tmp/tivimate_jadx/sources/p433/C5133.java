package p433;

import android.net.Uri;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p266.C3454;
import p266.C3456;
import p266.InterfaceC3457;
import p266.InterfaceC3462;

/* renamed from: ﹶˎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5133 implements InterfaceC3462 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final byte[] f19391;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC3462 f19392;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public CipherInputStream f19393;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final byte[] f19394;

    public C5133(InterfaceC3462 interfaceC3462, byte[] bArr, byte[] bArr2) {
        this.f19392 = interfaceC3462;
        this.f19394 = bArr;
        this.f19391 = bArr2;
    }

    @Override // p266.InterfaceC3462
    public final void close() {
        if (this.f19393 != null) {
            this.f19393 = null;
            this.f19392.close();
        }
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        this.f19393.getClass();
        int read = this.f19393.read(bArr, i, i2);
        if (read < 0) {
            return -1;
        }
        return read;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ʽʽ */
    public final long mo4684(C3456 c3456) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            try {
                cipher.init(2, new SecretKeySpec(this.f19394, "AES"), new IvParameterSpec(this.f19391));
                C3454 c3454 = new C3454(this.f19392, c3456);
                this.f19393 = new CipherInputStream(c3454, cipher);
                if (c3454.f13566) {
                    return -1L;
                }
                c3454.f13565.mo4684(c3454.f13567);
                c3454.f13566 = true;
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                throw new RuntimeException(e);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ˉʿ */
    public final void mo5139(InterfaceC3457 interfaceC3457) {
        interfaceC3457.getClass();
        this.f19392.mo5139(interfaceC3457);
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ */
    public final Uri mo4685() {
        return this.f19392.mo4685();
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ٴﹶ */
    public final Map mo5140() {
        return this.f19392.mo5140();
    }
}
