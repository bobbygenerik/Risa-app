package androidx.datastore.preferences.protobuf;

/* renamed from: androidx.datastore.preferences.protobuf.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0036 implements InterfaceC0053 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0036 f430 = new C0036(0);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f431;

    public /* synthetic */ C0036(int i) {
        this.f431 = i;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0053
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean mo255(Class cls) {
        switch (this.f431) {
            case 0:
                return AbstractC0003.class.isAssignableFrom(cls);
            default:
                return false;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0053
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0028 mo256(Class cls) {
        switch (this.f431) {
            case 0:
                if (!AbstractC0003.class.isAssignableFrom(cls)) {
                    throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
                }
                try {
                    return (C0028) AbstractC0003.m145(cls.asSubclass(AbstractC0003.class)).mo149(3);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
                }
            default:
                throw new IllegalStateException("This should never be called.");
        }
    }
}
