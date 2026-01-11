package p420;

import androidx.media3.exoplayer.source.ClippingMediaSource$IllegalClippingException;
import p305.AbstractC3712;
import p392.C4664;
import p392.C4680;

/* renamed from: ﹳᵢ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4941 implements InterfaceC4945, InterfaceC4967 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C4988[] f18404 = new C4988[0];

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC4945 f18405;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public long f18406;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public long f18407;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ClippingMediaSource$IllegalClippingException f18408;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public InterfaceC4967 f18409;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public long f18410;

    public C4941(InterfaceC4945 interfaceC4945, boolean z, long j, long j2) {
        this.f18405 = interfaceC4945;
        this.f18406 = z ? j : -9223372036854775807L;
        this.f18410 = j;
        this.f18407 = j2;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ʻٴ */
    public final void mo5121(long j) {
        this.f18405.mo5121(j);
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ʼˎ */
    public final void mo5122(InterfaceC4967 interfaceC4967, long j) {
        this.f18409 = interfaceC4967;
        this.f18405.mo5122(this, j);
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ʼᐧ */
    public final void mo5123() {
        ClippingMediaSource$IllegalClippingException clippingMediaSource$IllegalClippingException = this.f18408;
        if (clippingMediaSource$IllegalClippingException != null) {
            throw clippingMediaSource$IllegalClippingException;
        }
        this.f18405.mo5123();
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0079  */
    @Override // p420.InterfaceC4945
    /* renamed from: ˆʾ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo5124(p428.InterfaceC5067[] r18, boolean[] r19, p420.InterfaceC4956[] r20, boolean[] r21, long r22) {
        /*
            r17 = this;
            r0 = r17
            r8 = r20
            int r1 = r8.length
            ﹳᵢ.ⁱˊ[] r1 = new p420.C4988[r1]
            r0.f18404 = r1
            int r1 = r8.length
            ﹳᵢ.ˉـ[] r4 = new p420.InterfaceC4956[r1]
            r1 = 0
        Ld:
            int r2 = r8.length
            if (r1 >= r2) goto L23
            ﹳᵢ.ⁱˊ[] r2 = r0.f18404
            r3 = r8[r1]
            ﹳᵢ.ⁱˊ r3 = (p420.C4988) r3
            r2[r1] = r3
            if (r3 == 0) goto L1d
            ﹳᵢ.ˉـ r10 = r3.f18633
            goto L1e
        L1d:
            r10 = 0
        L1e:
            r4[r1] = r10
            int r1 = r1 + 1
            goto Ld
        L23:
            ﹳᵢ.ʾᵎ r1 = r0.f18405
            r2 = r18
            r3 = r19
            r5 = r21
            r6 = r22
            long r11 = r1.mo5124(r2, r3, r4, r5, r6)
            long r13 = r0.f18407
            r3 = 0
            long r9 = java.lang.Math.max(r11, r6)
            r15 = -9223372036854775808
            int r5 = (r13 > r15 ? 1 : (r13 == r15 ? 0 : -1))
            if (r5 == 0) goto L42
            long r9 = java.lang.Math.min(r9, r13)
        L42:
            boolean r5 = r0.m9744()
            if (r5 == 0) goto L6e
            int r5 = (r11 > r6 ? 1 : (r11 == r6 ? 0 : -1))
            if (r5 >= 0) goto L4d
            goto L69
        L4d:
            r5 = 0
            int r5 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1))
            if (r5 == 0) goto L6e
            int r5 = r2.length
            r6 = 0
        L55:
            if (r6 >= r5) goto L6e
            r7 = r2[r6]
            if (r7 == 0) goto L6b
            ʽⁱ.ﹳᐧ r7 = r7.mo9773()
            java.lang.String r11 = r7.f5930
            java.lang.String r7 = r7.f5924
            boolean r7 = p055.AbstractC1464.m4263(r11, r7)
            if (r7 != 0) goto L6b
        L69:
            r5 = r9
            goto L73
        L6b:
            int r6 = r6 + 1
            goto L55
        L6e:
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L73:
            r0.f18406 = r5
            r1 = 0
        L76:
            int r2 = r8.length
            if (r1 >= r2) goto L9c
            r2 = r4[r1]
            if (r2 != 0) goto L82
            ﹳᵢ.ⁱˊ[] r2 = r0.f18404
            r2[r1] = r3
            goto L93
        L82:
            ﹳᵢ.ⁱˊ[] r5 = r0.f18404
            r6 = r5[r1]
            if (r6 == 0) goto L8c
            ﹳᵢ.ˉـ r6 = r6.f18633
            if (r6 == r2) goto L93
        L8c:
            ﹳᵢ.ⁱˊ r6 = new ﹳᵢ.ⁱˊ
            r6.<init>(r0, r2)
            r5[r1] = r6
        L93:
            ﹳᵢ.ⁱˊ[] r2 = r0.f18404
            r2 = r2[r1]
            r8[r1] = r2
            int r1 = r1 + 1
            goto L76
        L9c:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: p420.C4941.mo5124(ﹶʽ.ˏי[], boolean[], ﹳᵢ.ˉـ[], boolean[], long):long");
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˈ */
    public final boolean mo5125() {
        return this.f18405.mo5125();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˉʿ */
    public final long mo5126() {
        if (m9744()) {
            long j = this.f18406;
            this.f18406 = -9223372036854775807L;
            long mo5126 = mo5126();
            return mo5126 != -9223372036854775807L ? mo5126 : j;
        }
        long mo51262 = this.f18405.mo5126();
        if (mo51262 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j2 = this.f18410;
        long j3 = this.f18407;
        long max = Math.max(mo51262, j2);
        return j3 != Long.MIN_VALUE ? Math.min(max, j3) : max;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˉˆ */
    public final long mo5127() {
        long mo5127 = this.f18405.mo5127();
        if (mo5127 != Long.MIN_VALUE) {
            long j = this.f18407;
            if (j == Long.MIN_VALUE || mo5127 < j) {
                return mo5127;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˏי */
    public final void mo5128(long j) {
        this.f18405.mo5128(j);
    }

    @Override // p420.InterfaceC4967
    /* renamed from: ˑﹳ */
    public final void mo9347(InterfaceC4945 interfaceC4945) {
        if (this.f18408 != null) {
            return;
        }
        InterfaceC4967 interfaceC4967 = this.f18409;
        interfaceC4967.getClass();
        interfaceC4967.mo9347(this);
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ٴﹶ */
    public final boolean mo5129(C4664 c4664) {
        return this.f18405.mo5129(c4664);
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ᵔʾ */
    public final C4936 mo5131() {
        return this.f18405.mo5131();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ⁱˊ */
    public final long mo5132(long j, C4680 c4680) {
        long j2 = this.f18410;
        if (j == j2) {
            return j2;
        }
        long m7767 = AbstractC3712.m7767(c4680.f17569, 0L, j - j2);
        long j3 = c4680.f17568;
        long j4 = this.f18407;
        long m77672 = AbstractC3712.m7767(j3, 0L, j4 == Long.MIN_VALUE ? Long.MAX_VALUE : j4 - j);
        if (m7767 != c4680.f17569 || m77672 != c4680.f17568) {
            c4680 = new C4680(m7767, m77672);
        }
        return this.f18405.mo5132(j, c4680);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m9744() {
        return this.f18406 != -9223372036854775807L;
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ﹳᐧ */
    public final long mo5133(long j) {
        this.f18406 = -9223372036854775807L;
        for (C4988 c4988 : this.f18404) {
            if (c4988 != null) {
                c4988.f18634 = false;
            }
        }
        long mo5133 = this.f18405.mo5133(j);
        long j2 = this.f18410;
        long j3 = this.f18407;
        long max = Math.max(mo5133, j2);
        return j3 != Long.MIN_VALUE ? Math.min(max, j3) : max;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ﾞʻ */
    public final long mo5134() {
        long mo5134 = this.f18405.mo5134();
        if (mo5134 != Long.MIN_VALUE) {
            long j = this.f18407;
            if (j == Long.MIN_VALUE || mo5134 < j) {
                return mo5134;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // p420.InterfaceC4946
    /* renamed from: ﾞᴵ */
    public final void mo6998(InterfaceC4947 interfaceC4947) {
        InterfaceC4967 interfaceC4967 = this.f18409;
        interfaceC4967.getClass();
        interfaceC4967.mo6998(this);
    }
}
