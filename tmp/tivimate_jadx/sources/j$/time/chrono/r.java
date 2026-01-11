package j$.time.chrono;

import j$.time.temporal.Temporal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class r implements k {
    public static final r BCE;
    public static final r CE;
    public static final /* synthetic */ r[] a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.time.chrono.r] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.time.chrono.r] */
    static {
        ?? r0 = new Enum("BCE", 0);
        BCE = r0;
        ?? r1 = new Enum("CE", 1);
        CE = r1;
        a = new r[]{r0, r1};
    }

    public static r valueOf(String str) {
        return (r) Enum.valueOf(r.class, str);
    }

    public static r[] values() {
        return (r[]) a.clone();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ long F(j$.time.temporal.o oVar) {
        return j$.com.android.tools.r8.a.m(this, oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ boolean e(j$.time.temporal.o oVar) {
        return j$.com.android.tools.r8.a.p(this, oVar);
    }

    @Override // j$.time.chrono.k
    public final int getValue() {
        return ordinal();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(j$.time.temporal.o oVar) {
        return j$.com.android.tools.r8.a.k(this, oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        return j$.time.temporal.p.d(this, oVar);
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        return temporal.c(getValue(), j$.time.temporal.a.ERA);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object w(j$.time.f fVar) {
        return j$.com.android.tools.r8.a.t(this, fVar);
    }
}
