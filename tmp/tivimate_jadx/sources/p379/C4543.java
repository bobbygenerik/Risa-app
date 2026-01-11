package p379;

import java.util.HashMap;
import p317.InterfaceC3912;
import p354.AbstractC4334;
import p456.InterfaceC5378;

/* renamed from: ᵢᵢ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4543 implements InterfaceC5378 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final HashMap f17027;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC4334 f17028;

    static {
        HashMap hashMap = new HashMap();
        f17027 = hashMap;
        hashMap.put("SHA256", new C4544(4));
        hashMap.put("MD4", new C4544(5));
    }

    public C4543() {
        InterfaceC3912 interfaceC3912 = (InterfaceC3912) f17027.get("MD4");
        if (interfaceC3912 == null) {
            throw new IllegalArgumentException("No MessageDigest MD4 defined in BouncyCastle");
        }
        this.f17028 = (AbstractC4334) interfaceC3912.mo8085();
    }

    @Override // p456.InterfaceC5378
    public final void update(byte[] bArr) {
        this.f17028.m8784(bArr, 0, bArr.length);
    }

    @Override // p456.InterfaceC5378
    /* renamed from: ˈ, reason: contains not printable characters */
    public final byte[] mo9115() {
        AbstractC4334 abstractC4334 = this.f17028;
        byte[] bArr = new byte[abstractC4334.mo8766()];
        abstractC4334.mo8763(0, bArr);
        return bArr;
    }
}
