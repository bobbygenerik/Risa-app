package p237;

import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import p103.InterfaceC1918;
import p146.C2409;
import ʻٴ.ˑﹳ;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˑי.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3201 {

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final ˑﹳ f12247 = new ˑﹳ(9);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ᵎﹶ f12248;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ʽ f12249;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2409 f12251;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final UUID f12252 = UUID.randomUUID();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f12250 = new CopyOnWriteArrayList();

    public C3201(ʽ r2, InterfaceC1918 interfaceC1918, C2409 c2409) {
        this.f12249 = r2;
        this.f12248 = (ᵎﹶ) interfaceC1918;
        this.f12251 = c2409;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7041(AutoCloseable autoCloseable) {
        this.f12251.add(autoCloseable);
        for (Runnable runnable : (Runnable[]) this.f12250.toArray(new Runnable[0])) {
            runnable.run();
        }
    }
}
