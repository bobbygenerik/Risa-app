package p104;

import p055.C1468;
import p171.C2636;
import p171.C2652;
import p171.InterfaceC2621;
import p171.InterfaceC2622;
import p171.InterfaceC2643;

/* renamed from: ˆˑ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1920 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C2652 f7648;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f7649;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC2621 f7650;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2636 f7651;

    public C1920(InterfaceC2643 interfaceC2643, InterfaceC2621 interfaceC2621, long j, long j2, long j3, long j4, long j5, int i) {
        this.f7650 = interfaceC2621;
        this.f7649 = i;
        this.f7651 = new C2636(interfaceC2643, j, j2, j3, j4, j5);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m4857(InterfaceC2622 interfaceC2622, long j, C1468 c1468) {
        if (j == interfaceC2622.getPosition()) {
            return 0;
        }
        c1468.f5751 = j;
        return 1;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m4858(int i, byte[] bArr) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m4859(long j) {
        C2652 c2652 = this.f7648;
        if (c2652 == null || c2652.f10080 != j) {
            C2636 c2636 = this.f7651;
            this.f7648 = new C2652(j, c2636.f10004.m5901(j), c2636.f10000, c2636.f10001, c2636.f10002, c2636.f10005);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00cc, code lost:
    
        return m4857(r28, r8, r29);
     */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m4860(p171.InterfaceC2622 r28, p055.C1468 r29) {
        /*
            r27 = this;
            r0 = r27
            r1 = r28
            r2 = r29
        L6:
            ˊﾞ.ﾞᴵ r3 = r0.f7648
            p305.AbstractC3731.m7868(r3)
            long r4 = r3.f10081
            long r6 = r3.f10077
            long r8 = r3.f10078
            long r6 = r6 - r4
            int r10 = r0.f7649
            long r10 = (long) r10
            int r6 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            r7 = 0
            ˊﾞ.ʼˎ r10 = r0.f7650
            if (r6 > 0) goto L26
            r0.f7648 = r7
            r10.mo2967()
            int r1 = m4857(r1, r4, r2)
            return r1
        L26:
            long r4 = r1.getPosition()
            long r4 = r8 - r4
            r11 = 0
            int r6 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r6 < 0) goto Lc8
            r13 = 262144(0x40000, double:1.295163E-318)
            int r6 = (r4 > r13 ? 1 : (r4 == r13 ? 0 : -1))
            if (r6 > 0) goto Lc8
            int r4 = (int) r4
            r1.mo4595(r4)
            r1.mo4600()
            long r4 = r3.f10079
            ˊﾞ.ᵔᵢ r4 = r10.mo2959(r1, r4)
            int r5 = r4.f10032
            r15 = r11
            long r11 = r4.f10031
            r17 = r13
            long r13 = r4.f10030
            r4 = -3
            if (r5 == r4) goto Lbe
            r4 = -2
            if (r5 == r4) goto L9d
            r4 = -1
            if (r5 == r4) goto L7e
            if (r5 != 0) goto L76
            long r3 = r1.getPosition()
            long r3 = r13 - r3
            int r5 = (r3 > r15 ? 1 : (r3 == r15 ? 0 : -1))
            if (r5 < 0) goto L6c
            int r5 = (r3 > r17 ? 1 : (r3 == r17 ? 0 : -1))
            if (r5 > 0) goto L6c
            int r3 = (int) r3
            r1.mo4595(r3)
        L6c:
            r0.f7648 = r7
            r10.mo2967()
            int r1 = m4857(r1, r13, r2)
            return r1
        L76:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "Invalid case"
            r1.<init>(r2)
            throw r1
        L7e:
            r3.f10076 = r11
            r3.f10077 = r13
            long r4 = r3.f10079
            long r6 = r3.f10075
            long r8 = r3.f10081
            r15 = r4
            long r4 = r3.f10074
            r25 = r4
            r17 = r6
            r21 = r8
            r19 = r11
            r23 = r13
            long r4 = p171.C2652.m5933(r15, r17, r19, r21, r23, r25)
            r3.f10078 = r4
            goto L6
        L9d:
            r4 = r11
            r6 = r13
            r3.f10075 = r4
            r3.f10081 = r6
            long r8 = r3.f10079
            long r10 = r3.f10076
            long r12 = r3.f10077
            long r14 = r3.f10074
            r17 = r4
            r21 = r6
            r19 = r10
            r23 = r12
            r25 = r14
            r15 = r8
            long r4 = p171.C2652.m5933(r15, r17, r19, r21, r23, r25)
            r3.f10078 = r4
            goto L6
        Lbe:
            r0.f7648 = r7
            r10.mo2967()
            int r1 = m4857(r1, r8, r2)
            return r1
        Lc8:
            int r1 = m4857(r1, r8, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p104.C1920.m4860(ˊﾞ.ʼᐧ, ʽⁱ.ˏי):int");
    }
}
