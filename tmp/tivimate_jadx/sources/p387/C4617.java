package p387;

import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import p031.C1143;
import p031.C1144;
import p031.EnumC1137;
import p031.EnumC1146;
import p366.C4461;
import p366.C4464;
import p366.C4493;

/* renamed from: ⁱˆ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4617 implements ImageDecoder$OnHeaderDecodedListener {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f17218;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final EnumC1146 f17219;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C4493 f17220;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final EnumC1137 f17221;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f17222;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4461 f17223 = C4461.m9009();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f17224;

    public C4617(int i, int i2, C1144 c1144) {
        this.f17222 = i;
        this.f17218 = i2;
        this.f17219 = (EnumC1146) c1144.m3577(C4464.f16710);
        this.f17220 = (C4493) c1144.m3577(C4493.f16841);
        C1143 c1143 = C4464.f16704;
        this.f17224 = c1144.m3577(c1143) != null && ((Boolean) c1144.m3577(c1143)).booleanValue();
        this.f17221 = (EnumC1137) c1144.m3577(C4464.f16707);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v5, types: [android.graphics.ImageDecoder$OnPartialImageListener, java.lang.Object] */
    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        ColorSpace.Named named;
        if (this.f17223.m9010(this.f17222, this.f17218, this.f17224, false)) {
            imageDecoder.setAllocator(3);
        } else {
            imageDecoder.setAllocator(1);
        }
        if (this.f17219 == EnumC1146.f4413) {
            imageDecoder.setMemorySizePolicy(0);
        }
        imageDecoder.setOnPartialImageListener(new Object());
        Size size = imageInfo.getSize();
        int i = this.f17222;
        if (i == Integer.MIN_VALUE) {
            i = size.getWidth();
        }
        int i2 = this.f17218;
        if (i2 == Integer.MIN_VALUE) {
            i2 = size.getHeight();
        }
        float m9063 = this.f17220.m9063(size.getWidth(), size.getHeight(), i, i2);
        int round = Math.round(size.getWidth() * m9063);
        int round2 = Math.round(size.getHeight() * m9063);
        if (Log.isLoggable("ImageDecoder", 2)) {
            String str = "Resizing from [" + size.getWidth() + "x" + size.getHeight() + "] to [" + round + "x" + round2 + "] scaleFactor: " + m9063;
        }
        imageDecoder.setTargetSize(round, round2);
        EnumC1137 enumC1137 = this.f17221;
        if (enumC1137 != null) {
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 28) {
                imageDecoder.setTargetColorSpace(ColorSpace.get((enumC1137 == EnumC1137.f4400 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
            } else if (i3 >= 26) {
                named = ColorSpace.Named.SRGB;
                imageDecoder.setTargetColorSpace(ColorSpace.get(named));
            }
        }
    }
}
