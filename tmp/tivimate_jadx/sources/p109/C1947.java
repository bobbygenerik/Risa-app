package p109;

import j$.com.android.tools.r8.a;
import j$.util.Comparator;
import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* renamed from: ˆᵔ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1947 implements Comparator, j$.util.Comparator {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f7728;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C1947 f7727 = new C1947(0);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C1947 f7726 = new C1947(1);

    public /* synthetic */ C1947(int i) {
        this.f7728 = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f7728) {
            case 0:
                return ((Comparable) obj).compareTo((Comparable) obj2);
            default:
                return ((Comparable) obj2).compareTo((Comparable) obj);
        }
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final Comparator reversed() {
        switch (this.f7728) {
            case 0:
                return f7726;
            default:
                return f7727;
        }
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public /* synthetic */ Comparator thenComparing(Comparator comparator) {
        int i = this.f7728;
        return Comparator.CC.$default$thenComparing(this, comparator);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(Function function) {
        int i = this.f7728;
        return Comparator.CC.$default$thenComparing(this, function);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(Function function, java.util.Comparator comparator) {
        java.util.Comparator f0;
        int i = this.f7728;
        f0 = a.f0(this, Comparator.CC.comparing(function, comparator));
        return f0;
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        int i = this.f7728;
        return Comparator.CC.$default$thenComparingDouble(this, toDoubleFunction);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        int i = this.f7728;
        return Comparator.CC.$default$thenComparingInt(this, toIntFunction);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        int i = this.f7728;
        return Comparator.CC.$default$thenComparingLong(this, toLongFunction);
    }
}
