package p137;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import ar.tvplayer.tv.R;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;
import p005.C0831;
import p179.C2713;
import p219.AbstractC3024;
import p255.AbstractC3355;
import p255.C3352;
import p255.C3360;
import p255.C3368;
import p404.C4799;

/* renamed from: ˉˆ.ʼᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2241 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static C2241 f8780;

    /* renamed from: ʽ, reason: contains not printable characters */
    public C3360 f8783;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final WeakHashMap f8784 = new WeakHashMap(0);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public TypedValue f8785;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C4799 f8786;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C3368 f8787;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public WeakHashMap f8788;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f8789;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final PorterDuff.Mode f8782 = PorterDuff.Mode.SRC_IN;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final C2245 f8781 = new C2713(6);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static void m5242(C2241 c2241) {
        if (Build.VERSION.SDK_INT < 24) {
            c2241.m5253("vector", new C2277(3));
            c2241.m5253("animated-vector", new C2277(2));
            c2241.m5253("animated-selector", new C2277(1));
            c2241.m5253("drawable", new C2277(0));
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static synchronized C2241 m5243() {
        C2241 c2241;
        synchronized (C2241.class) {
            try {
                if (f8780 == null) {
                    C2241 c22412 = new C2241();
                    f8780 = c22412;
                    m5242(c22412);
                }
                c2241 = f8780;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2241;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static synchronized PorterDuffColorFilter m5244(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (C2241.class) {
            C2245 c2245 = f8781;
            c2245.getClass();
            int i2 = (31 + i) * 31;
            porterDuffColorFilter = (PorterDuffColorFilter) c2245.m6090(Integer.valueOf(mode.hashCode() + i2));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
            }
        }
        return porterDuffColorFilter;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final synchronized ColorStateList m5245(Context context, int i) {
        ColorStateList colorStateList;
        C3360 c3360;
        WeakHashMap weakHashMap = this.f8788;
        ColorStateList colorStateList2 = null;
        colorStateList = (weakHashMap == null || (c3360 = (C3360) weakHashMap.get(context)) == null) ? null : (ColorStateList) c3360.m7198(i);
        if (colorStateList == null) {
            C4799 c4799 = this.f8786;
            if (c4799 != null) {
                colorStateList2 = c4799.m9594(context, i);
            }
            if (colorStateList2 != null) {
                if (this.f8788 == null) {
                    this.f8788 = new WeakHashMap();
                }
                C3360 c33602 = (C3360) this.f8788.get(context);
                if (c33602 == null) {
                    c33602 = new C3360();
                    this.f8788.put(context, c33602);
                }
                c33602.m7201(i, colorStateList2);
            }
            colorStateList = colorStateList2;
        }
        return colorStateList;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Drawable m5246(Context context, int i) {
        if (this.f8785 == null) {
            this.f8785 = new TypedValue();
        }
        TypedValue typedValue = this.f8785;
        context.getResources().getValue(i, typedValue, true);
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable m5248 = m5248(context, j);
        if (m5248 != null) {
            return m5248;
        }
        LayerDrawable layerDrawable = null;
        if (this.f8786 != null) {
            if (i == R.drawable.4p) {
                layerDrawable = new LayerDrawable(new Drawable[]{m5255(context, R.drawable.sb), m5255(context, 2131230786)});
            } else if (i == R.drawable.3g) {
                layerDrawable = C4799.m9583(this, context, R.dimen.55n);
            } else if (i == R.drawable.6sn) {
                layerDrawable = C4799.m9583(this, context, R.dimen.28l);
            } else if (i == R.drawable.4ll) {
                layerDrawable = C4799.m9583(this, context, R.dimen.4d5);
            }
        }
        if (layerDrawable != null) {
            layerDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            m5252(context, j, layerDrawable);
        }
        return layerDrawable;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final synchronized void m5247(C4799 c4799) {
        this.f8786 = c4799;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final synchronized Drawable m5248(Context context, long j) {
        C3352 c3352 = (C3352) this.f8784.get(context);
        if (c3352 == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) c3352.m7172(j);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            int m6553 = AbstractC3024.m6553(c3352.f13114, c3352.f13113, j);
            if (m6553 >= 0) {
                Object[] objArr = c3352.f13111;
                Object obj = objArr[m6553];
                Object obj2 = AbstractC3355.f13126;
                if (obj != obj2) {
                    objArr[m6553] = obj2;
                    c3352.f13112 = true;
                }
            }
        }
        return null;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Drawable m5249(Context context, int i) {
        int next;
        C3368 c3368 = this.f8787;
        if (c3368 == null || c3368.isEmpty()) {
            return null;
        }
        C3360 c3360 = this.f8783;
        if (c3360 != null) {
            String str = (String) c3360.m7198(i);
            if ("appcompat_skip_skip".equals(str)) {
                return null;
            }
            if (str != null && this.f8787.get(str) == null) {
                return null;
            }
        } else {
            this.f8783 = new C3360();
        }
        if (this.f8785 == null) {
            this.f8785 = new TypedValue();
        }
        TypedValue typedValue = this.f8785;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable m5248 = m5248(context, j);
        if (m5248 != null) {
            return m5248;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.f8783.m7201(i, name);
                C2277 c2277 = (C2277) this.f8787.get(name);
                if (c2277 != null) {
                    m5248 = c2277.m5321(context, xml, asAttributeSet, context.getTheme());
                }
                if (m5248 != null) {
                    m5248.setChangingConfigurations(typedValue.changingConfigurations);
                    m5252(context, j, m5248);
                }
            } catch (Exception e) {
            }
        }
        if (m5248 == null) {
            this.f8783.m7201(i, "appcompat_skip_skip");
        }
        return m5248;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final synchronized Drawable m5250(Context context, int i, boolean z) {
        Drawable m5249;
        try {
            if (!this.f8789) {
                this.f8789 = true;
                Drawable m5255 = m5255(context, R.drawable.4bl);
                if (m5255 == null || (!(m5255 instanceof C0831) && !"android.graphics.drawable.VectorDrawable".equals(m5255.getClass().getName()))) {
                    this.f8789 = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            m5249 = m5249(context, i);
            if (m5249 == null) {
                m5249 = m5246(context, i);
            }
            if (m5249 == null) {
                m5249 = context.getDrawable(i);
            }
            if (m5249 != null) {
                m5249 = m5251(context, i, z, m5249);
            }
            if (m5249 != null) {
                AbstractC2307.m5388(m5249);
            }
        } catch (Throwable th) {
            throw th;
        }
        return m5249;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00eb  */
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable m5251(android.content.Context r8, int r9, boolean r10, android.graphics.drawable.Drawable r11) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p137.C2241.m5251(android.content.Context, int, boolean, android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized void m5252(Context context, long j, Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                C3352 c3352 = (C3352) this.f8784.get(context);
                if (c3352 == null) {
                    c3352 = new C3352();
                    this.f8784.put(context, c3352);
                }
                c3352.m7169(j, new WeakReference(constantState));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5253(String str, C2277 c2277) {
        if (this.f8787 == null) {
            this.f8787 = new C3368(0);
        }
        this.f8787.put(str, c2277);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final synchronized void m5254(Context context) {
        C3352 c3352 = (C3352) this.f8784.get(context);
        if (c3352 != null) {
            c3352.m7175();
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final synchronized Drawable m5255(Context context, int i) {
        return m5250(context, i, false);
    }
}
