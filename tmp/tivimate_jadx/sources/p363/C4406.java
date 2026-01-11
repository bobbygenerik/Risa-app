package p363;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import java.lang.reflect.Constructor;
import p137.C2240;
import p137.C2268;
import p137.C2312;
import p137.C2314;
import p137.C2328;
import p255.C3368;

/* renamed from: ᵔᵢ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4406 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object[] f16395 = new Object[2];

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Class[] f16393 = {Context.class, AttributeSet.class};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final int[] f16388 = {R.attr.onClick};

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final int[] f16389 = {R.attr.accessibilityHeading};

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final int[] f16390 = {R.attr.accessibilityPaneTitle};

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final int[] f16394 = {R.attr.screenReaderFocusable};

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final String[] f16391 = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C3368 f16392 = new C3368(0);

    /* renamed from: ʽ */
    public C2328 mo2449(Context context, AttributeSet attributeSet) {
        return new C2328(context, attributeSet, ar.tvplayer.tv.R.attr.av);
    }

    /* renamed from: ˈ */
    public C2314 mo2450(Context context, AttributeSet attributeSet) {
        return new C2314(context, attributeSet);
    }

    /* renamed from: ˑﹳ */
    public C2312 mo2451(Context context, AttributeSet attributeSet) {
        return new C2312(context, attributeSet);
    }

    /* renamed from: ⁱˊ */
    public C2240 mo2452(Context context, AttributeSet attributeSet) {
        return new C2240(context, attributeSet, ar.tvplayer.tv.R.attr.359);
    }

    /* renamed from: ﹳٴ */
    public C2268 mo2453(Context context, AttributeSet attributeSet) {
        return new C2268(context, attributeSet);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final View m8905(Context context, String str, String str2) {
        String concat;
        C3368 c3368 = f16392;
        Constructor constructor = (Constructor) c3368.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    concat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                concat = str;
            }
            constructor = Class.forName(concat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f16393);
            c3368.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.f16395);
    }
}
