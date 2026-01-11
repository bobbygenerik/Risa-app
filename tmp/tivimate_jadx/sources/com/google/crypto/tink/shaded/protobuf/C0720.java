package com.google.crypto.tink.shaded.protobuf;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0720 implements InterfaceC0737 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0720 f3007 = new C0720(0);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f3008;

    public /* synthetic */ C0720(int i) {
        this.f3008 = i;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0737
    /* renamed from: ⁱˊ */
    public final boolean mo2531(Class cls) {
        switch (this.f3008) {
            case 0:
                return AbstractC0725.class.isAssignableFrom(cls);
            default:
                return false;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0737
    /* renamed from: ﹳٴ */
    public final C0748 mo2532(Class cls) {
        switch (this.f3008) {
            case 0:
                if (!AbstractC0725.class.isAssignableFrom(cls)) {
                    throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
                }
                try {
                    return (C0748) AbstractC0725.m2559(cls.asSubclass(AbstractC0725.class)).mo2566(3);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
                }
            default:
                throw new IllegalStateException("This should never be called.");
        }
    }
}
