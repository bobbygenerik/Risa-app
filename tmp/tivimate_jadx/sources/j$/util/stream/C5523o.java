package j$.util.stream;

import j$.util.C5450p;
import j$.util.C5585x;
import j$.util.C5587z;
import j$.util.Optional;
import java.util.function.BiConsumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
import p223.C3056;

/* renamed from: j$.util.stream.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C5523o implements Supplier, ObjDoubleConsumer, Predicate, IntFunction, ToIntFunction, IntBinaryOperator, ObjIntConsumer, BiConsumer, ObjLongConsumer, LongBinaryOperator, ToLongFunction, LongFunction {
    public final /* synthetic */ int a;

    @Override // java.util.function.ObjDoubleConsumer
    public void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        AbstractC5498j.a(dArr, d);
        dArr[2] = dArr[2] + d;
    }

    @Override // java.util.function.ObjIntConsumer
    public void accept(Object obj, int i) {
        switch (this.a) {
            case 15:
                ((C5585x) obj).accept(i);
                return;
            default:
                long[] jArr = (long[]) obj;
                jArr[0] = jArr[0] + 1;
                jArr[1] = jArr[1] + i;
                return;
        }
    }

    @Override // java.util.function.ObjLongConsumer
    public void accept(Object obj, long j) {
        switch (this.a) {
            case 22:
                ((C5587z) obj).accept(j);
                return;
            default:
                long[] jArr = (long[]) obj;
                jArr[0] = jArr[0] + 1;
                jArr[1] = jArr[1] + j;
                return;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 16:
                ((C5585x) obj).a((C5585x) obj2);
                return;
            case 21:
                long[] jArr = (long[]) obj;
                long[] jArr2 = (long[]) obj2;
                jArr[0] = jArr[0] + jArr2[0];
                jArr[1] = jArr[1] + jArr2[1];
                return;
            default:
                ((C5587z) obj).a((C5587z) obj2);
                return;
        }
    }

    public /* synthetic */ Predicate and(Predicate predicate) {
        switch (this.a) {
            case 2:
                return j$.util.function.a.a(this, predicate);
            case 3:
            case 5:
            default:
                return j$.util.function.a.a(this, predicate);
            case 4:
                return j$.util.function.a.a(this, predicate);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return j$.util.function.a.a(this, predicate);
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
            case 16:
                return j$.com.android.tools.r8.a.b(this, biConsumer);
            case 21:
                return j$.com.android.tools.r8.a.b(this, biConsumer);
            default:
                return j$.com.android.tools.r8.a.b(this, biConsumer);
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.a) {
            case 10:
                return new Object[i];
            case 11:
                return new Integer[i];
            case 12:
            default:
                return new Long[i];
            case 13:
                return Integer.valueOf(i);
        }
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        return Long.valueOf(j);
    }

    @Override // java.util.function.IntBinaryOperator
    public int applyAsInt(int i, int i2) {
        switch (this.a) {
            case 14:
                return Math.min(i, i2);
            case 15:
            case 16:
            default:
                return Math.max(i, i2);
            case 17:
                return i + i2;
        }
    }

    @Override // java.util.function.ToIntFunction
    public int applyAsInt(Object obj) {
        return ((Integer) obj).intValue();
    }

    @Override // java.util.function.LongBinaryOperator
    public long applyAsLong(long j, long j2) {
        return Math.min(j, j2);
    }

    @Override // java.util.function.ToLongFunction
    public long applyAsLong(Object obj) {
        return ((Long) obj).longValue();
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case 0:
                return new double[3];
            case 3:
                return new Object();
            case 5:
                return new Object();
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return new Object();
            case 9:
                return new Object();
            case 19:
                return new long[2];
            default:
                return new long[2];
        }
    }

    public Predicate negate() {
        switch (this.a) {
            case 2:
                return new C5450p(1, this);
            case 3:
            case 5:
            default:
                return new C5450p(1, this);
            case 4:
                return new C5450p(1, this);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return new C5450p(1, this);
        }
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        switch (this.a) {
            case 2:
                return j$.util.function.a.g(this, predicate);
            case 3:
            case 5:
            default:
                return j$.util.function.a.g(this, predicate);
            case 4:
                return j$.util.function.a.g(this, predicate);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return j$.util.function.a.g(this, predicate);
        }
    }

    @Override // java.util.function.Predicate
    public boolean test(Object obj) {
        switch (this.a) {
            case 2:
                return ((j$.util.A) obj).a;
            case 3:
            case 5:
            default:
                return ((Optional) obj).a != null;
            case 4:
                return ((j$.util.B) obj).a;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return ((j$.util.C) obj).a;
        }
    }
}
