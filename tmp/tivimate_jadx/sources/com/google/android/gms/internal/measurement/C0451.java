package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;

/* renamed from: com.google.android.gms.internal.measurement.ᵎᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0451 extends AbstractRunnableC0411 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f2198;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ Object f2199;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ Object f2200;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f2201;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0451(C0248 c0248, Object obj, Object obj2, int i) {
        super(c0248, true);
        this.f2201 = i;
        this.f2200 = obj;
        this.f2198 = obj2;
        this.f2199 = c0248;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0451(C0500 c0500, Activity activity, BinderC0452 binderC0452) {
        super(c0500.f2263, true);
        this.f2201 = 3;
        this.f2200 = activity;
        this.f2198 = binderC0452;
        this.f2199 = c0500;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0451(C0500 c0500, Bundle bundle, Activity activity) {
        super(c0500.f2263, true);
        this.f2201 = 2;
        this.f2198 = bundle;
        this.f2200 = activity;
        this.f2199 = c0500;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC0411
    /* renamed from: ⁱˊ */
    public void mo1202() {
        switch (this.f2201) {
            case 1:
                ((BinderC0452) this.f2198).mo1551(null);
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(17:19|20|(1:22)|23|24|(12:56|57|58|27|(1:55)(1:31)|32|33|34|(1:36)(1:51)|37|38|(2:40|41)(4:42|(1:49)(1:45)|46|48))|26|27|(1:29)|55|32|33|34|(0)(0)|37|38|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00c4, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d7, code lost:
    
        r7.m1197(r0, true, false);
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c1 A[Catch: Exception -> 0x0091, DynamiteModule$LoadingException -> 0x00c4, TRY_ENTER, TryCatch #1 {DynamiteModule$LoadingException -> 0x00c4, blocks: (B:36:0x00c1, B:37:0x00c8, B:51:0x00c6), top: B:34:0x00bf, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e6 A[Catch: Exception -> 0x0091, TryCatch #2 {Exception -> 0x0091, blocks: (B:20:0x0076, B:22:0x008c, B:23:0x0094, B:27:0x00aa, B:29:0x00b1, B:32:0x00ba, B:36:0x00c1, B:37:0x00c8, B:38:0x00da, B:42:0x00e6, B:46:0x00ff, B:51:0x00c6, B:54:0x00d7, B:57:0x00a1), top: B:19:0x0076, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c6 A[Catch: Exception -> 0x0091, DynamiteModule$LoadingException -> 0x00c4, TryCatch #1 {DynamiteModule$LoadingException -> 0x00c4, blocks: (B:36:0x00c1, B:37:0x00c8, B:51:0x00c6), top: B:34:0x00bf, outer: #2 }] */
    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC0411
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo1203() {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C0451.mo1203():void");
    }
}
