package com.google.crypto.tink.shaded.protobuf;

import java.io.IOException;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0749 implements InterfaceC0742 {
    protected int memoizedHashCode;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String m2699(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    /* renamed from: ˈ */
    public abstract AbstractC0701 mo2567();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final byte[] m2700() {
        try {
            int mo2572 = ((AbstractC0725) this).mo2572(null);
            byte[] bArr = new byte[mo2572];
            C0751 c0751 = new C0751(mo2572, bArr);
            mo2570(c0751);
            if (mo2572 - c0751.f3080 == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            throw new RuntimeException(m2699("byte array"), e);
        }
    }

    /* renamed from: ᵎﹶ */
    public abstract void mo2570(C0751 c0751);

    /* renamed from: ⁱˊ */
    public abstract int mo2572(InterfaceC0711 interfaceC0711);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C0740 m2701() {
        try {
            int mo2572 = ((AbstractC0725) this).mo2572(null);
            C0740 c0740 = AbstractC0744.f3063;
            byte[] bArr = new byte[mo2572];
            C0751 c0751 = new C0751(mo2572, bArr);
            mo2570(c0751);
            if (c0751.f3082 - c0751.f3080 == 0) {
                return new C0740(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            throw new RuntimeException(m2699("ByteString"), e);
        }
    }
}
