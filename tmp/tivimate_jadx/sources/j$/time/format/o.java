package j$.time.format;

import j$.time.LocalDate;
import j$.time.chrono.ChronoLocalDate;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class o extends i {
    public static final LocalDate h = LocalDate.of(2000, 1, 1);
    public final ChronoLocalDate g;

    public o(j$.time.temporal.o oVar, int i, int i2, ChronoLocalDate chronoLocalDate, int i3) {
        super(oVar, i, i2, F.NOT_NEGATIVE, i3);
        this.g = chronoLocalDate;
    }

    @Override // j$.time.format.i
    public final long a(y yVar, long j) {
        long abs = Math.abs(j);
        ChronoLocalDate chronoLocalDate = this.g;
        long k = chronoLocalDate != null ? j$.com.android.tools.r8.a.M(yVar.a).D(chronoLocalDate).k(this.a) : 0;
        long[] jArr = i.f;
        if (j >= k) {
            long j2 = jArr[this.b];
            if (j < k + j2) {
                return abs % j2;
            }
        }
        return abs % jArr[this.c];
    }

    @Override // j$.time.format.i
    public final boolean b(v vVar) {
        if (vVar.c) {
            return super.b(vVar);
        }
        return false;
    }

    @Override // j$.time.format.i
    public final int c(v vVar, long j, int i, int i2) {
        final o oVar;
        final v vVar2;
        final long j2;
        final int i3;
        final int i4;
        int i5;
        long j3;
        ChronoLocalDate chronoLocalDate = this.g;
        if (chronoLocalDate != null) {
            j$.time.chrono.j jVar = vVar.c().c;
            if (jVar == null && (jVar = vVar.a.e) == null) {
                jVar = j$.time.chrono.q.c;
            }
            i5 = jVar.D(chronoLocalDate).k(this.a);
            oVar = this;
            vVar2 = vVar;
            j2 = j;
            i3 = i;
            i4 = i2;
            Consumer consumer = new Consumer() { // from class: j$.time.format.n
                @Override // java.util.function.Consumer
                /* renamed from: accept */
                public final void n(Object obj) {
                    o.this.c(vVar2, j2, i3, i4);
                }

                public final /* synthetic */ Consumer andThen(Consumer consumer2) {
                    return j$.util.function.a.c(this, consumer2);
                }
            };
            if (vVar2.e == null) {
                vVar2.e = new ArrayList();
            }
            vVar2.e.add(consumer);
        } else {
            oVar = this;
            vVar2 = vVar;
            j2 = j;
            i3 = i;
            i4 = i2;
            i5 = 0;
        }
        int i6 = i4 - i3;
        int i7 = oVar.b;
        if (i6 != i7 || j2 < 0) {
            j3 = j2;
        } else {
            long j4 = i.f[i7];
            long j5 = i5;
            long j6 = j5 - (j5 % j4);
            long j7 = i5 > 0 ? j6 + j2 : j6 - j2;
            j3 = j7 < j5 ? j4 + j7 : j7;
        }
        return vVar2.f(oVar.a, j3, i3, i4);
    }

    @Override // j$.time.format.i
    public final i d() {
        if (this.e == -1) {
            return this;
        }
        return new o(this.a, this.b, this.c, this.g, -1);
    }

    @Override // j$.time.format.i
    public final i e(int i) {
        return new o(this.a, this.b, this.c, this.g, this.e + i);
    }

    @Override // j$.time.format.i
    public final String toString() {
        Object obj = this.g;
        if (obj == null) {
            obj = Objects.requireNonNull(0, "defaultObj");
        }
        return "ReducedValue(" + this.a + "," + this.b + "," + this.c + "," + obj + ")";
    }
}
