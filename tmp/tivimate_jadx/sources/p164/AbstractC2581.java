package p164;

/* renamed from: ˊᐧ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2581 implements InterfaceC2588 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2588 f9801;

    public AbstractC2581(InterfaceC2588 interfaceC2588) {
        this.f9801 = interfaceC2588;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f9801.close();
    }

    public final String toString() {
        return getClass().getSimpleName() + '(' + this.f9801 + ')';
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ˑﹳ */
    public final C2580 mo5762() {
        return this.f9801.mo5762();
    }
}
