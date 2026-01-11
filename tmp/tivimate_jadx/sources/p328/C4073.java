package p328;

/* renamed from: ᴵᵔ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4073 implements InterfaceC4064 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float[] f15510;

    /* JADX WARN: Removed duplicated region for block: B:56:0x01bb A[LOOP:2: B:38:0x0081->B:56:0x01bb, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01c6 A[EDGE_INSN: B:57:0x01c6->B:58:0x01c6 BREAK  A[LOOP:2: B:38:0x0081->B:56:0x01bb], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C4073(float r26, float r27) {
        /*
            Method dump skipped, instructions count: 600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p328.C4073.<init>(float, float):void");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m8315(float f, float f2) {
        return Math.abs(f - f2) < 0.01f;
    }

    @Override // p328.InterfaceC4064
    public final float getInterpolation(float f) {
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int length = (this.f15510.length / 3) - 1;
        int i = 0;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < m8317(i2)) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float m8317 = m8317(length) - m8317(i);
        if (m8317 == 0.0f) {
            return m8316(i);
        }
        float m83172 = (f - m8317(i)) / m8317;
        float m8316 = m8316(i);
        return ((m8316(length) - m8316) * m83172) + m8316;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final float m8316(int i) {
        return this.f15510[(i * 3) + 2];
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float m8317(int i) {
        return this.f15510[(i * 3) + 1];
    }
}
