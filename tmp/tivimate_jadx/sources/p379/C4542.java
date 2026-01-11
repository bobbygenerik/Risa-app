package p379;

import java.util.HashMap;
import p008.InterfaceC0837;
import p317.InterfaceC3912;
import p354.AbstractC4334;
import p408.C4839;
import p456.InterfaceC5379;

/* renamed from: ᵢᵢ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4542 implements InterfaceC5379 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final HashMap f17025;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC0837 f17026;

    static {
        HashMap hashMap = new HashMap();
        f17025 = hashMap;
        hashMap.put("HMACSHA256", new C4544(2));
        hashMap.put("HMACMD5", new C4544(3));
    }

    public C4542(String str) {
        InterfaceC3912 interfaceC3912 = (InterfaceC3912) f17025.get(str.toUpperCase());
        if (interfaceC3912 == null) {
            throw new IllegalArgumentException("No Mac defined for ".concat(str));
        }
        this.f17026 = (InterfaceC0837) interfaceC3912.mo8085();
    }

    @Override // p456.InterfaceC5379
    public final void update(byte[] bArr) {
        ((C4839) this.f17026).f18147.m8784(bArr, 0, bArr.length);
    }

    @Override // p456.InterfaceC5379
    public final void update(byte[] bArr, int i, int i2) {
        ((C4839) this.f17026).f18147.m8784(bArr, i, i2);
    }

    @Override // p456.InterfaceC5379
    /* renamed from: ˉʿ */
    public final void mo6827(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        C4839 c4839 = (C4839) this.f17026;
        byte[] bArr3 = c4839.f18145;
        byte[] bArr4 = c4839.f18148;
        AbstractC4334 abstractC4334 = c4839.f18147;
        abstractC4334.mo8762();
        int i = c4839.f18142;
        if (length > i) {
            abstractC4334.m8784(bArr2, 0, length);
            abstractC4334.mo8763(0, bArr4);
            length = c4839.f18146;
        } else {
            System.arraycopy(bArr2, 0, bArr4, 0, length);
        }
        while (length < bArr4.length) {
            bArr4[length] = 0;
            length++;
        }
        System.arraycopy(bArr4, 0, bArr3, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            bArr4[i2] = (byte) (bArr4[i2] ^ 54);
        }
        for (int i3 = 0; i3 < i; i3++) {
            bArr3[i3] = (byte) (bArr3[i3] ^ 92);
        }
        AbstractC4334 mo8769 = abstractC4334.mo8769();
        c4839.f18144 = mo8769;
        mo8769.m8784(bArr3, 0, i);
        abstractC4334.m8784(bArr4, 0, bArr4.length);
        c4839.f18143 = abstractC4334.mo8769();
    }

    @Override // p456.InterfaceC5379
    /* renamed from: ᵔᵢ */
    public final void mo6850(byte b) {
        ((C4839) this.f17026).f18147.m8782(b);
    }

    @Override // p456.InterfaceC5379
    /* renamed from: ﾞᴵ */
    public final byte[] mo6857() {
        C4839 c4839 = (C4839) this.f17026;
        byte[] bArr = new byte[c4839.f18146];
        AbstractC4334 abstractC4334 = c4839.f18147;
        byte[] bArr2 = c4839.f18145;
        int i = c4839.f18142;
        abstractC4334.mo8763(i, bArr2);
        AbstractC4334 abstractC43342 = c4839.f18144;
        if (abstractC43342 != null) {
            abstractC4334.mo8764(abstractC43342);
            abstractC4334.m8784(bArr2, i, abstractC4334.mo8766());
        } else {
            abstractC4334.m8784(bArr2, 0, bArr2.length);
        }
        abstractC4334.mo8763(0, bArr);
        while (i < bArr2.length) {
            bArr2[i] = 0;
            i++;
        }
        AbstractC4334 abstractC43343 = c4839.f18143;
        if (abstractC43343 != null) {
            abstractC4334.mo8764(abstractC43343);
            return bArr;
        }
        byte[] bArr3 = c4839.f18148;
        abstractC4334.m8784(bArr3, 0, bArr3.length);
        return bArr;
    }
}
