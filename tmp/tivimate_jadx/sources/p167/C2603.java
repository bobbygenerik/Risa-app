package p167;

/* renamed from: ˊᵔ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2603 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public double f9846;

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f9847;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C2611 f9848;

    /* renamed from: ˈ, reason: contains not printable characters */
    public double f9849;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public double f9850;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public double f9851;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public double f9852;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public double f9853;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public double f9854;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public double f9855;

    /* JADX WARN: Type inference failed for: r0v5, types: [ˊᵔ.ﾞᴵ, java.lang.Object] */
    public C2603() {
        this.f9854 = Math.sqrt(1500.0d);
        this.f9853 = 0.5d;
        this.f9847 = false;
        this.f9846 = Double.MAX_VALUE;
        this.f9848 = new Object();
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [ˊᵔ.ﾞᴵ, java.lang.Object] */
    public C2603(float f) {
        this.f9854 = Math.sqrt(1500.0d);
        this.f9853 = 0.5d;
        this.f9847 = false;
        this.f9848 = new Object();
        this.f9846 = f;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2611 m5850(double d, double d2, long j) {
        double sin;
        double cos;
        if (!this.f9847) {
            if (this.f9846 == Double.MAX_VALUE) {
                throw new IllegalStateException("Error: Final position of the spring must be set before the animation starts");
            }
            double d3 = this.f9853;
            if (d3 > 1.0d) {
                double d4 = this.f9854;
                this.f9855 = (Math.sqrt((d3 * d3) - 1.0d) * d4) + ((-d3) * d4);
                double d5 = this.f9853;
                double d6 = this.f9854;
                this.f9851 = ((-d5) * d6) - (Math.sqrt((d5 * d5) - 1.0d) * d6);
            } else if (d3 >= 0.0d && d3 < 1.0d) {
                this.f9852 = Math.sqrt(1.0d - (d3 * d3)) * this.f9854;
            }
            this.f9847 = true;
        }
        double d7 = j / 1000.0d;
        double d8 = d - this.f9846;
        double d9 = this.f9853;
        if (d9 > 1.0d) {
            double d10 = this.f9851;
            double d11 = ((d10 * d8) - d2) / (d10 - this.f9855);
            double d12 = d8 - d11;
            sin = (Math.pow(2.718281828459045d, this.f9855 * d7) * d11) + (Math.pow(2.718281828459045d, d10 * d7) * d12);
            double d13 = this.f9851;
            double pow = Math.pow(2.718281828459045d, d13 * d7) * d12 * d13;
            double d14 = this.f9855;
            cos = (Math.pow(2.718281828459045d, d14 * d7) * d11 * d14) + pow;
        } else if (d9 == 1.0d) {
            double d15 = this.f9854;
            double d16 = (d15 * d8) + d2;
            double d17 = (d16 * d7) + d8;
            double pow2 = Math.pow(2.718281828459045d, (-d15) * d7) * d17;
            double pow3 = Math.pow(2.718281828459045d, (-this.f9854) * d7) * d17;
            double d18 = -this.f9854;
            cos = (Math.pow(2.718281828459045d, d18 * d7) * d16) + (pow3 * d18);
            sin = pow2;
        } else {
            double d19 = 1.0d / this.f9852;
            double d20 = this.f9854;
            double d21 = ((d9 * d20 * d8) + d2) * d19;
            sin = ((Math.sin(this.f9852 * d7) * d21) + (Math.cos(this.f9852 * d7) * d8)) * Math.pow(2.718281828459045d, (-d9) * d20 * d7);
            double d22 = this.f9854;
            double d23 = this.f9853;
            double d24 = (-d22) * sin * d23;
            double pow4 = Math.pow(2.718281828459045d, (-d23) * d22 * d7);
            double d25 = this.f9852;
            double sin2 = Math.sin(d25 * d7) * (-d25) * d8;
            double d26 = this.f9852;
            cos = (((Math.cos(d26 * d7) * d21 * d26) + sin2) * pow4) + d24;
        }
        float f = (float) (sin + this.f9846);
        C2611 c2611 = this.f9848;
        c2611.f9893 = f;
        c2611.f9892 = (float) cos;
        return c2611;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5851(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Spring stiffness constant must be positive.");
        }
        this.f9854 = Math.sqrt(f);
        this.f9847 = false;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5852(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Damping ratio must be non-negative");
        }
        this.f9853 = f;
        this.f9847 = false;
    }
}
