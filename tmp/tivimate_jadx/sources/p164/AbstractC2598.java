package p164;

import java.io.Closeable;
import p035.C1233;
import p393.C4704;
import ᵎˉ.ⁱˊ;

/* renamed from: ˊᐧ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2598 implements Closeable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final C2597 f9833;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [ˊᐧ.ﹳᐧ] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    static {
        ?? r0;
        try {
            Class.forName("java.nio.file.Files");
            r0 = new Object();
        } catch (ClassNotFoundException unused) {
            r0 = new Object();
        }
        f9833 = r0;
        String str = C2575.f9776;
        ⁱˊ.ᵔᵢ(System.getProperty("java.io.tmpdir"), false);
        new C4704(C4704.class.getClassLoader());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    /* renamed from: ʽ */
    public abstract void mo5789(C2575 c2575, C2575 c25752);

    /* renamed from: ʾˋ */
    public abstract C2593 mo5811(C2575 c2575);

    /* renamed from: ˈٴ */
    public abstract C2593 mo5812(C2575 c2575);

    /* renamed from: ˉˆ */
    public abstract void mo5813(C2575 c2575);

    /* renamed from: ـˆ */
    public abstract C1233 mo5790(C2575 c2575);

    /* renamed from: ᵎˊ */
    public abstract InterfaceC2588 mo5814(C2575 c2575);

    /* renamed from: ᵎﹶ */
    public abstract void mo5815(C2575 c2575);

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean m5821(C2575 c2575) {
        return mo5790(c2575) != null;
    }
}
