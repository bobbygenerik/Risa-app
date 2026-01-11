package p165;

/* renamed from: ˊᴵ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2600 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C2600 f9836;

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f9837;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f9838;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long f9839;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f9840 = 1;

    public /* synthetic */ C2600() {
    }

    public C2600(int i) {
        this.f9838 = i;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m5844(C2600 c2600, long j, long j2, int i) {
        if ((i & 1) != 0) {
            j = 0;
        }
        if ((i & 2) != 0) {
            j2 = 0;
        }
        synchronized (c2600) {
            try {
                if (j < 0) {
                    throw new IllegalStateException("Check failed.");
                }
                if (j2 < 0) {
                    throw new IllegalStateException("Check failed.");
                }
                long j3 = c2600.f9839 + j;
                c2600.f9839 = j3;
                long j4 = c2600.f9837 + j2;
                c2600.f9837 = j4;
                if (j4 > j3) {
                    throw new IllegalStateException("Check failed.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String toString() {
        switch (this.f9840) {
            case 0:
                return "WindowCounter(streamId=" + this.f9838 + ", total=" + this.f9839 + ", acknowledged=" + this.f9837 + ", unacknowledged=" + m5845() + ')';
            default:
                return super.toString();
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public synchronized long m5845() {
        return this.f9839 - this.f9837;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m5846(double d, double d2, long j) {
        double d3 = (0.01720197f * (((float) (j - 946728000000L)) / 8.64E7f)) + 6.24006f;
        double sin = (Math.sin(r3 * 3.0f) * 5.236000106378924E-6d) + (Math.sin(2.0f * r3) * 3.4906598739326E-4d) + (Math.sin(d3) * 0.03341960161924362d) + d3 + 1.796593063d + 3.141592653589793d;
        double sin2 = (Math.sin(2.0d * sin) * (-0.0069d)) + (Math.sin(d3) * 0.0053d) + ((float) Math.round((r2 - 9.0E-4f) - r6)) + 9.0E-4f + ((-d2) / 360.0d);
        double asin = Math.asin(Math.sin(0.4092797040939331d) * Math.sin(sin));
        double d4 = 0.01745329238474369d * d;
        double sin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(asin) * Math.sin(d4))) / (Math.cos(asin) * Math.cos(d4));
        if (sin3 >= 1.0d) {
            this.f9838 = 1;
            this.f9839 = -1L;
            this.f9837 = -1L;
        } else {
            if (sin3 <= -1.0d) {
                this.f9838 = 0;
                this.f9839 = -1L;
                this.f9837 = -1L;
                return;
            }
            double acos = (float) (Math.acos(sin3) / 6.283185307179586d);
            this.f9839 = Math.round((sin2 + acos) * 8.64E7d) + 946728000000L;
            long round = Math.round((sin2 - acos) * 8.64E7d) + 946728000000L;
            this.f9837 = round;
            if (round >= j || this.f9839 <= j) {
                this.f9838 = 1;
            } else {
                this.f9838 = 0;
            }
        }
    }
}
