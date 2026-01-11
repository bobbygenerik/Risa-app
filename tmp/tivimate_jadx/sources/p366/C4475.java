package p366;

import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;
import p031.C1143;
import p031.C1144;
import p031.InterfaceC1139;
import p080.InterfaceC1710;
import p140.AbstractC2376;
import p199.C2904;
import p257.InterfaceC3396;
import p307.AbstractC3740;

/* renamed from: ᵔﹶ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4475 implements InterfaceC1139 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4476 f16752 = f16751;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC3396 f16753;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC4484 f16754;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1143 f16748 = new C1143("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new C4463());

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C1143 f16749 = new C1143("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new C2904());

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C4476 f16751 = new C4476(0);

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final List f16750 = DesugarCollections.unmodifiableList(Arrays.asList("TP1A", "TD1A.220804.031"));

    public C4475(InterfaceC3396 interfaceC3396, InterfaceC4484 interfaceC4484) {
        this.f16753 = interfaceC3396;
        this.f16754 = interfaceC4484;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|(4:5|6|7|(1:9)(6:10|11|12|(2:14|(1:16)(3:17|18|19))|22|23))|38|(5:45|46|47|(1:53)|51)|(1:59)|60|(3:93|(0)|(1:76)(2:77|78))(4:64|(3:67|(1:69)(1:91)|65)|92|(0)(0))|70|71|72|(3:80|81|(3:83|(1:85)|86))|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006b, code lost:
    
        if (r5 != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0177, code lost:
    
        if (android.util.Log.isLoggable("VideoDecoder", 3) != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0108, code lost:
    
        if (r0 < 33) goto L68;
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x017e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x017f  */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap m9032(java.lang.Object r14, android.media.MediaMetadataRetriever r15, long r16, int r18, int r19, int r20, p366.C4493 r21) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p366.C4475.m9032(java.lang.Object, android.media.MediaMetadataRetriever, long, int, int, int, ᵔﹶ.ﾞʻ):android.graphics.Bitmap");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p031.InterfaceC1139
    /* renamed from: ⁱˊ */
    public final InterfaceC1710 mo3568(Object obj, int i, int i2, C1144 c1144) {
        long longValue = ((Long) c1144.m3577(f16748)).longValue();
        if (longValue < 0 && longValue != -1) {
            throw new IllegalArgumentException(AbstractC3740.m7926("Requested frame must be non-negative, or DEFAULT_FRAME, given: ", longValue));
        }
        Integer num = (Integer) c1144.m3577(f16749);
        if (num == null) {
            num = 2;
        }
        C4493 c4493 = (C4493) c1144.m3577(C4493.f16841);
        if (c4493 == null) {
            c4493 = C4493.f16844;
        }
        C4493 c44932 = c4493;
        this.f16752.getClass();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            this.f16754.mo9001(mediaMetadataRetriever, obj);
            try {
                Bitmap m9032 = m9032(obj, mediaMetadataRetriever, longValue, num.intValue(), i, i2, c44932);
                if (Build.VERSION.SDK_INT < 29) {
                    mediaMetadataRetriever.release();
                } else if (mediaMetadataRetriever instanceof AutoCloseable) {
                    mediaMetadataRetriever.close();
                } else if (mediaMetadataRetriever instanceof ExecutorService) {
                    AbstractC2376.m5452((ExecutorService) mediaMetadataRetriever);
                } else {
                    mediaMetadataRetriever.release();
                }
                return C4465.m9024(m9032, this.f16753);
            } catch (Throwable th) {
                th = th;
                Throwable th2 = th;
                if (Build.VERSION.SDK_INT < 29) {
                    mediaMetadataRetriever.release();
                    throw th2;
                }
                if (mediaMetadataRetriever instanceof AutoCloseable) {
                    mediaMetadataRetriever.close();
                    throw th2;
                }
                if (mediaMetadataRetriever instanceof ExecutorService) {
                    AbstractC2376.m5452((ExecutorService) mediaMetadataRetriever);
                    throw th2;
                }
                mediaMetadataRetriever.release();
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // p031.InterfaceC1139
    /* renamed from: ﹳٴ */
    public final boolean mo3569(Object obj, C1144 c1144) {
        return true;
    }
}
