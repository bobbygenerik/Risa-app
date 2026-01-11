package androidx.datastore.preferences.protobuf;

import java.nio.charset.Charset;

/* renamed from: androidx.datastore.preferences.protobuf.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0010 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C0036 f384 = new C0036(1);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f385;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.datastore.preferences.protobuf.ᴵˊ] */
    public C0010() {
        InterfaceC0053 interfaceC0053;
        C0034 c0034 = C0034.f426;
        try {
            interfaceC0053 = (InterfaceC0053) Class.forName("androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            interfaceC0053 = f384;
        }
        InterfaceC0053[] interfaceC0053Arr = {C0036.f430, interfaceC0053};
        ?? obj = new Object();
        obj.f448 = interfaceC0053Arr;
        Charset charset = AbstractC0013.f389;
        this.f385 = obj;
    }

    public C0010(C0067 c0067) {
        AbstractC0013.m218(c0067, "output");
        this.f385 = c0067;
        c0067.f515 = this;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m216(int i, Object obj, InterfaceC0006 interfaceC0006) {
        C0067 c0067 = (C0067) this.f385;
        c0067.m407(i, 3);
        interfaceC0006.mo173((AbstractC0063) obj, c0067.f515);
        c0067.m407(i, 4);
    }
}
