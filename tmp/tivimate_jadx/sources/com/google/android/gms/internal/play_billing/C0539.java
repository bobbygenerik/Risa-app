package com.google.android.gms.internal.play_billing;

import java.util.LinkedHashMap;

/* renamed from: com.google.android.gms.internal.play_billing.ʾˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0539 implements InterfaceC0636 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0539 f2312 = new C0539(0);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f2313;

    public /* synthetic */ C0539(int i) {
        this.f2313 = i;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.LinkedHashMap, com.google.android.gms.internal.play_billing.ʿـ] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C0546 m2086(Object obj, Object obj2) {
        C0546 c0546 = (C0546) obj;
        C0546 c05462 = (C0546) obj2;
        if (!c05462.isEmpty()) {
            if (!c0546.f2324) {
                if (c0546.isEmpty()) {
                    c0546 = new C0546();
                } else {
                    ?? linkedHashMap = new LinkedHashMap(c0546);
                    linkedHashMap.f2324 = true;
                    c0546 = linkedHashMap;
                }
            }
            c0546.m2103();
            if (!c05462.isEmpty()) {
                c0546.putAll(c05462);
            }
        }
        return c0546;
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0636
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean mo2087(Class cls) {
        switch (this.f2313) {
            case 0:
                return AbstractC0529.class.isAssignableFrom(cls);
            default:
                return false;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0636
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C0535 mo2088(Class cls) {
        switch (this.f2313) {
            case 0:
                if (!AbstractC0529.class.isAssignableFrom(cls)) {
                    throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
                }
                try {
                    return (C0535) AbstractC0529.m2043(cls.asSubclass(AbstractC0529.class)).mo2022(3);
                } catch (Exception e) {
                    throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e);
                }
            default:
                throw new IllegalStateException("This should never be called.");
        }
    }
}
