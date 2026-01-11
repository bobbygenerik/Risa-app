package p366;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import j$.util.DesugarCollections;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;
import p031.C1143;
import p031.C1144;
import p031.EnumC1137;
import p031.EnumC1146;
import p087.AbstractC1746;
import p087.AbstractC1751;
import p257.C3397;
import p257.InterfaceC3396;

/* renamed from: ᵔﹶ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4464 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final C1143 f16704;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final Set f16705;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final C4486 f16706;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C1143 f16708;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final ArrayDeque f16709;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3397 f16711;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ArrayList f16712;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C4461 f16713 = C4461.m9009();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final DisplayMetrics f16714;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC3396 f16715;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C1143 f16710 = C1143.m3576(EnumC1146.f4410, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat");

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C1143 f16707 = new C1143("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", null, C1143.f4404);

    static {
        C4493 c4493 = C4493.f16843;
        Boolean bool = Boolean.FALSE;
        f16708 = C1143.m3576(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize");
        f16704 = C1143.m3576(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode");
        f16705 = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f16706 = new C4486(0);
        DesugarCollections.unmodifiableSet(EnumSet.of(ImageHeaderParser$ImageType.JPEG, ImageHeaderParser$ImageType.PNG_A, ImageHeaderParser$ImageType.PNG));
        char[] cArr = AbstractC1746.f7105;
        f16709 = new ArrayDeque(0);
    }

    public C4464(ArrayList arrayList, DisplayMetrics displayMetrics, InterfaceC3396 interfaceC3396, C3397 c3397) {
        this.f16712 = arrayList;
        AbstractC1751.m4711(displayMetrics, "Argument must not be null");
        this.f16714 = displayMetrics;
        AbstractC1751.m4711(interfaceC3396, "Argument must not be null");
        this.f16715 = interfaceC3396;
        AbstractC1751.m4711(c3397, "Argument must not be null");
        this.f16711 = c3397;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
    
        throw r5;
     */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap m9018(p366.InterfaceC4480 r9, android.graphics.BitmapFactory.Options r10, p366.InterfaceC4474 r11, p257.InterfaceC3396 r12) {
        /*
            java.lang.String r0 = "Downsampler"
            boolean r1 = r10.inJustDecodeBounds
            if (r1 != 0) goto Lc
            r11.mo6838()
            r9.m9037()
        Lc:
            int r1 = r10.outWidth
            int r2 = r10.outHeight
            java.lang.String r3 = r10.outMimeType
            java.util.concurrent.locks.Lock r4 = p366.AbstractC4468.f16721
            r4.lock()
            android.graphics.Bitmap r9 = r9.m9036(r10)     // Catch: java.lang.IllegalArgumentException -> L1f java.lang.Throwable -> L64
            r4.unlock()
            return r9
        L1f:
            r4 = move-exception
            java.io.IOException r5 = new java.io.IOException     // Catch: java.lang.Throwable -> L64
            java.lang.String r6 = "Exception decoding bitmap, outWidth: "
            java.lang.String r7 = ", outHeight: "
            java.lang.String r8 = ", outMimeType: "
            java.lang.StringBuilder r1 = p307.AbstractC3740.m7944(r6, r1, r7, r2, r8)     // Catch: java.lang.Throwable -> L64
            r1.append(r3)     // Catch: java.lang.Throwable -> L64
            java.lang.String r2 = ", inBitmap: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L64
            android.graphics.Bitmap r2 = r10.inBitmap     // Catch: java.lang.Throwable -> L64
            java.lang.String r2 = m9019(r2)     // Catch: java.lang.Throwable -> L64
            r1.append(r2)     // Catch: java.lang.Throwable -> L64
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L64
            r5.<init>(r1, r4)     // Catch: java.lang.Throwable -> L64
            r1 = 3
            boolean r1 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L64
            if (r1 == 0) goto L4e
            java.lang.String r1 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
        L4e:
            android.graphics.Bitmap r0 = r10.inBitmap     // Catch: java.lang.Throwable -> L64
            if (r0 == 0) goto L63
            r12.mo7284(r0)     // Catch: java.io.IOException -> L62 java.lang.Throwable -> L64
            r0 = 0
            r10.inBitmap = r0     // Catch: java.io.IOException -> L62 java.lang.Throwable -> L64
            android.graphics.Bitmap r9 = m9018(r9, r10, r11, r12)     // Catch: java.io.IOException -> L62 java.lang.Throwable -> L64
            java.util.concurrent.locks.Lock r10 = p366.AbstractC4468.f16721
            r10.unlock()
            return r9
        L62:
            throw r5     // Catch: java.lang.Throwable -> L64
        L63:
            throw r5     // Catch: java.lang.Throwable -> L64
        L64:
            r9 = move-exception
            java.util.concurrent.locks.Lock r10 = p366.AbstractC4468.f16721
            r10.unlock()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: p366.C4464.m9018(ᵔﹶ.ـˆ, android.graphics.BitmapFactory$Options, ᵔﹶ.ˉˆ, יᐧ.ﹳٴ):android.graphics.Bitmap");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static String m9019(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m9020(BitmapFactory.Options options) {
        m9021(options);
        ArrayDeque arrayDeque = f16709;
        synchronized (arrayDeque) {
            arrayDeque.offer(options);
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m9021(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x04b5  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0200 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03eb  */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap m9022(p366.InterfaceC4480 r41, android.graphics.BitmapFactory.Options r42, p366.C4493 r43, p031.EnumC1146 r44, p031.EnumC1137 r45, boolean r46, int r47, int r48, boolean r49, p366.InterfaceC4474 r50) {
        /*
            Method dump skipped, instructions count: 1432
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p366.C4464.m9022(ᵔﹶ.ـˆ, android.graphics.BitmapFactory$Options, ᵔﹶ.ﾞʻ, ʼᵔ.ﹳٴ, ʼᵔ.ʼˎ, boolean, int, int, boolean, ᵔﹶ.ˉˆ):android.graphics.Bitmap");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4465 m9023(InterfaceC4480 interfaceC4480, int i, int i2, C1144 c1144, InterfaceC4474 interfaceC4474) {
        BitmapFactory.Options options;
        BitmapFactory.Options options2;
        byte[] bArr = (byte[]) this.f16711.m7293(65536, byte[].class);
        synchronized (C4464.class) {
            ArrayDeque arrayDeque = f16709;
            synchronized (arrayDeque) {
                options = (BitmapFactory.Options) arrayDeque.poll();
            }
            if (options == null) {
                options = new BitmapFactory.Options();
                m9021(options);
            }
            options2 = options;
        }
        options2.inTempStorage = bArr;
        EnumC1146 enumC1146 = (EnumC1146) c1144.m3577(f16710);
        EnumC1137 enumC1137 = (EnumC1137) c1144.m3577(f16707);
        C4493 c4493 = (C4493) c1144.m3577(C4493.f16841);
        boolean booleanValue = ((Boolean) c1144.m3577(f16708)).booleanValue();
        C1143 c1143 = f16704;
        try {
            return C4465.m9024(m9022(interfaceC4480, options2, c4493, enumC1146, enumC1137, c1144.m3577(c1143) != null && ((Boolean) c1144.m3577(c1143)).booleanValue(), i, i2, booleanValue, interfaceC4474), this.f16715);
        } finally {
            m9020(options2);
            this.f16711.m7296(bArr);
        }
    }
}
