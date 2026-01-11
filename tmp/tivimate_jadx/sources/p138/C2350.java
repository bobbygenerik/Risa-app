package p138;

import android.graphics.ImageDecoder;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import java.io.IOException;
import java.util.ArrayList;
import p031.C1144;
import p257.C3397;
import p387.C4617;

/* renamed from: ˉˈ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2350 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3397 f9101;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f9102;

    public C2350(ArrayList arrayList, C3397 c3397) {
        this.f9102 = arrayList;
        this.f9101 = c3397;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2354 m5437(ImageDecoder.Source source, int i, int i2, C1144 c1144) {
        Drawable decodeDrawable = ImageDecoder.decodeDrawable(source, new C4617(i, i2, c1144));
        if (decodeDrawable instanceof AnimatedImageDrawable) {
            return new C2354((AnimatedImageDrawable) decodeDrawable);
        }
        throw new IOException("Received unexpected drawable type for animated image, failing: " + decodeDrawable);
    }
}
