package j$.util.function;

import java.util.Comparator;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;

/* loaded from: classes2.dex */
public final /* synthetic */ class b implements BinaryOperator {
    public final /* synthetic */ int a;
    public final /* synthetic */ Comparator b;

    public /* synthetic */ b(Comparator comparator, int i) {
        this.a = i;
        this.b = comparator;
    }

    public final /* synthetic */ BiFunction andThen(Function function) {
        switch (this.a) {
            case 0:
                return a.b(this, function);
            default:
                return a.b(this, function);
        }
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case 0:
                return this.b.compare(obj, obj2) >= 0 ? obj : obj2;
            default:
                return this.b.compare(obj, obj2) <= 0 ? obj : obj2;
        }
    }
}
