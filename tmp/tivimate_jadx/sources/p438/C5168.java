package p438;

import com.parse.ʽˑ;
import p000.C0754;
import p150.C2420;
import p150.InterfaceC2417;
import p246.InterfaceC3291;

/* renamed from: ﹶٴ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5168 implements InterfaceC3291 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C5168 f19461 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C5178 f19460 = new C5178("kotlin.Long", C2420.f9350);

    @Override // p246.InterfaceC3291
    /* renamed from: ʽ */
    public final Object mo4336(ʽˑ r3) {
        return Long.valueOf(r3.ﹳᐧ());
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ˈ */
    public final InterfaceC2417 mo4337() {
        return f19460;
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ﹳٴ */
    public final void mo4339(C0754 c0754, Object obj) {
        c0754.m2746(((Number) obj).longValue());
    }
}
