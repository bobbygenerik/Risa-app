package j$.time.format;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.ChronoLocalDate;
import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class D implements TemporalAccessor {
    public ZoneId b;
    public j$.time.chrono.j c;
    public boolean d;
    public E e;
    public ChronoLocalDate f;
    public j$.time.j g;
    public final Map a = new HashMap();
    public j$.time.r h = j$.time.r.d;

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        Objects.requireNonNull(oVar, "field");
        Long l = (Long) ((HashMap) this.a).get(oVar);
        if (l != null) {
            return l.longValue();
        }
        ChronoLocalDate chronoLocalDate = this.f;
        if (chronoLocalDate != null && chronoLocalDate.e(oVar)) {
            return this.f.F(oVar);
        }
        j$.time.j jVar = this.g;
        if (jVar != null && jVar.e(oVar)) {
            return this.g.F(oVar);
        }
        if (oVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(j$.time.c.a("Unsupported field: ", oVar));
        }
        return oVar.w(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        if (((HashMap) this.a).containsKey(oVar)) {
            return true;
        }
        ChronoLocalDate chronoLocalDate = this.f;
        if (chronoLocalDate != null && chronoLocalDate.e(oVar)) {
            return true;
        }
        j$.time.j jVar = this.g;
        if (jVar == null || !jVar.e(oVar)) {
            return (oVar == null || (oVar instanceof j$.time.temporal.a) || !oVar.k(this)) ? false : true;
        }
        return true;
    }

    public final void i(TemporalAccessor temporalAccessor) {
        Iterator it = ((HashMap) this.a).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            j$.time.temporal.o oVar = (j$.time.temporal.o) entry.getKey();
            if (temporalAccessor.e(oVar)) {
                try {
                    long F = temporalAccessor.F(oVar);
                    long longValue = ((Long) entry.getValue()).longValue();
                    if (F != longValue) {
                        throw new RuntimeException("Conflict found: Field " + oVar + " " + F + " differs from " + oVar + " " + longValue + " derived from " + temporalAccessor);
                    }
                    it.remove();
                } catch (RuntimeException unused) {
                    continue;
                }
            }
        }
    }

    public final void j() {
        if (((HashMap) this.a).containsKey(j$.time.temporal.a.INSTANT_SECONDS)) {
            ZoneId zoneId = this.b;
            if (zoneId != null) {
                n(zoneId);
                return;
            }
            Long l = (Long) ((HashMap) this.a).get(j$.time.temporal.a.OFFSET_SECONDS);
            if (l != null) {
                n(ZoneOffset.b0(l.intValue()));
            }
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(j$.time.temporal.o oVar) {
        return j$.time.temporal.p.a(this, oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ j$.time.temporal.r m(j$.time.temporal.o oVar) {
        return j$.time.temporal.p.d(this, oVar);
    }

    public final void n(ZoneId zoneId) {
        Map map = this.a;
        j$.time.temporal.a aVar = j$.time.temporal.a.INSTANT_SECONDS;
        t(this.c.O(Instant.ofEpochSecond(((Long) ((HashMap) map).remove(aVar)).longValue()), zoneId).f());
        v(aVar, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(r5.b().f0()));
    }

    public final void o(long j, long j2, long j3, long j4) {
        if (this.e == E.LENIENT) {
            long P = j$.com.android.tools.r8.a.P(j$.com.android.tools.r8.a.P(j$.com.android.tools.r8.a.P(j$.com.android.tools.r8.a.V(j, 3600000000000L), j$.com.android.tools.r8.a.V(j2, 60000000000L)), j$.com.android.tools.r8.a.V(j3, 1000000000L)), j4);
            q(j$.time.j.X(j$.com.android.tools.r8.a.T(P, 86400000000000L)), j$.time.r.a(0, 0, (int) j$.com.android.tools.r8.a.U(P, 86400000000000L)));
            return;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.MINUTE_OF_HOUR;
        int a = aVar.b.a(j2, aVar);
        j$.time.temporal.a aVar2 = j$.time.temporal.a.NANO_OF_SECOND;
        int a2 = aVar2.b.a(j4, aVar2);
        if (this.e == E.SMART && j == 24 && a == 0 && j3 == 0 && a2 == 0) {
            q(j$.time.j.g, j$.time.r.a(0, 0, 1));
            return;
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.HOUR_OF_DAY;
        int a3 = aVar3.b.a(j, aVar3);
        j$.time.temporal.a aVar4 = j$.time.temporal.a.SECOND_OF_MINUTE;
        q(j$.time.j.W(a3, a, aVar4.b.a(j3, aVar4), a2), j$.time.r.d);
    }

    public final void p() {
        Map map = this.a;
        j$.time.temporal.a aVar = j$.time.temporal.a.CLOCK_HOUR_OF_DAY;
        if (((HashMap) map).containsKey(aVar)) {
            long longValue = ((Long) ((HashMap) this.a).remove(aVar)).longValue();
            E e = this.e;
            if (e == E.STRICT || (e == E.SMART && longValue != 0)) {
                aVar.F(longValue);
            }
            j$.time.temporal.a aVar2 = j$.time.temporal.a.HOUR_OF_DAY;
            if (longValue == 24) {
                longValue = 0;
            }
            v(aVar, aVar2, Long.valueOf(longValue));
        }
        Map map2 = this.a;
        j$.time.temporal.a aVar3 = j$.time.temporal.a.CLOCK_HOUR_OF_AMPM;
        if (((HashMap) map2).containsKey(aVar3)) {
            long longValue2 = ((Long) ((HashMap) this.a).remove(aVar3)).longValue();
            E e2 = this.e;
            if (e2 == E.STRICT || (e2 == E.SMART && longValue2 != 0)) {
                aVar3.F(longValue2);
            }
            v(aVar3, j$.time.temporal.a.HOUR_OF_AMPM, Long.valueOf(longValue2 != 12 ? longValue2 : 0L));
        }
        Map map3 = this.a;
        j$.time.temporal.a aVar4 = j$.time.temporal.a.AMPM_OF_DAY;
        if (((HashMap) map3).containsKey(aVar4)) {
            Map map4 = this.a;
            j$.time.temporal.a aVar5 = j$.time.temporal.a.HOUR_OF_AMPM;
            if (((HashMap) map4).containsKey(aVar5)) {
                long longValue3 = ((Long) ((HashMap) this.a).remove(aVar4)).longValue();
                long longValue4 = ((Long) ((HashMap) this.a).remove(aVar5)).longValue();
                if (this.e == E.LENIENT) {
                    v(aVar4, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(j$.com.android.tools.r8.a.P(j$.com.android.tools.r8.a.V(longValue3, 12), longValue4)));
                } else {
                    aVar4.F(longValue3);
                    aVar5.F(longValue3);
                    v(aVar4, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf((longValue3 * 12) + longValue4));
                }
            }
        }
        Map map5 = this.a;
        j$.time.temporal.a aVar6 = j$.time.temporal.a.NANO_OF_DAY;
        if (((HashMap) map5).containsKey(aVar6)) {
            long longValue5 = ((Long) ((HashMap) this.a).remove(aVar6)).longValue();
            if (this.e != E.LENIENT) {
                aVar6.F(longValue5);
            }
            v(aVar6, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(longValue5 / 3600000000000L));
            v(aVar6, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf((longValue5 / 60000000000L) % 60));
            v(aVar6, j$.time.temporal.a.SECOND_OF_MINUTE, Long.valueOf((longValue5 / 1000000000) % 60));
            v(aVar6, j$.time.temporal.a.NANO_OF_SECOND, Long.valueOf(longValue5 % 1000000000));
        }
        Map map6 = this.a;
        j$.time.temporal.a aVar7 = j$.time.temporal.a.MICRO_OF_DAY;
        if (((HashMap) map6).containsKey(aVar7)) {
            long longValue6 = ((Long) ((HashMap) this.a).remove(aVar7)).longValue();
            if (this.e != E.LENIENT) {
                aVar7.F(longValue6);
            }
            v(aVar7, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(longValue6 / 1000000));
            v(aVar7, j$.time.temporal.a.MICRO_OF_SECOND, Long.valueOf(longValue6 % 1000000));
        }
        Map map7 = this.a;
        j$.time.temporal.a aVar8 = j$.time.temporal.a.MILLI_OF_DAY;
        if (((HashMap) map7).containsKey(aVar8)) {
            long longValue7 = ((Long) ((HashMap) this.a).remove(aVar8)).longValue();
            if (this.e != E.LENIENT) {
                aVar8.F(longValue7);
            }
            v(aVar8, j$.time.temporal.a.SECOND_OF_DAY, Long.valueOf(longValue7 / 1000));
            v(aVar8, j$.time.temporal.a.MILLI_OF_SECOND, Long.valueOf(longValue7 % 1000));
        }
        Map map8 = this.a;
        j$.time.temporal.a aVar9 = j$.time.temporal.a.SECOND_OF_DAY;
        if (((HashMap) map8).containsKey(aVar9)) {
            long longValue8 = ((Long) ((HashMap) this.a).remove(aVar9)).longValue();
            if (this.e != E.LENIENT) {
                aVar9.F(longValue8);
            }
            v(aVar9, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(longValue8 / 3600));
            v(aVar9, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf((longValue8 / 60) % 60));
            v(aVar9, j$.time.temporal.a.SECOND_OF_MINUTE, Long.valueOf(longValue8 % 60));
        }
        Map map9 = this.a;
        j$.time.temporal.a aVar10 = j$.time.temporal.a.MINUTE_OF_DAY;
        if (((HashMap) map9).containsKey(aVar10)) {
            long longValue9 = ((Long) ((HashMap) this.a).remove(aVar10)).longValue();
            if (this.e != E.LENIENT) {
                aVar10.F(longValue9);
            }
            v(aVar10, j$.time.temporal.a.HOUR_OF_DAY, Long.valueOf(longValue9 / 60));
            v(aVar10, j$.time.temporal.a.MINUTE_OF_HOUR, Long.valueOf(longValue9 % 60));
        }
        Map map10 = this.a;
        j$.time.temporal.a aVar11 = j$.time.temporal.a.NANO_OF_SECOND;
        if (((HashMap) map10).containsKey(aVar11)) {
            long longValue10 = ((Long) ((HashMap) this.a).get(aVar11)).longValue();
            E e3 = this.e;
            E e4 = E.LENIENT;
            if (e3 != e4) {
                aVar11.F(longValue10);
            }
            Map map11 = this.a;
            j$.time.temporal.a aVar12 = j$.time.temporal.a.MICRO_OF_SECOND;
            if (((HashMap) map11).containsKey(aVar12)) {
                long longValue11 = ((Long) ((HashMap) this.a).remove(aVar12)).longValue();
                if (this.e != e4) {
                    aVar12.F(longValue11);
                }
                longValue10 = (longValue10 % 1000) + (longValue11 * 1000);
                v(aVar12, aVar11, Long.valueOf(longValue10));
            }
            Map map12 = this.a;
            j$.time.temporal.a aVar13 = j$.time.temporal.a.MILLI_OF_SECOND;
            if (((HashMap) map12).containsKey(aVar13)) {
                long longValue12 = ((Long) ((HashMap) this.a).remove(aVar13)).longValue();
                if (this.e != e4) {
                    aVar13.F(longValue12);
                }
                v(aVar13, aVar11, Long.valueOf((longValue10 % 1000000) + (longValue12 * 1000000)));
            }
        }
        Map map13 = this.a;
        j$.time.temporal.a aVar14 = j$.time.temporal.a.HOUR_OF_DAY;
        if (((HashMap) map13).containsKey(aVar14)) {
            Map map14 = this.a;
            j$.time.temporal.a aVar15 = j$.time.temporal.a.MINUTE_OF_HOUR;
            if (((HashMap) map14).containsKey(aVar15)) {
                Map map15 = this.a;
                j$.time.temporal.a aVar16 = j$.time.temporal.a.SECOND_OF_MINUTE;
                if (((HashMap) map15).containsKey(aVar16) && ((HashMap) this.a).containsKey(aVar11)) {
                    o(((Long) ((HashMap) this.a).remove(aVar14)).longValue(), ((Long) ((HashMap) this.a).remove(aVar15)).longValue(), ((Long) ((HashMap) this.a).remove(aVar16)).longValue(), ((Long) ((HashMap) this.a).remove(aVar11)).longValue());
                }
            }
        }
    }

    public final void q(j$.time.j jVar, j$.time.r rVar) {
        j$.time.j jVar2 = this.g;
        if (jVar2 == null) {
            this.g = jVar;
            this.h = rVar;
            return;
        }
        if (!jVar2.equals(jVar)) {
            throw new RuntimeException("Conflict found: Fields resolved to different times: " + this.g + " " + jVar);
        }
        j$.time.r rVar2 = this.h;
        rVar2.getClass();
        j$.time.r rVar3 = j$.time.r.d;
        if (rVar2 == rVar3 || rVar == rVar3 || this.h.equals(rVar)) {
            this.h = rVar;
            return;
        }
        throw new RuntimeException("Conflict found: Fields resolved to different excess periods: " + this.h + " " + rVar);
    }

    public final void t(ChronoLocalDate chronoLocalDate) {
        ChronoLocalDate chronoLocalDate2 = this.f;
        if (chronoLocalDate2 != null) {
            if (chronoLocalDate == null || chronoLocalDate2.equals(chronoLocalDate)) {
                return;
            }
            throw new RuntimeException("Conflict found: Fields resolved to two different dates: " + this.f + " " + chronoLocalDate);
        }
        if (chronoLocalDate != null) {
            if (this.c.equals(chronoLocalDate.a())) {
                this.f = chronoLocalDate;
                return;
            }
            throw new RuntimeException("ChronoLocalDate must use the effective parsed chronology: " + this.c);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(this.a);
        sb.append(',');
        sb.append(this.c);
        if (this.b != null) {
            sb.append(',');
            sb.append(this.b);
        }
        if (this.f != null || this.g != null) {
            sb.append(" resolved to ");
            ChronoLocalDate chronoLocalDate = this.f;
            if (chronoLocalDate != null) {
                sb.append(chronoLocalDate);
                if (this.g != null) {
                    sb.append('T');
                    sb.append(this.g);
                }
            } else {
                sb.append(this.g);
            }
        }
        return sb.toString();
    }

    public final void v(j$.time.temporal.o oVar, j$.time.temporal.a aVar, Long l) {
        Long l2 = (Long) ((HashMap) this.a).put(aVar, l);
        if (l2 == null || l2.longValue() == l.longValue()) {
            return;
        }
        throw new RuntimeException("Conflict found: " + aVar + " " + l2 + " differs from " + aVar + " " + l + " while resolving  " + oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object w(j$.time.f fVar) {
        if (fVar == j$.time.temporal.p.a) {
            return this.b;
        }
        if (fVar == j$.time.temporal.p.b) {
            return this.c;
        }
        if (fVar == j$.time.temporal.p.f) {
            ChronoLocalDate chronoLocalDate = this.f;
            if (chronoLocalDate != null) {
                return LocalDate.U(chronoLocalDate);
            }
            return null;
        }
        if (fVar == j$.time.temporal.p.g) {
            return this.g;
        }
        if (fVar != j$.time.temporal.p.d) {
            if (fVar != j$.time.temporal.p.e && fVar == j$.time.temporal.p.c) {
                return null;
            }
            return fVar.g(this);
        }
        Long l = (Long) ((HashMap) this.a).get(j$.time.temporal.a.OFFSET_SECONDS);
        if (l != null) {
            return ZoneOffset.b0(l.intValue());
        }
        ZoneId zoneId = this.b;
        return zoneId instanceof ZoneOffset ? zoneId : fVar.g(this);
    }
}
