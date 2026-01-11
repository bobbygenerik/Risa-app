package p062;

import com.bumptech.glide.ʽ;
import java.io.FileInputStream;
import java.io.IOException;
import p090.C1773;
import p090.InterfaceC1802;
import p123.C2127;
import p435.AbstractC5154;

/* renamed from: ʾˈ.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1568 implements InterfaceC1802 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1588 f6132;

    public C1568(C1588 c1588) {
        this.f6132 = c1588;
    }

    @Override // p090.InterfaceC1802
    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object mo4358(FileInputStream fileInputStream) {
        try {
            C2127 c2127 = C2127.f8308;
            String str = new String(ʽ.ʽﹳ(fileInputStream), AbstractC5154.f19435);
            c2127.getClass();
            return (C1579) c2127.m5086(C1579.Companion.serializer(), str);
        } catch (Exception e) {
            throw new IOException("Cannot parse session data", e);
        }
    }

    @Override // p090.InterfaceC1802
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo4359(Object obj, C1773 c1773) {
        c1773.write(C2127.f8308.m5085(C1579.Companion.serializer(), (C1579) obj).getBytes(AbstractC5154.f19435));
    }

    @Override // p090.InterfaceC1802
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object mo4360() {
        return new C1579(this.f6132.m4366(null), null, null);
    }
}
