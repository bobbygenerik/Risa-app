package p366;

import p031.C1143;
import p031.C1144;
import p031.InterfaceC1142;
import p257.C3397;

/* renamed from: ᵔﹶ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4490 implements InterfaceC1142 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3397 f16833;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C1143 f16832 = C1143.m3576(90, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality");

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C1143 f16831 = new C1143("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, C1143.f4404);

    public C4490(C3397 c3397) {
        this.f16833 = c3397;
    }

    @Override // p031.InterfaceC1142
    /* renamed from: ʼʼ */
    public final int mo3575(C1144 c1144) {
        return 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0078  */
    @Override // p031.InterfaceC1145
    /* renamed from: ˉˆ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo3578(java.lang.Object r9, java.io.File r10, p031.C1144 r11) {
        /*
            r8 = this;
            ʿʾ.ᵢˏ r9 = (p080.InterfaceC1710) r9
            java.lang.String r0 = "BitmapEncoder"
            java.lang.Object r9 = r9.get()
            android.graphics.Bitmap r9 = (android.graphics.Bitmap) r9
            ʼᵔ.ᵎﹶ r1 = p366.C4490.f16831
            java.lang.Object r2 = r11.m3577(r1)
            android.graphics.Bitmap$CompressFormat r2 = (android.graphics.Bitmap.CompressFormat) r2
            if (r2 == 0) goto L15
            goto L20
        L15:
            boolean r2 = r9.hasAlpha()
            if (r2 == 0) goto L1e
            android.graphics.Bitmap$CompressFormat r2 = android.graphics.Bitmap.CompressFormat.PNG
            goto L20
        L1e:
            android.graphics.Bitmap$CompressFormat r2 = android.graphics.Bitmap.CompressFormat.JPEG
        L20:
            r9.getWidth()
            r9.getHeight()
            int r3 = p087.AbstractC1747.f7106
            long r3 = android.os.SystemClock.elapsedRealtimeNanos()
            ʼᵔ.ᵎﹶ r5 = p366.C4490.f16832
            java.lang.Object r5 = r11.m3577(r5)
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            r6 = 0
            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L60
            r7.<init>(r10)     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L60
            יᐧ.ﾞᴵ r10 = r8.f16833
            if (r10 == 0) goto L4f
            com.bumptech.glide.load.data.ʽ r6 = new com.bumptech.glide.load.data.ʽ     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4c
            r6.<init>(r7, r10)     // Catch: java.lang.Throwable -> L48 java.io.IOException -> L4c
            goto L50
        L48:
            r9 = move-exception
            r6 = r7
            goto Lb8
        L4c:
            r10 = move-exception
            r6 = r7
            goto L61
        L4f:
            r6 = r7
        L50:
            r9.compress(r2, r5, r6)     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L60
            r6.close()     // Catch: java.lang.Throwable -> L5e java.io.IOException -> L60
            r6.close()     // Catch: java.lang.Throwable -> L5a java.io.IOException -> L5c
            goto L5c
        L5a:
            r9 = move-exception
            goto Lbe
        L5c:
            r10 = 1
            goto L71
        L5e:
            r9 = move-exception
            goto Lb8
        L60:
            r10 = move-exception
        L61:
            r5 = 3
            boolean r5 = android.util.Log.isLoggable(r0, r5)     // Catch: java.lang.Throwable -> L5e
            if (r5 == 0) goto L6b
            java.lang.String r5 = "Failed to encode Bitmap"
        L6b:
            if (r6 == 0) goto L70
            r6.close()     // Catch: java.lang.Throwable -> L5a java.io.IOException -> L70
        L70:
            r10 = 0
        L71:
            r5 = 2
            boolean r5 = android.util.Log.isLoggable(r0, r5)
            if (r5 == 0) goto Lb7
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "Compressed with type: "
            r5.<init>(r6)
            r5.append(r2)
            java.lang.String r2 = " of size "
            r5.append(r2)
            int r2 = p087.AbstractC1746.m4698(r9)
            r5.append(r2)
            java.lang.String r2 = " in "
            r5.append(r2)
            double r2 = p087.AbstractC1747.m4706(r3)
            r5.append(r2)
            java.lang.String r2 = ", options format: "
            r5.append(r2)
            java.lang.Object r11 = r11.m3577(r1)
            r5.append(r11)
            java.lang.String r11 = ", hasAlpha: "
            r5.append(r11)
            boolean r9 = r9.hasAlpha()
            r5.append(r9)
            java.lang.String r9 = r5.toString()
        Lb7:
            return r10
        Lb8:
            if (r6 == 0) goto Lbf
            r6.close()     // Catch: java.lang.Throwable -> L5a java.io.IOException -> Lbf
            goto Lbf
        Lbe:
            throw r9
        Lbf:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: p366.C4490.mo3578(java.lang.Object, java.io.File, ʼᵔ.ᵔᵢ):boolean");
    }
}
