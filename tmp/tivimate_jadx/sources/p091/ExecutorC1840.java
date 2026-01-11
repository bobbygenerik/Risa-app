package p091;

import java.util.concurrent.Executor;
import p126.C2134;
import p126.InterfaceC2139;
import p153.AbstractC2472;
import p153.AbstractC2481;
import p324.AbstractC4016;
import p324.AbstractC4017;

/* renamed from: ʿⁱ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ExecutorC1840 extends AbstractC4016 implements Executor {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final AbstractC4017 f7403;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final ExecutorC1840 f7404 = new AbstractC4017();

    /* JADX WARN: Type inference failed for: r0v0, types: [ʿⁱ.ʽ, ᴵי.ˏי] */
    static {
        C1844 c1844 = C1844.f7412;
        int i = AbstractC2472.f9448;
        if (64 >= i) {
            i = 64;
        }
        f7403 = c1844.mo4765(AbstractC2481.m5629(i, 12, "kotlinx.coroutines.io.parallelism"));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO");
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        mo4764(C2134.f8324, runnable);
    }

    @Override // p324.AbstractC4017
    public final String toString() {
        return "Dispatchers.IO";
    }

    @Override // p324.AbstractC4017
    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public final void mo4763(InterfaceC2139 interfaceC2139, Runnable runnable) {
        f7403.mo4763(interfaceC2139, runnable);
    }

    @Override // p324.AbstractC4017
    /* renamed from: ـᵎ, reason: contains not printable characters */
    public final void mo4764(InterfaceC2139 interfaceC2139, Runnable runnable) {
        f7403.mo4764(interfaceC2139, runnable);
    }
}
