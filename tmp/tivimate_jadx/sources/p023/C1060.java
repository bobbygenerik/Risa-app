package p023;

import java.util.concurrent.locks.ReentrantLock;
import p052.C1417;
import p121.AbstractC2026;
import p329.InterfaceC4104;
import p391.C4634;
import p430.AbstractC5099;
import p436.AbstractC5157;
import p436.C5162;
import p436.C5163;

/* renamed from: ʼˋ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1060 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ReentrantLock f4168 = new ReentrantLock();

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f4169;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f4170;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C5163 f4171;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C1417 f4172;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC4104 f4173;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f4174;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C1067[] f4175;

    /* JADX WARN: Type inference failed for: r3v4, types: [ﹶי.ᵔᵢ, ﹶי.ᵎﹶ] */
    public C1060(int i, InterfaceC4104 interfaceC4104) {
        this.f4174 = i;
        this.f4173 = interfaceC4104;
        this.f4175 = new C1067[i];
        int i2 = AbstractC5157.f19442;
        this.f4171 = new C5162(i, 0);
        this.f4172 = new C1417(i);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3400() {
        ReentrantLock reentrantLock = this.f4168;
        reentrantLock.lock();
        try {
            this.f4170 = true;
            for (C1067 c1067 : this.f4175) {
                if (c1067 != null) {
                    c1067.close();
                }
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m3401(StringBuilder sb) {
        C1417 c1417 = this.f4172;
        ReentrantLock reentrantLock = this.f4168;
        reentrantLock.lock();
        try {
            C4634 m5056 = AbstractC2026.m5056();
            int m4167 = c1417.m4167();
            for (int i = 0; i < m4167; i++) {
                if (i < 0 || i >= c1417.m4167()) {
                    throw new ArrayIndexOutOfBoundsException();
                }
                m5056.add(((Object[]) c1417.f5547)[(c1417.f5548 + i) & c1417.f5546]);
            }
            C4634 m5061 = AbstractC2026.m5061(m5056);
            sb.append('\t' + toString() + " (");
            sb.append("capacity=" + this.f4174 + ", ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("permits=");
            C5163 c5163 = this.f4171;
            c5163.getClass();
            sb2.append(Math.max(C5162.f19451.get(c5163), 0));
            sb2.append(", ");
            sb.append(sb2.toString());
            sb.append("queue=(size=" + m5061.mo9193() + ")[" + AbstractC5099.m10034(m5061, null, null, null, null, 63) + "], ");
            sb.append(")");
            sb.append('\n');
            C1067[] c1067Arr = this.f4175;
            int length = c1067Arr.length;
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                C1067 c1067 = c1067Arr[i3];
                i2++;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("\t\t[");
                sb3.append(i2);
                sb3.append("] - ");
                sb3.append(c1067 != null ? c1067.f4211.toString() : null);
                sb.append(sb3.toString());
                sb.append('\n');
                if (c1067 != null) {
                    c1067.m3417(sb);
                }
            }
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m3402(C1067 c1067) {
        ReentrantLock reentrantLock = this.f4168;
        reentrantLock.lock();
        try {
            this.f4172.m4165(c1067);
            reentrantLock.unlock();
            this.f4171.m10155();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:13|14|(1:(1:34)(2:31|(1:33)))(1:16)|17|18|19|20|21|(1:23)(11:25|12|13|14|(0)(0)|17|18|19|20|21|(0)(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0061, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0066, code lost:
    
        r11 = r11;
        r10 = r10;
        r1 = r0;
        r0 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006f A[Catch: all -> 0x0073, TryCatch #1 {all -> 0x0073, blocks: (B:14:0x006b, B:16:0x006f, B:31:0x0077, B:34:0x007e), top: B:13:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0059 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.Object, ˊʼ.ˏי] */
    /* JADX WARN: Type inference failed for: r1v10, types: [ᴵⁱ.ﹳٴ] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x005a -> B:12:0x005c). Please report as a decompilation issue!!! */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m3403(long r8, p023.C1058 r10, p316.AbstractC3902 r11) {
        /*
            r7 = this;
            boolean r0 = r11 instanceof p023.C1059
            if (r0 == 0) goto L13
            r0 = r11
            ʼˋ.ˉʿ r0 = (p023.C1059) r0
            int r1 = r0.f4164
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4164 = r1
            goto L18
        L13:
            ʼˋ.ˉʿ r0 = new ʼˋ.ˉʿ
            r0.<init>(r7, r11)
        L18:
            java.lang.Object r11 = r0.f4162
            int r1 = r0.f4164
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L38
            if (r1 != r2) goto L30
            long r8 = r0.f4165
            ˊʼ.ˏי r10 = r0.f4163
            ᴵⁱ.ﹳٴ r1 = r0.f4166
            ʼˋ.ˉˆ r4 = r0.f4161
            p121.AbstractC2026.m5044(r11)     // Catch: java.lang.Throwable -> L2e
            goto L5c
        L2e:
            r11 = move-exception
            goto L66
        L30:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L38:
            p121.AbstractC2026.m5044(r11)
            r4 = r7
        L3c:
            ˊʼ.ˏי r11 = new ˊʼ.ˏי
            r11.<init>()
            ʼˋ.ᵔʾ r1 = new ʼˋ.ᵔʾ     // Catch: java.lang.Throwable -> L61
            r5 = 0
            r1.<init>(r11, r4, r3, r5)     // Catch: java.lang.Throwable -> L61
            r0.f4161 = r4     // Catch: java.lang.Throwable -> L61
            r0.f4166 = r10     // Catch: java.lang.Throwable -> L61
            r0.f4163 = r11     // Catch: java.lang.Throwable -> L61
            r0.f4165 = r8     // Catch: java.lang.Throwable -> L61
            r0.f4164 = r2     // Catch: java.lang.Throwable -> L61
            java.lang.Object r1 = p324.AbstractC3999.m8158(r8, r1, r0)     // Catch: java.lang.Throwable -> L61
            ᵢˎ.ﹳٴ r5 = p373.EnumC4532.f16960
            if (r1 != r5) goto L5a
            return r5
        L5a:
            r1 = r10
            r10 = r11
        L5c:
            r11 = r10
            r10 = r1
            r1 = r0
            r0 = r3
            goto L6b
        L61:
            r1 = move-exception
            r6 = r1
            r1 = r10
            r10 = r11
            r11 = r6
        L66:
            r6 = r11
            r11 = r10
            r10 = r1
            r1 = r0
            r0 = r6
        L6b:
            boolean r5 = r0 instanceof kotlinx.coroutines.TimeoutCancellationException     // Catch: java.lang.Throwable -> L73
            if (r5 == 0) goto L75
            r10.mo716()     // Catch: java.lang.Throwable -> L73
            goto L7c
        L73:
            r8 = move-exception
            goto L7f
        L75:
            if (r0 != 0) goto L7e
            java.lang.Object r11 = r11.f9409     // Catch: java.lang.Throwable -> L73
            if (r11 == 0) goto L7c
            return r11
        L7c:
            r0 = r1
            goto L3c
        L7e:
            throw r0     // Catch: java.lang.Throwable -> L73
        L7f:
            java.lang.Object r9 = r11.f9409
            ʼˋ.ᵔᵢ r9 = (p023.C1067) r9
            if (r9 == 0) goto L88
            r4.m3402(r9)
        L88:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: p023.C1060.m3403(long, ʼˋ.ˈ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0064, code lost:
    
        r0.mo8186(r4, r9.f19454);
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008b A[Catch: all -> 0x00ce, TryCatch #2 {all -> 0x00ce, blocks: (B:13:0x0086, B:15:0x008b, B:17:0x0091, B:20:0x0098, B:21:0x00b2, B:23:0x00b8, B:27:0x00d0, B:28:0x00d5, B:29:0x00d6, B:30:0x00dd), top: B:12:0x0086, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d6 A[Catch: all -> 0x00ce, TryCatch #2 {all -> 0x00ce, blocks: (B:13:0x0086, B:15:0x008b, B:17:0x0091, B:20:0x0098, B:21:0x00b2, B:23:0x00b8, B:27:0x00d0, B:28:0x00d5, B:29:0x00d6, B:30:0x00dd), top: B:12:0x0086, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m3404(p316.AbstractC3902 r9) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p023.C1060.m3404(ᴵʾ.ʽ):java.lang.Object");
    }
}
