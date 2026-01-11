package p295;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: ٴﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3658 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m7676(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        drawable.inflate(resources, xmlPullParser, attributeSet, theme);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m7677(TypedArray typedArray) {
        return typedArray.getChangingConfigurations();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Drawable m7678(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        return Drawable.createFromXmlInner(resources, xmlPullParser, attributeSet, theme);
    }
}
