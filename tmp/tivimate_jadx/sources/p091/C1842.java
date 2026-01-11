package p091;

import p324.AbstractC4017;

/* renamed from: ʿⁱ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1842 extends AbstractC1845 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C1842 f7411;

    /* JADX WARN: Type inference failed for: r0v0, types: [ʿⁱ.ᵎﹶ, ʿⁱ.ˈ, ᴵי.ˏי] */
    static {
        int i = AbstractC1841.f7405;
        int i2 = AbstractC1841.f7406;
        long j = AbstractC1841.f7407;
        String str = AbstractC1841.f7409;
        ?? abstractC4017 = new AbstractC4017();
        abstractC4017.f7413 = new ExecutorC1847(i, i2, j, str);
        f7411 = abstractC4017;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // p324.AbstractC4017
    public final String toString() {
        return "Dispatchers.Default";
    }
}
