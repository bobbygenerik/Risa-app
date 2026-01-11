package p358;

import p121.AbstractC2026;

/* renamed from: ᵔˏ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4349 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final /* synthetic */ int f16172 = 0;

    static {
        Math.log(2.0d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x002c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m8826(double r6) {
        /*
            java.math.RoundingMode r0 = java.math.RoundingMode.CEILING
            r1 = 0
            int r1 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            r2 = 0
            r3 = 1
            if (r1 <= 0) goto L12
            boolean r1 = p121.AbstractC2026.m5046(r6)
            if (r1 == 0) goto L12
            r1 = r3
            goto L13
        L12:
            r1 = r2
        L13:
            java.lang.String r4 = "x must be positive and finite"
            com.google.android.gms.internal.play_billing.י.ﾞᴵ(r4, r1)
            int r1 = java.lang.Math.getExponent(r6)
            int r4 = java.lang.Math.getExponent(r6)
            r5 = -1022(0xfffffffffffffc02, float:NaN)
            if (r4 < r5) goto L7a
            int[] r4 = p358.AbstractC4352.f16175
            int r0 = r0.ordinal()
            r0 = r4[r0]
            switch(r0) {
                case 1: goto L68;
                case 2: goto L6e;
                case 3: goto L61;
                case 4: goto L59;
                case 5: goto L4f;
                case 6: goto L35;
                case 7: goto L35;
                case 8: goto L35;
                default: goto L2f;
            }
        L2f:
            java.lang.AssertionError r6 = new java.lang.AssertionError
            r6.<init>()
            throw r6
        L35:
            long r6 = java.lang.Double.doubleToRawLongBits(r6)
            r4 = 4503599627370495(0xfffffffffffff, double:2.225073858507201E-308)
            long r6 = r6 & r4
            r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            long r6 = r6 | r4
            double r6 = java.lang.Double.longBitsToDouble(r6)
            double r6 = r6 * r6
            r4 = 4611686018427387904(0x4000000000000000, double:2.0)
            int r6 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r6 <= 0) goto L6e
            r2 = r3
            goto L6e
        L4f:
            if (r1 < 0) goto L52
            r2 = r3
        L52:
            boolean r6 = m8827(r6)
        L56:
            r6 = r6 ^ r3
            r2 = r2 & r6
            goto L6e
        L59:
            if (r1 >= 0) goto L5c
            r2 = r3
        L5c:
            boolean r6 = m8827(r6)
            goto L56
        L61:
            boolean r6 = m8827(r6)
            r2 = r6 ^ 1
            goto L6e
        L68:
            boolean r6 = m8827(r6)
            if (r6 == 0) goto L72
        L6e:
            if (r2 == 0) goto L71
            int r1 = r1 + r3
        L71:
            return r1
        L72:
            java.lang.ArithmeticException r6 = new java.lang.ArithmeticException
            java.lang.String r7 = "mode was UNNECESSARY, but rounding was necessary"
            r6.<init>(r7)
            throw r6
        L7a:
            r0 = 4841369599423283200(0x4330000000000000, double:4.503599627370496E15)
            double r6 = r6 * r0
            int r6 = m8826(r6)
            int r6 = r6 + (-52)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: p358.AbstractC4349.m8826(double):int");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean m8827(double d) {
        if (d > 0.0d && AbstractC2026.m5046(d)) {
            long m5042 = AbstractC2026.m5042(d);
            if ((m5042 & (m5042 - 1)) == 0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m8828(double d) {
        if (AbstractC2026.m5046(d)) {
            return d == 0.0d || 52 - Long.numberOfTrailingZeros(AbstractC2026.m5042(d)) <= Math.getExponent(d);
        }
        return false;
    }
}
