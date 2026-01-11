package j$.time;

import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalUnit;
import j$.util.C5584w;
import j$.util.C5585x;
import j$.util.C5587z;
import j$.util.stream.AbstractC5498j;
import java.util.LinkedHashSet;
import java.util.function.BiConsumer;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleFunction;
import java.util.function.IntFunction;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;
import java.util.function.ToDoubleFunction;
import p223.C3056;

/* loaded from: classes2.dex */
public final /* synthetic */ class f implements j$.time.temporal.l, IntFunction, Supplier, BiConsumer, DoubleBinaryOperator, ObjDoubleConsumer, DoubleFunction, ToDoubleFunction {
    public final /* synthetic */ int a;

    public /* synthetic */ f(int i) {
        this.a = i;
    }

    @Override // java.util.function.ObjDoubleConsumer
    public void accept(Object obj, double d) {
        switch (this.a) {
            case 22:
                double[] dArr = (double[]) obj;
                dArr[2] = dArr[2] + 1.0d;
                AbstractC5498j.a(dArr, d);
                dArr[3] = dArr[3] + d;
                return;
            default:
                ((C5584w) obj).accept(d);
                return;
        }
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.a) {
            case 17:
                ((LinkedHashSet) obj).add(obj2);
                return;
            case 18:
                ((LinkedHashSet) obj).addAll((LinkedHashSet) obj2);
                return;
            case 19:
                double[] dArr = (double[]) obj;
                double[] dArr2 = (double[]) obj2;
                AbstractC5498j.a(dArr, dArr2[0]);
                AbstractC5498j.a(dArr, dArr2[1]);
                dArr[2] = dArr[2] + dArr2[2];
                return;
            case 20:
            case 21:
            case 22:
            default:
                ((C5584w) obj).a((C5584w) obj2);
                return;
            case 23:
                double[] dArr3 = (double[]) obj;
                double[] dArr4 = (double[]) obj2;
                AbstractC5498j.a(dArr3, dArr4[0]);
                AbstractC5498j.a(dArr3, dArr4[1]);
                dArr3[2] = dArr3[2] + dArr4[2];
                dArr3[3] = dArr3[3] + dArr4[3];
                return;
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.a) {
            case 17:
                return j$.com.android.tools.r8.a.b(this, biConsumer);
            case 18:
                return j$.com.android.tools.r8.a.b(this, biConsumer);
            case 19:
                return j$.com.android.tools.r8.a.b(this, biConsumer);
            case 20:
            case 21:
            case 22:
            default:
                return j$.com.android.tools.r8.a.b(this, biConsumer);
            case 23:
                return j$.com.android.tools.r8.a.b(this, biConsumer);
        }
    }

    @Override // java.util.function.DoubleFunction
    public Object apply(double d) {
        return Double.valueOf(d);
    }

    @Override // java.util.function.IntFunction
    public Object apply(int i) {
        switch (this.a) {
            case 12:
                return new Object[i];
            default:
                return new Double[i];
        }
    }

    @Override // java.util.function.DoubleBinaryOperator
    public double applyAsDouble(double d, double d2) {
        switch (this.a) {
            case 20:
                return Math.min(d, d2);
            default:
                return Math.max(d, d2);
        }
    }

    @Override // java.util.function.ToDoubleFunction
    public double applyAsDouble(Object obj) {
        return ((Double) obj).doubleValue();
    }

    public Object g(TemporalAccessor temporalAccessor) {
        switch (this.a) {
            case 0:
                return LocalDate.U(temporalAccessor);
            case 1:
                return LocalDateTime.T(temporalAccessor);
            case 2:
                return OffsetDateTime.S(temporalAccessor);
            case 3:
                ZoneId zoneId = (ZoneId) temporalAccessor.w(j$.time.temporal.p.a);
                if (zoneId == null || (zoneId instanceof ZoneOffset)) {
                    return null;
                }
                return zoneId;
            case 4:
            default:
                j$.time.temporal.a aVar = j$.time.temporal.a.NANO_OF_DAY;
                if (temporalAccessor.e(aVar)) {
                    return j.X(temporalAccessor.F(aVar));
                }
                return null;
            case 5:
                return (ZoneId) temporalAccessor.w(j$.time.temporal.p.a);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return (j$.time.chrono.j) temporalAccessor.w(j$.time.temporal.p.b);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return (TemporalUnit) temporalAccessor.w(j$.time.temporal.p.c);
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                j$.time.temporal.a aVar2 = j$.time.temporal.a.OFFSET_SECONDS;
                if (temporalAccessor.e(aVar2)) {
                    return ZoneOffset.b0(temporalAccessor.k(aVar2));
                }
                return null;
            case 9:
                ZoneId zoneId2 = (ZoneId) temporalAccessor.w(j$.time.temporal.p.a);
                return zoneId2 != null ? zoneId2 : (ZoneId) temporalAccessor.w(j$.time.temporal.p.d);
            case 10:
                j$.time.temporal.a aVar3 = j$.time.temporal.a.EPOCH_DAY;
                if (temporalAccessor.e(aVar3)) {
                    return LocalDate.d0(temporalAccessor.F(aVar3));
                }
                return null;
        }
    }

    @Override // java.util.function.Supplier
    public Object get() {
        switch (this.a) {
            case 13:
                return new C5584w();
            case 14:
                return new C5585x();
            case 15:
                return new C5587z();
            case 16:
                return new LinkedHashSet();
            default:
                return new double[4];
        }
    }

    @Override // j$.time.temporal.l
    public Temporal q(Temporal temporal) {
        j$.time.temporal.a aVar = j$.time.temporal.a.DAY_OF_MONTH;
        return temporal.c(temporal.m(aVar).d, aVar);
    }

    public String toString() {
        switch (this.a) {
            case 5:
                return "ZoneId";
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return "Chronology";
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return "Precision";
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return "ZoneOffset";
            case 9:
                return "Zone";
            case 10:
                return "LocalDate";
            case 11:
                return "LocalTime";
            default:
                return super.toString();
        }
    }
}
