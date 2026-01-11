package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongFunction;
import p223.C3056;

/* renamed from: j$.util.stream.b0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C5459b0 implements BiConsumer, LongBinaryOperator, Consumer, IntFunction, LongFunction, BinaryOperator {
    public final /* synthetic */ int a;

    public /* synthetic */ C5459b0(int i) {
        this.a = i;
    }

    private final void accept$j$$util$stream$Node$$ExternalSyntheticLambda0(Object obj) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda0(Object obj) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfRef$$ExternalSyntheticLambda1(Object obj) {
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public void n(Object obj) {
        int i = this.a;
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        long[] jArr = (long[]) obj;
        long[] jArr2 = (long[]) obj2;
        jArr[0] = jArr[0] + jArr2[0];
        jArr[1] = jArr[1] + jArr2[1];
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        return j$.com.android.tools.r8.a.b(this, biConsumer);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        switch (this.a) {
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return j$.util.function.a.b(this, function);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
            case 9:
            default:
                return j$.util.function.a.b(this, function);
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return j$.util.function.a.b(this, function);
            case 10:
                return j$.util.function.a.b(this, function);
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.a) {
            case 3:
                return j$.util.function.a.c(this, consumer);
            case 16:
                return j$.util.function.a.c(this, consumer);
            default:
                return j$.util.function.a.c(this, consumer);
        }
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.a) {
            case 4:
                return new Object[i];
            case 5:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
            case 9:
            case 10:
            case 11:
            case 16:
            case 17:
            default:
                return new Double[i];
            case 12:
                return new Object[i];
            case 13:
                return new Integer[i];
            case 14:
                return new Long[i];
            case 15:
                return new Double[i];
            case 18:
                return new Integer[i];
            case 19:
                return new Integer[i];
            case 20:
                return new Long[i];
            case 21:
                return new Long[i];
            case 22:
                return new Double[i];
        }
    }

    @Override // java.util.function.LongFunction
    public Object apply(long j) {
        switch (this.a) {
            case 5:
                return AbstractC5559v1.i0(j);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
            default:
                return AbstractC5559v1.t0(j);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return AbstractC5559v1.s0(j);
        }
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        switch (this.a) {
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return new I0((A0) obj, (A0) obj2);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
            case 9:
            default:
                return new I0((G0) obj, (G0) obj2);
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return new I0((C0) obj, (C0) obj2);
            case 10:
                return new I0((E0) obj, (E0) obj2);
        }
    }

    @Override // java.util.function.LongBinaryOperator
    public long applyAsLong(long j, long j2) {
        switch (this.a) {
            case 1:
                return Math.max(j, j2);
            default:
                return j + j2;
        }
    }
}
