package p090;

import p126.InterfaceC2138;

/* renamed from: ʿᵢ.ˑʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1803 implements InterfaceC2138 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final C1803 f7283 = new Object();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x006c -> B:10:0x0070). Please report as a decompilation issue!!! */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m4750(java.io.FileOutputStream r11, p316.AbstractC3902 r12) {
        /*
            boolean r0 = r12 instanceof p090.C1798
            if (r0 == 0) goto L13
            r0 = r12
            ʿᵢ.ˊˋ r0 = (p090.C1798) r0
            int r1 = r0.f7266
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7266 = r1
            goto L18
        L13:
            ʿᵢ.ˊˋ r0 = new ʿᵢ.ˊˋ
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.f7265
            int r1 = r0.f7266
            r2 = 1
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2a
            long r3 = r0.f7267
            java.io.FileOutputStream r11 = r0.f7264
            p121.AbstractC2026.m5044(r12)
            r12 = r0
            goto L70
        L2a:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L32:
            p121.AbstractC2026.m5044(r12)
            r3 = 10
            r12 = r0
        L38:
            r0 = 60000(0xea60, double:2.9644E-319)
            int r0 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
            if (r0 > 0) goto L75
            java.nio.channels.FileChannel r5 = r11.getChannel()     // Catch: java.io.IOException -> L50
            r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r10 = 0
            r6 = 0
            java.nio.channels.FileLock r11 = r5.lock(r6, r8, r10)     // Catch: java.io.IOException -> L50
            goto L85
        L50:
            r0 = move-exception
            java.lang.String r1 = r0.getMessage()
            if (r1 == 0) goto L74
            java.lang.String r5 = "Resource deadlock would occur"
            r6 = 0
            boolean r1 = p435.AbstractC5143.m10116(r1, r5, r6)
            if (r1 != r2) goto L74
            r12.f7264 = r11
            r12.f7267 = r3
            r12.f7266 = r2
            java.lang.Object r0 = p324.AbstractC3999.m8183(r3, r12)
            ᵢˎ.ﹳٴ r1 = p373.EnumC4532.f16960
            if (r0 != r1) goto L70
            r11 = r1
            goto L85
        L70:
            r0 = 2
            long r0 = (long) r0
            long r3 = r3 * r0
            goto L38
        L74:
            throw r0
        L75:
            java.nio.channels.FileChannel r5 = r11.getChannel()
            r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r10 = 0
            r6 = 0
            java.nio.channels.FileLock r11 = r5.lock(r6, r8, r10)
        L85:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1803.m4750(java.io.FileOutputStream, ᴵʾ.ʽ):java.lang.Object");
    }
}
