package p137;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import p005.C0831;
import p005.C0833;
import p096.C1892;
import p295.AbstractC3658;

/* renamed from: ˉˆ.ˋˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2277 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f8916;

    public /* synthetic */ C2277(int i) {
        this.f8916 = i;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Drawable m5321(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        switch (this.f8916) {
            case 0:
                String classAttribute = attributeSet.getClassAttribute();
                if (classAttribute == null) {
                    return null;
                }
                try {
                    Drawable drawable = (Drawable) C2277.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(null).newInstance(null);
                    AbstractC3658.m7676(drawable, context.getResources(), xmlResourceParser, attributeSet, theme);
                    return drawable;
                } catch (Exception e) {
                    return null;
                }
            case 1:
                try {
                    return C1892.m4819(context, context.getResources(), xmlResourceParser, attributeSet, theme);
                } catch (Exception e2) {
                    return null;
                }
            case 2:
                try {
                    Resources resources = context.getResources();
                    C0833 c0833 = new C0833(context, 0);
                    c0833.inflate(resources, xmlResourceParser, attributeSet, theme);
                    return c0833;
                } catch (Exception e3) {
                    return null;
                }
            default:
                try {
                    Resources resources2 = context.getResources();
                    C0831 c0831 = new C0831();
                    c0831.inflate(resources2, xmlResourceParser, attributeSet, theme);
                    return c0831;
                } catch (Exception e4) {
                    return null;
                }
        }
    }
}
