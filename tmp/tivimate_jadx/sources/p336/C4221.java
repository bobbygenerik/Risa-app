package p336;

import com.bumptech.glide.ʽ;
import java.io.FileInputStream;
import java.io.IOException;
import p090.C1773;
import p090.InterfaceC1802;
import p123.C2127;
import p435.AbstractC5154;

/* renamed from: ᵎʽ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4221 implements InterfaceC1802 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4221 f15695 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4219 f15694 = new C4219(null, null, null, null, null);

    @Override // p090.InterfaceC1802
    /* renamed from: ʽ */
    public final Object mo4358(FileInputStream fileInputStream) {
        try {
            C2127 c2127 = C2127.f8308;
            String str = new String(ʽ.ʽﹳ(fileInputStream), AbstractC5154.f19435);
            c2127.getClass();
            return (C4219) c2127.m5086(C4219.Companion.serializer(), str);
        } catch (Exception e) {
            throw new IOException("Cannot parse session configs", e);
        }
    }

    @Override // p090.InterfaceC1802
    /* renamed from: ⁱˊ */
    public final void mo4359(Object obj, C1773 c1773) {
        c1773.write(C2127.f8308.m5085(C4219.Companion.serializer(), (C4219) obj).getBytes(AbstractC5154.f19435));
    }

    @Override // p090.InterfaceC1802
    /* renamed from: ﹳٴ */
    public final /* bridge */ /* synthetic */ Object mo4360() {
        return f15694;
    }
}
