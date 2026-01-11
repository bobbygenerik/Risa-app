package j$.time.chrono;

import j$.time.temporal.Temporal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class p implements k {
    public static final p AH;
    public static final /* synthetic */ p[] a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [j$.time.chrono.p, java.lang.Enum] */
    static {
        ?? r0 = new Enum("AH", 0);
        AH = r0;
        a = new p[]{r0};
    }

    public static p valueOf(String str) {
        return (p) Enum.valueOf(p.class, str);
    }

    public static p[] values() {
        return (p[]) a.clone();
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
        return 1;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(j$.time.temporal.o oVar) {
        return j$.com.android.tools.r8.a.k(this, oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        return oVar == j$.time.temporal.a.ERA ? j$.time.temporal.r.f(1L, 1L) : j$.time.temporal.p.d(this, oVar);
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        return temporal.c(1, j$.time.temporal.a.ERA);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object w(j$.time.f fVar) {
        return j$.com.android.tools.r8.a.t(this, fVar);
    }
}
