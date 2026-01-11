package j$.time.temporal;

/* loaded from: classes2.dex */
public final /* synthetic */ class m implements l {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;

    public /* synthetic */ m(int i, int i2) {
        this.a = i2;
        this.b = i;
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        switch (this.a) {
            case 0:
                int k = temporal.k(a.DAY_OF_WEEK);
                int i = this.b;
                if (k == i) {
                    return temporal;
                }
                return temporal.d(k - i >= 0 ? 7 - r0 : -r0, ChronoUnit.DAYS);
            default:
                int k2 = temporal.k(a.DAY_OF_WEEK);
                int i2 = this.b;
                if (k2 == i2) {
                    return temporal;
                }
                return temporal.u(i2 - k2 >= 0 ? 7 - r1 : -r1, ChronoUnit.DAYS);
        }
    }
}
