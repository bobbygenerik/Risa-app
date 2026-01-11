package com.google.crypto.tink.shaded.protobuf;

import java.nio.charset.Charset;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0729 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0720 f3017 = new C0720(1);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f3018;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.crypto.tink.shaded.protobuf.ˊʻ, java.lang.Object] */
    public C0729() {
        InterfaceC0737 interfaceC0737;
        C0696 c0696 = C0696.f2964;
        try {
            interfaceC0737 = (InterfaceC0737) Class.forName("com.google.crypto.tink.shaded.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            interfaceC0737 = f3017;
        }
        InterfaceC0737[] interfaceC0737Arr = {C0720.f3007, interfaceC0737};
        ?? obj = new Object();
        obj.f3004 = interfaceC0737Arr;
        Charset charset = AbstractC0702.f2979;
        this.f3018 = obj;
    }

    public C0729(C0751 c0751) {
        AbstractC0702.m2488(c0751, "output");
        this.f3018 = c0751;
        c0751.f3079 = this;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m2582(int i, Object obj, InterfaceC0711 interfaceC0711) {
        C0751 c0751 = (C0751) this.f3018;
        AbstractC0749 abstractC0749 = (AbstractC0749) obj;
        c0751.m2715(i, 2);
        c0751.m2713(abstractC0749.mo2572(interfaceC0711));
        interfaceC0711.mo2514(abstractC0749, c0751.f3079);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m2583(int i, Object obj, InterfaceC0711 interfaceC0711) {
        C0751 c0751 = (C0751) this.f3018;
        c0751.m2715(i, 3);
        interfaceC0711.mo2514((AbstractC0749) obj, c0751.f3079);
        c0751.m2715(i, 4);
    }
}
