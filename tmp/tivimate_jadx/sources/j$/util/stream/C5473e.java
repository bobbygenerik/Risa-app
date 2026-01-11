package j$.util.stream;

import j$.util.Spliterator;
import j$.util.stream.IntStream;
import java.util.Iterator;
import java.util.stream.BaseStream;
import java.util.stream.DoubleStream;
import java.util.stream.LongStream;

/* renamed from: j$.util.stream.e */
/* loaded from: classes2.dex */
public final /* synthetic */ class C5473e implements InterfaceC5483g {
    public final /* synthetic */ BaseStream a;

    public /* synthetic */ C5473e(BaseStream baseStream) {
        this.a = baseStream;
    }

    public static /* synthetic */ InterfaceC5483g f(BaseStream baseStream) {
        if (baseStream == null) {
            return null;
        }
        return baseStream instanceof C5478f ? ((C5478f) baseStream).a : baseStream instanceof DoubleStream ? A.f((DoubleStream) baseStream) : baseStream instanceof java.util.stream.IntStream ? IntStream.VivifiedWrapper.convert((java.util.stream.IntStream) baseStream) : baseStream instanceof LongStream ? C5504k0.f((LongStream) baseStream) : baseStream instanceof java.util.stream.Stream ? W2.f((java.util.stream.Stream) baseStream) : new C5473e(baseStream);
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        BaseStream baseStream = this.a;
        if (obj instanceof C5473e) {
            obj = ((C5473e) obj).a;
        }
        return baseStream.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ Iterator iterator() {
        return this.a.iterator();
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ InterfaceC5483g onClose(Runnable runnable) {
        return f(this.a.onClose(runnable));
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ InterfaceC5483g parallel() {
        return f(this.a.parallel());
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ InterfaceC5483g sequential() {
        return f(this.a.sequential());
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ Spliterator spliterator() {
        return j$.util.e0.a(this.a.spliterator());
    }

    @Override // j$.util.stream.InterfaceC5483g
    public final /* synthetic */ InterfaceC5483g unordered() {
        return f(this.a.unordered());
    }
}
