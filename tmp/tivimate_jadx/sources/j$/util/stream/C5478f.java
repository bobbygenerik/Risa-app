package j$.util.stream;

import j$.util.Spliterator;
import j$.util.stream.IntStream;
import j$.util.stream.Stream;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.stream.BaseStream;

/* renamed from: j$.util.stream.f */
/* loaded from: classes2.dex */
public final /* synthetic */ class C5478f implements BaseStream {
    public final /* synthetic */ InterfaceC5483g a;

    public /* synthetic */ C5478f(InterfaceC5483g interfaceC5483g) {
        this.a = interfaceC5483g;
    }

    public static /* synthetic */ BaseStream f(InterfaceC5483g interfaceC5483g) {
        if (interfaceC5483g == null) {
            return null;
        }
        return interfaceC5483g instanceof C5473e ? ((C5473e) interfaceC5483g).a : interfaceC5483g instanceof C ? B.f((C) interfaceC5483g) : interfaceC5483g instanceof IntStream ? IntStream.Wrapper.convert((IntStream) interfaceC5483g) : interfaceC5483g instanceof InterfaceC5514m0 ? C5509l0.f((InterfaceC5514m0) interfaceC5483g) : interfaceC5483g instanceof Stream ? Stream.Wrapper.convert((Stream) interfaceC5483g) : new C5478f(interfaceC5483g);
    }

    @Override // java.util.stream.BaseStream, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC5483g interfaceC5483g = this.a;
        if (obj instanceof C5478f) {
            obj = ((C5478f) obj).a;
        }
        return interfaceC5483g.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ boolean isParallel() {
        return this.a.isParallel();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ Iterator iterator() {
        return this.a.iterator();
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream onClose(Runnable runnable) {
        return f(this.a.onClose(runnable));
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream parallel() {
        return f(this.a.parallel());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream sequential() {
        return f(this.a.sequential());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(this.a.spliterator());
    }

    @Override // java.util.stream.BaseStream
    public final /* synthetic */ BaseStream unordered() {
        return f(this.a.unordered());
    }
}
