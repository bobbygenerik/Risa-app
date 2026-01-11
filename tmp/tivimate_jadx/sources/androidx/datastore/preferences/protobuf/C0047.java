package androidx.datastore.preferences.protobuf;

/* renamed from: androidx.datastore.preferences.protobuf.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0047 implements InterfaceC0053 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public InterfaceC0053[] f448;

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0053
    /* renamed from: ⁱˊ */
    public final boolean mo255(Class cls) {
        for (InterfaceC0053 interfaceC0053 : this.f448) {
            if (interfaceC0053.mo255(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0053
    /* renamed from: ﹳٴ */
    public final C0028 mo256(Class cls) {
        for (InterfaceC0053 interfaceC0053 : this.f448) {
            if (interfaceC0053.mo255(cls)) {
                return interfaceC0053.mo256(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }
}
