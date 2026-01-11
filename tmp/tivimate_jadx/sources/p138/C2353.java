package p138;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.google.android.gms.internal.measurement.ˏʻ;
import java.io.InputStream;
import java.nio.ByteBuffer;
import p031.C1144;
import p031.InterfaceC1139;
import p080.InterfaceC1710;
import p087.AbstractC1748;
import p257.InterfaceC3396;
import p275.C3507;
import p366.C4465;
import p387.C4617;
import ﹳˋ.ʼˎ;

/* renamed from: ˉˈ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2353 implements InterfaceC1139 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f9105;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f9106;

    public C2353() {
        this.f9106 = 2;
        this.f9105 = new ʼˎ(22);
    }

    public /* synthetic */ C2353(C2350 c2350, int i) {
        this.f9106 = i;
        this.f9105 = c2350;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public C4465 m5439(ImageDecoder.Source source, int i, int i2, C1144 c1144) {
        Bitmap decodeBitmap = ImageDecoder.decodeBitmap(source, new C4617(i, i2, c1144));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            String str = "Decoded [" + decodeBitmap.getWidth() + "x" + decodeBitmap.getHeight() + "] for [" + i + "x" + i2 + "]";
        }
        return new C4465(decodeBitmap, (InterfaceC3396) this.f9105);
    }

    @Override // p031.InterfaceC1139
    /* renamed from: ⁱˊ */
    public final InterfaceC1710 mo3568(Object obj, int i, int i2, C1144 c1144) {
        switch (this.f9106) {
            case 0:
                return C2350.m5437(ImageDecoder.createSource((ByteBuffer) obj), i, i2, c1144);
            case 1:
                return C2350.m5437(ImageDecoder.createSource(AbstractC1748.m4709((InputStream) obj)), i, i2, c1144);
            default:
                return m5439(C3507.m7469(obj), i, i2, c1144);
        }
    }

    @Override // p031.InterfaceC1139
    /* renamed from: ﹳٴ */
    public final boolean mo3569(Object obj, C1144 c1144) {
        switch (this.f9106) {
            case 0:
                ImageHeaderParser$ImageType imageHeaderParser$ImageType = ˏʻ.יـ(((C2350) this.f9105).f9102, (ByteBuffer) obj);
                return imageHeaderParser$ImageType == ImageHeaderParser$ImageType.ANIMATED_WEBP || (Build.VERSION.SDK_INT >= 31 && imageHeaderParser$ImageType == ImageHeaderParser$ImageType.ANIMATED_AVIF);
            case 1:
                C2350 c2350 = (C2350) this.f9105;
                ImageHeaderParser$ImageType imageHeaderParser$ImageType2 = ˏʻ.ﹳᐧ(c2350.f9102, (InputStream) obj, c2350.f9101);
                return imageHeaderParser$ImageType2 == ImageHeaderParser$ImageType.ANIMATED_WEBP || (Build.VERSION.SDK_INT >= 31 && imageHeaderParser$ImageType2 == ImageHeaderParser$ImageType.ANIMATED_AVIF);
            default:
                C3507.m7469(obj);
                return true;
        }
    }
}
