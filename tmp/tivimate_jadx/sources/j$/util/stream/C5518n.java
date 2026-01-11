package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;

/* renamed from: j$.util.stream.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C5518n implements BinaryOperator {
    public final /* synthetic */ int a;
    public final /* synthetic */ BiConsumer b;

    public /* synthetic */ C5518n(BiConsumer biConsumer, int i) {
        this.a = i;
        this.b = biConsumer;
    }

    public final /* synthetic */ BiFunction andThen(Function function) {
        switch (this.a) {
            case 0:
                return j$.util.function.a.b(this, function);
            case 1:
                return j$.util.function.a.b(this, function);
            default:
                return j$.util.function.a.b(this, function);
        }
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                this.b.accept(obj, obj2);
                return obj;
            case 1:
                this.b.accept(obj, obj2);
                return obj;
            default:
                this.b.accept(obj, obj2);
                return obj;
        }
    }
}
