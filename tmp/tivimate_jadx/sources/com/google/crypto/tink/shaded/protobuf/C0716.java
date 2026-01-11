package com.google.crypto.tink.shaded.protobuf;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0716 implements InterfaceC0737 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public InterfaceC0737[] f3004;

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0737
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean mo2531(Class cls) {
        for (InterfaceC0737 interfaceC0737 : this.f3004) {
            if (interfaceC0737.mo2531(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0737
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0748 mo2532(Class cls) {
        for (InterfaceC0737 interfaceC0737 : this.f3004) {
            if (interfaceC0737.mo2531(cls)) {
                return interfaceC0737.mo2532(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }
}
