package j$.util.stream;

import java.util.HashSet;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* renamed from: j$.util.stream.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5508l extends AbstractC5491h2 {
    public final /* synthetic */ int b;
    public Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C5508l(AbstractC5453a abstractC5453a, InterfaceC5511l2 interfaceC5511l2, int i) {
        super(interfaceC5511l2);
        this.b = i;
        this.c = abstractC5453a;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C5508l(InterfaceC5511l2 interfaceC5511l2) {
        super(interfaceC5511l2);
        this.b = 0;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.b) {
            case 0:
                if (((Set) this.c).contains(obj)) {
                    return;
                }
                ((Set) this.c).add(obj);
                this.a.accept((InterfaceC5511l2) obj);
                return;
            case 1:
                ((Consumer) ((C5533q) this.c).t).accept(obj);
                this.a.accept((InterfaceC5511l2) obj);
                return;
            case 2:
                if (((Predicate) ((C5533q) this.c).t).test(obj)) {
                    this.a.accept((InterfaceC5511l2) obj);
                    return;
                }
                return;
            case 3:
                this.a.accept((InterfaceC5511l2) ((Function) ((C5533q) this.c).t).apply(obj));
                return;
            case 4:
                this.a.accept(((ToIntFunction) ((U) this.c).t).applyAsInt(obj));
                return;
            case 5:
                this.a.accept(((ToLongFunction) ((C5479f0) this.c).t).applyAsLong(obj));
                return;
            default:
                this.a.accept(((ToDoubleFunction) ((C5557v) this.c).t).applyAsDouble(obj));
                return;
        }
    }

    @Override // j$.util.stream.AbstractC5491h2, j$.util.stream.InterfaceC5511l2
    public void c(long j) {
        switch (this.b) {
            case 0:
                this.c = new HashSet();
                this.a.c(-1L);
                return;
            case 1:
            default:
                super.c(j);
                return;
            case 2:
                this.a.c(-1L);
                return;
        }
    }

    @Override // j$.util.stream.AbstractC5491h2, j$.util.stream.InterfaceC5511l2
    public void end() {
        switch (this.b) {
            case 0:
                this.c = null;
                this.a.end();
                return;
            default:
                super.end();
                return;
        }
    }
}
