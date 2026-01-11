package p022;

import p137.AbstractC2305;

/* renamed from: ʼˊ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1048 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static volatile C1048 f4129;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ʼˊ.ﹳٴ] */
    static {
        ?? obj = new Object();
        String property = System.getProperty("org.tukaani.xz.ArrayCache");
        if (property == null) {
            property = "Dummy";
        }
        if (property.equals("Basic")) {
            f4129 = AbstractC1041.f4095;
        } else {
            if (!property.equals("Dummy")) {
                throw new Error(AbstractC2305.m5378("Unsupported value '", property, "' in the system property org.tukaani.xz.ArrayCache. Supported values: Dummy, Basic"));
            }
            f4129 = obj;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void mo3387(byte[] bArr) {
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public byte[] mo3388(int i) {
        return new byte[i];
    }
}
