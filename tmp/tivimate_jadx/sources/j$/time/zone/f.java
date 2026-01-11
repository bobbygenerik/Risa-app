package j$.time.zone;

import j$.time.DayOfWeek;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import j$.time.chrono.q;
import j$.time.j;
import j$.time.l;
import j$.time.temporal.m;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public final class f implements Serializable {
    public static final long[] i = new long[0];
    public static final e[] j = new e[0];
    public static final LocalDateTime[] k = new LocalDateTime[0];
    public static final b[] l = new b[0];
    private static final long serialVersionUID = 3044319355680032515L;
    public final long[] a;
    public final ZoneOffset[] b;
    public final long[] c;
    public final LocalDateTime[] d;
    public final ZoneOffset[] e;
    public final e[] f;
    public final TimeZone g;
    public final transient ConcurrentHashMap h = new ConcurrentHashMap();

    public f(ZoneOffset zoneOffset) {
        this.b = r0;
        ZoneOffset[] zoneOffsetArr = {zoneOffset};
        long[] jArr = i;
        this.a = jArr;
        this.c = jArr;
        this.d = k;
        this.e = zoneOffsetArr;
        this.f = j;
        this.g = null;
    }

    public f(TimeZone timeZone) {
        this.b = r0;
        ZoneOffset[] zoneOffsetArr = {h(timeZone.getRawOffset())};
        long[] jArr = i;
        this.a = jArr;
        this.c = jArr;
        this.d = k;
        this.e = zoneOffsetArr;
        this.f = j;
        this.g = timeZone;
    }

    public f(long[] jArr, ZoneOffset[] zoneOffsetArr, long[] jArr2, ZoneOffset[] zoneOffsetArr2, e[] eVarArr) {
        this.a = jArr;
        this.b = zoneOffsetArr;
        this.c = jArr2;
        this.e = zoneOffsetArr2;
        this.f = eVarArr;
        if (jArr2.length == 0) {
            this.d = k;
        } else {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            while (i2 < jArr2.length) {
                int i3 = i2 + 1;
                b bVar = new b(jArr2[i2], zoneOffsetArr2[i2], zoneOffsetArr2[i3]);
                if (bVar.k()) {
                    arrayList.add(bVar.b);
                    arrayList.add(bVar.b.plusSeconds(bVar.d.b - bVar.c.b));
                } else {
                    arrayList.add(bVar.b.plusSeconds(bVar.d.b - bVar.c.b));
                    arrayList.add(bVar.b);
                }
                i2 = i3;
            }
            this.d = (LocalDateTime[]) arrayList.toArray(new LocalDateTime[arrayList.size()]);
        }
        this.g = null;
    }

    public static Object a(LocalDateTime localDateTime, b bVar) {
        LocalDateTime localDateTime2 = bVar.b;
        if (bVar.k()) {
            if (localDateTime.U(localDateTime2)) {
                return bVar.c;
            }
            if (!localDateTime.U(bVar.b.plusSeconds(bVar.d.b - bVar.c.b))) {
                return bVar.d;
            }
        } else {
            if (!localDateTime.U(localDateTime2)) {
                return bVar.d;
            }
            if (localDateTime.U(bVar.b.plusSeconds(bVar.d.b - bVar.c.b))) {
                return bVar.c;
            }
        }
        return bVar;
    }

    public static int c(long j2, ZoneOffset zoneOffset) {
        return LocalDate.d0(j$.com.android.tools.r8.a.U(j2 + zoneOffset.b, 86400)).getYear();
    }

    public static ZoneOffset h(int i2) {
        return ZoneOffset.b0(i2 / 1000);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a(this.g != null ? (byte) 100 : (byte) 1, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final b[] b(int i2) {
        LocalDate T;
        b[] bVarArr = l;
        Integer valueOf = Integer.valueOf(i2);
        b[] bVarArr2 = (b[]) this.h.get(valueOf);
        if (bVarArr2 != null) {
            return bVarArr2;
        }
        long j2 = 1;
        int i3 = 0;
        int i4 = 1;
        if (this.g != null) {
            if (i2 < 1800) {
                return bVarArr;
            }
            LocalDateTime localDateTime = LocalDateTime.c;
            LocalDate of = LocalDate.of(i2 - 1, 12, 31);
            j$.time.temporal.a.HOUR_OF_DAY.F(0);
            long u = j$.com.android.tools.r8.a.u(new LocalDateTime(of, j.h[0]), this.b[0]);
            long j3 = 1000;
            int offset = this.g.getOffset(u * 1000);
            long j4 = 31968000 + u;
            while (u < j4) {
                long j5 = u + 7776000;
                long j6 = j3;
                if (offset != this.g.getOffset(j5 * j6)) {
                    while (j5 - u > j2) {
                        long U = j$.com.android.tools.r8.a.U(j5 + u, 2L);
                        if (this.g.getOffset(U * j6) == offset) {
                            u = U;
                        } else {
                            j5 = U;
                        }
                        j2 = 1;
                    }
                    if (this.g.getOffset(u * j6) == offset) {
                        u = j5;
                    }
                    ZoneOffset h = h(offset);
                    int offset2 = this.g.getOffset(u * j6);
                    ZoneOffset h2 = h(offset2);
                    if (c(u, h2) == i2) {
                        bVarArr = (b[]) Arrays.copyOf(bVarArr, bVarArr.length + 1);
                        bVarArr[bVarArr.length - 1] = new b(u, h, h2);
                    }
                    offset = offset2;
                } else {
                    u = j5;
                }
                j3 = j6;
                j2 = 1;
            }
            if (1916 <= i2 && i2 < 2100) {
                this.h.putIfAbsent(valueOf, bVarArr);
            }
            return bVarArr;
        }
        e[] eVarArr = this.f;
        b[] bVarArr3 = new b[eVarArr.length];
        int i5 = 0;
        while (i5 < eVarArr.length) {
            e eVar = eVarArr[i5];
            byte b = eVar.b;
            if (b < 0) {
                l lVar = eVar.a;
                long j7 = i2;
                int T2 = lVar.T(q.c.R(j7)) + 1 + eVar.b;
                LocalDate localDate = LocalDate.d;
                j$.time.temporal.a.YEAR.F(j7);
                Objects.requireNonNull(lVar, "month");
                j$.time.temporal.a.DAY_OF_MONTH.F(T2);
                T = LocalDate.T(i2, lVar.getValue(), T2);
                DayOfWeek dayOfWeek = eVar.c;
                if (dayOfWeek != null) {
                    T = T.A(new m(dayOfWeek.getValue(), i4));
                }
            } else {
                l lVar2 = eVar.a;
                LocalDate localDate2 = LocalDate.d;
                j$.time.temporal.a.YEAR.F(i2);
                Objects.requireNonNull(lVar2, "month");
                j$.time.temporal.a.DAY_OF_MONTH.F(b);
                T = LocalDate.T(i2, lVar2.getValue(), b);
                DayOfWeek dayOfWeek2 = eVar.c;
                if (dayOfWeek2 != null) {
                    T = T.A(new m(dayOfWeek2.getValue(), i3));
                }
            }
            if (eVar.e) {
                T = T.plusDays(1L);
            }
            LocalDateTime V = LocalDateTime.V(T, eVar.d);
            d dVar = eVar.f;
            ZoneOffset zoneOffset = eVar.g;
            ZoneOffset zoneOffset2 = eVar.h;
            dVar.getClass();
            int i6 = c.a[dVar.ordinal()];
            if (i6 == 1) {
                V = V.plusSeconds(zoneOffset2.b - ZoneOffset.UTC.b);
            } else if (i6 == 2) {
                V = V.plusSeconds(zoneOffset2.b - zoneOffset.b);
            }
            bVarArr3[i5] = new b(V, eVar.h, eVar.i);
            i5++;
            i3 = 0;
        }
        if (i2 < 2100) {
            this.h.putIfAbsent(valueOf, bVarArr3);
        }
        return bVarArr3;
    }

    public final ZoneOffset d(Instant instant) {
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            return h(timeZone.getOffset(instant.toEpochMilli()));
        }
        long[] jArr = this.c;
        if (jArr.length == 0) {
            return this.b[0];
        }
        long j2 = instant.a;
        if (this.f.length <= 0 || j2 <= jArr[jArr.length - 1]) {
            int binarySearch = Arrays.binarySearch(jArr, j2);
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            return this.e[binarySearch + 1];
        }
        b[] b = b(c(j2, this.e[r8.length - 1]));
        b bVar = null;
        for (int i2 = 0; i2 < b.length; i2++) {
            bVar = b[i2];
            if (j2 < bVar.a) {
                return bVar.c;
            }
        }
        return bVar.d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0062, code lost:
    
        if (r8.S(r0) > 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0089, code lost:
    
        if (r8.b.e0() <= r0.b.e0()) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(j$.time.LocalDateTime r8) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.zone.f.e(j$.time.LocalDateTime):java.lang.Object");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (Objects.equals(this.g, fVar.g) && Arrays.equals(this.a, fVar.a) && Arrays.equals(this.b, fVar.b) && Arrays.equals(this.c, fVar.c) && Arrays.equals(this.e, fVar.e) && Arrays.equals(this.f, fVar.f)) {
                return true;
            }
        }
        return false;
    }

    public final List f(LocalDateTime localDateTime) {
        Object e = e(localDateTime);
        if (!(e instanceof b)) {
            return Collections.singletonList((ZoneOffset) e);
        }
        b bVar = (b) e;
        return bVar.k() ? Collections.EMPTY_LIST : j$.com.android.tools.r8.a.Q(new Object[]{bVar.c, bVar.d});
    }

    public final boolean g(Instant instant) {
        ZoneOffset zoneOffset;
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            zoneOffset = h(timeZone.getRawOffset());
        } else if (this.c.length == 0) {
            zoneOffset = this.b[0];
        } else {
            int binarySearch = Arrays.binarySearch(this.a, instant.a);
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            zoneOffset = this.b[binarySearch + 1];
        }
        return !zoneOffset.equals(d(instant));
    }

    public final int hashCode() {
        return ((((Objects.hashCode(this.g) ^ Arrays.hashCode(this.a)) ^ Arrays.hashCode(this.b)) ^ Arrays.hashCode(this.c)) ^ Arrays.hashCode(this.e)) ^ Arrays.hashCode(this.f);
    }

    public final String toString() {
        TimeZone timeZone = this.g;
        if (timeZone != null) {
            return "ZoneRules[timeZone=" + timeZone.getID() + "]";
        }
        return "ZoneRules[currentStandardOffset=" + this.b[r0.length - 1] + "]";
    }
}
