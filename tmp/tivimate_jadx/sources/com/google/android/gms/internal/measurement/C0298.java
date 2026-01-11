package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ʿʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0298 implements InterfaceC0456 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0298 f1921 = new C0298(0);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f1922;

    public /* synthetic */ C0298(int i) {
        this.f1922 = i;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0454 m1310(Object obj, Object obj2) {
        C0454 c0454 = (C0454) obj;
        C0454 c04542 = (C0454) obj2;
        if (!c04542.isEmpty()) {
            if (!c0454.f2206) {
                c0454 = c0454.m1887();
            }
            c0454.m1886();
            if (!c04542.isEmpty()) {
                c0454.putAll(c04542);
            }
        }
        return c0454;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0456
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C0423 mo1311(Class cls) {
        switch (this.f1922) {
            case 0:
                if (!AbstractC0269.class.isAssignableFrom(cls)) {
                    throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
                }
                try {
                    return (C0423) AbstractC0269.m1226(cls.asSubclass(AbstractC0269.class)).mo1194(3);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
                }
            default:
                throw new IllegalStateException("This should never be called.");
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0456
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean mo1312(Class cls) {
        switch (this.f1922) {
            case 0:
                return AbstractC0269.class.isAssignableFrom(cls);
            default:
                return false;
        }
    }
}
