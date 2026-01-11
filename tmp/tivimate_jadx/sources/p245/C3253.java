package p245;

import com.bumptech.glide.ʽ;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.crypto.tink.shaded.protobuf.C0740;
import j$.util.DesugarCollections;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.HashSet;
import java.util.Set;
import p106.C1937;
import p277.AbstractC3528;
import p277.InterfaceC3536;
import p330.C4127;
import p330.C4171;
import p330.EnumC4150;
import p330.EnumC4167;
import p404.C4780;
import p404.C4799;
import p404.C4806;
import p404.C4810;
import p404.C4811;
import ﹳˋ.ʽʽ;

/* renamed from: יʻ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3253 implements InterfaceC3536 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final byte[] f12515 = new byte[0];

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Set f12516;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1937 f12517;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC3528 f12518;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f12519;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("type.googleapis.com/google.crypto.tink.AesGcmKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        hashSet.add("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesEaxKey");
        f12516 = DesugarCollections.unmodifiableSet(hashSet);
    }

    public C3253(C4171 c4171, C1937 c1937) {
        if (!f12516.contains(c4171.m8519())) {
            throw new IllegalArgumentException("Unsupported DEK key type: " + c4171.m8519() + ". Only Tink AEAD key types are supported.");
        }
        this.f12519 = c4171.m8519();
        C4127 m8512 = C4171.m8512(c4171);
        m8512.m8397(EnumC4150.f15581);
        this.f12518 = ʽ.יـ(((C4171) m8512.m2485()).m2700());
        this.f12517 = c1937;
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ⁱˊ */
    public final byte[] mo4895(byte[] bArr, byte[] bArr2) {
        try {
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int i = wrap.getInt();
            if (i <= 0 || i > 4096 || i > bArr.length - 4) {
                throw new GeneralSecurityException("length of encrypted DEK too large");
            }
            byte[] bArr3 = new byte[i];
            wrap.get(bArr3, 0, i);
            byte[] bArr4 = new byte[wrap.remaining()];
            wrap.get(bArr4, 0, wrap.remaining());
            byte[] mo4895 = this.f12517.mo4895(bArr3, f12515);
            String str = this.f12519;
            C0740 c0740 = AbstractC0744.f3063;
            return ((InterfaceC3536) ((C4780) C4806.f18067.f18068.get()).m9552(C4810.f18077.m9617(C4799.m9586(str, AbstractC0744.m2694(mo4895, 0, mo4895.length), EnumC4167.f15584, EnumC4150.f15581, null)), InterfaceC3536.class)).mo4895(bArr4, bArr2);
        } catch (IndexOutOfBoundsException e) {
            e = e;
            throw new GeneralSecurityException("invalid ciphertext", e);
        } catch (NegativeArraySizeException e2) {
            e = e2;
            throw new GeneralSecurityException("invalid ciphertext", e);
        } catch (BufferUnderflowException e3) {
            e = e3;
            throw new GeneralSecurityException("invalid ciphertext", e);
        }
    }

    @Override // p277.InterfaceC3536
    /* renamed from: ﹳٴ */
    public final byte[] mo4896(byte[] bArr, byte[] bArr2) {
        ʽʽ m9619 = C4811.f18079.m9619(this.f12518, null);
        byte[] mo4896 = this.f12517.mo4896(((AbstractC0744) ((C4799) C4810.f18077.m9614(m9619)).f18049).m2696(), f12515);
        if (mo4896.length > 4096) {
            throw new GeneralSecurityException("length of encrypted DEK too large");
        }
        byte[] mo48962 = ((InterfaceC3536) ((C4780) C4806.f18067.f18068.get()).m9552(m9619, InterfaceC3536.class)).mo4896(bArr, bArr2);
        return ByteBuffer.allocate(mo4896.length + 4 + mo48962.length).putInt(mo4896.length).put(mo4896).put(mo48962).array();
    }
}
