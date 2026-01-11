package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import p126.InterfaceC2136;
import p324.AbstractC3999;
import ᵢʿ.ʻˋ;

/* loaded from: classes.dex */
public final class ConstraintTrackingWorker extends CoroutineWorker {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final WorkerParameters f1593;

    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        this.f1593 = workerParameters;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m1039(androidx.work.impl.workers.ConstraintTrackingWorker r4, p322.AbstractC3967 r5, p033.C1182 r6, p240.C3231 r7, p316.AbstractC3902 r8) {
        /*
            boolean r0 = r8 instanceof p445.C5207
            if (r0 == 0) goto L13
            r0 = r8
            ﹶﹳ.ⁱˊ r0 = (p445.C5207) r0
            int r1 = r0.f19559
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f19559 = r1
            goto L18
        L13:
            ﹶﹳ.ⁱˊ r0 = new ﹶﹳ.ⁱˊ
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r4 = r0.f19558
            int r8 = r0.f19559
            r1 = 1
            if (r8 == 0) goto L2d
            if (r8 != r1) goto L25
            p121.AbstractC2026.m5044(r4)
            return r4
        L25:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L2d:
            p121.AbstractC2026.m5044(r4)
            ʿᵢ.ﾞᴵ r4 = new ʿᵢ.ﾞᴵ
            r8 = 0
            r4.<init>(r5, r6, r7, r8)
            r0.f19559 = r1
            ˊʽ.ᵔﹳ r5 = new ˊʽ.ᵔﹳ
            ˈי.ᵔᵢ r6 = r0.mo3551()
            r5.<init>(r0, r6)
            java.lang.Object r4 = ﹳˋ.ʽʽ.ˈٴ(r5, r1, r5, r4)
            ᵢˎ.ﹳٴ r5 = p373.EnumC4532.f16960
            if (r4 != r5) goto L4a
            return r5
        L4a:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.workers.ConstraintTrackingWorker.m1039(androidx.work.impl.workers.ConstraintTrackingWorker, ᴵˋ.יـ, ʼﹳ.ᵎﹶ, ˑᵎ.ﹳᐧ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003f  */
    /* JADX WARN: Type inference failed for: r1v17, types: [ᴵˋ.ˆʾ] */
    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.work.WorkerParameters] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v2, types: [ᴵˋ.יـ] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m1040(androidx.work.impl.workers.ConstraintTrackingWorker r19, p316.AbstractC3902 r20) {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.workers.ConstraintTrackingWorker.m1040(androidx.work.impl.workers.ConstraintTrackingWorker, ᴵʾ.ʽ):java.lang.Object");
    }

    @Override // androidx.work.CoroutineWorker
    /* renamed from: ˑﹳ */
    public final Object mo1019(InterfaceC2136 interfaceC2136) {
        return AbstractC3999.m8164(AbstractC3999.m8159(this.f15300.f1567), new ʻˋ(this, (InterfaceC2136) null, 4), interfaceC2136);
    }
}
