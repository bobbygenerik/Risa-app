package p000;

import android.content.Context;

/* renamed from: ʻʻ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0759 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3141;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Context f3142;

    public /* synthetic */ RunnableC0759(Context context, int i) {
        this.f3141 = i;
        this.f3142 = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0060, code lost:
    
        if (r2 != null) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006d  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r11 = this;
            int r0 = r11.f3141
            switch(r0) {
                case 0: goto L97;
                case 1: goto L88;
                default: goto L5;
            }
        L5:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 1
            r2 = 33
            if (r0 < r2) goto L85
            android.content.ComponentName r3 = new android.content.ComponentName
            java.lang.String r4 = "androidx.appcompat.app.AppLocalesMetadataHolderService"
            android.content.Context r5 = r11.f3142
            r3.<init>(r5, r4)
            android.content.pm.PackageManager r4 = r5.getPackageManager()
            int r4 = r4.getComponentEnabledSetting(r3)
            if (r4 == r1) goto L85
            java.lang.String r4 = "locale"
            if (r0 < r2) goto L5e
            יـ.ﾞᴵ r0 = p363.AbstractC4427.f16476
            r0.getClass()
            יـ.ﹳٴ r2 = new יـ.ﹳٴ
            r2.<init>(r0)
        L2d:
            boolean r0 = r2.hasNext()
            if (r0 == 0) goto L4c
            java.lang.Object r0 = r2.next()
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0
            java.lang.Object r0 = r0.get()
            ᵔᵢ.ᵔʾ r0 = (p363.AbstractC4427) r0
            if (r0 == 0) goto L2d
            ᵔᵢ.ᵢˏ r0 = (p363.LayoutInflaterFactory2C4430) r0
            android.content.Context r0 = r0.f16528
            if (r0 == 0) goto L2d
            java.lang.Object r0 = r0.getSystemService(r4)
            goto L4d
        L4c:
            r0 = 0
        L4d:
            if (r0 == 0) goto L63
            android.os.LocaleList r0 = p363.AbstractC4413.m8919(r0)
            ˆﾞ.ʽ r2 = new ˆﾞ.ʽ
            ˆﾞ.ﾞᴵ r6 = new ˆﾞ.ﾞᴵ
            r6.<init>(r0)
            r2.<init>(r6)
            goto L65
        L5e:
            ˆﾞ.ʽ r2 = p363.AbstractC4427.f16471
            if (r2 == 0) goto L63
            goto L65
        L63:
            ˆﾞ.ʽ r2 = p114.C1981.f7839
        L65:
            ˆﾞ.ˑﹳ r0 = r2.f7840
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L7e
            java.lang.String r0 = p151.AbstractC2427.m5536(r5)
            java.lang.Object r2 = r5.getSystemService(r4)
            if (r2 == 0) goto L7e
            android.os.LocaleList r0 = p363.AbstractC4434.m8973(r0)
            p363.AbstractC4413.m8918(r2, r0)
        L7e:
            android.content.pm.PackageManager r0 = r5.getPackageManager()
            r0.setComponentEnabledSetting(r3, r1, r1)
        L85:
            p363.AbstractC4427.f16475 = r1
            return
        L88:
            ʼᐧ.ﹳٴ r0 = new ʼᐧ.ﹳٴ
            r1 = 1
            r0.<init>(r1)
            ﹳˋ.ʼˎ r1 = p000.AbstractC0757.f3136
            r2 = 0
            android.content.Context r3 = r11.f3142
            p000.AbstractC0757.m2770(r3, r0, r1, r2)
            return
        L97:
            java.util.concurrent.ThreadPoolExecutor r4 = new java.util.concurrent.ThreadPoolExecutor
            java.util.concurrent.TimeUnit r9 = java.util.concurrent.TimeUnit.MILLISECONDS
            java.util.concurrent.LinkedBlockingQueue r10 = new java.util.concurrent.LinkedBlockingQueue
            r10.<init>()
            r5 = 0
            r6 = 1
            r7 = 0
            r4.<init>(r5, r6, r7, r9, r10)
            ʻʻ.ᵎﹶ r0 = new ʻʻ.ᵎﹶ
            r1 = 1
            android.content.Context r2 = r11.f3142
            r0.<init>(r2, r1)
            r4.execute(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.RunnableC0759.run():void");
    }
}
