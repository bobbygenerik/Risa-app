package p218;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import p277.InterfaceC3535;
import p404.C4776;

/* renamed from: ˏˑ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3020 implements InterfaceC3535 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4776 f11529;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3019 f11530;

    public C3020(C3019 c3019, C4776 c4776) {
        this.f11530 = c3019;
        this.f11529 = c4776;
    }

    @Override // p277.InterfaceC3535
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] mo6547(byte[] bArr, byte[] bArr2) {
        Iterator it = this.f11529.m9547(bArr).iterator();
        while (it.hasNext()) {
            try {
                return ((C3019) it.next()).f11528.mo6547(bArr, bArr2);
            } catch (GeneralSecurityException unused) {
            }
        }
        throw new GeneralSecurityException("decryption failed");
    }

    @Override // p277.InterfaceC3535
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] mo6548(byte[] bArr, byte[] bArr2) {
        byte[] mo6548 = this.f11530.f11528.mo6548(bArr, bArr2);
        int length = bArr.length;
        return mo6548;
    }
}
