package p401;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextPaint;
import android.util.TypedValue;
import android.util.Xml;
import p032.AbstractC1158;
import p128.AbstractC2179;
import p143.AbstractC2389;
import p259.AbstractC3399;
import p350.AbstractC4295;
import ˉᵎ.ⁱˊ;
import ᴵˋ.ˊʻ;

/* renamed from: ﹳ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4762 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean f17977;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public Typeface f17978;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f17979;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final float f17980;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f17981;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final int f17982;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f17984;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ColorStateList f17985;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final float f17986;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final float f17988;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f17989;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ColorStateList f17990;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public float f17991;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final float f17992;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean f17987 = false;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public boolean f17983 = false;

    public C4762(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, AbstractC4295.f15913);
        this.f17991 = obtainStyledAttributes.getDimension(0, 0.0f);
        this.f17985 = ⁱˊ.ﹳᐧ(context, obtainStyledAttributes, 3);
        ⁱˊ.ﹳᐧ(context, obtainStyledAttributes, 4);
        ⁱˊ.ﹳᐧ(context, obtainStyledAttributes, 5);
        this.f17981 = obtainStyledAttributes.getInt(2, 0);
        this.f17984 = obtainStyledAttributes.getInt(1, 1);
        int i2 = obtainStyledAttributes.hasValue(12) ? 12 : 10;
        this.f17982 = obtainStyledAttributes.getResourceId(i2, 0);
        this.f17989 = obtainStyledAttributes.getString(i2);
        obtainStyledAttributes.getBoolean(14, false);
        this.f17990 = ⁱˊ.ﹳᐧ(context, obtainStyledAttributes, 6);
        this.f17992 = obtainStyledAttributes.getFloat(7, 0.0f);
        this.f17986 = obtainStyledAttributes.getFloat(8, 0.0f);
        this.f17988 = obtainStyledAttributes.getFloat(9, 0.0f);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i, AbstractC3399.f13276);
        this.f17977 = obtainStyledAttributes2.hasValue(0);
        this.f17980 = obtainStyledAttributes2.getFloat(0, 0.0f);
        if (Build.VERSION.SDK_INT >= 26) {
            this.f17979 = obtainStyledAttributes2.getString(obtainStyledAttributes2.hasValue(3) ? 3 : 1);
        }
        obtainStyledAttributes2.recycle();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m9526(Context context) {
        Context context2;
        Typeface m5484;
        String str;
        Typeface create;
        if (this.f17987) {
            return true;
        }
        int i = this.f17982;
        if (i != 0) {
            ThreadLocal threadLocal = AbstractC2389.f9219;
            Typeface typeface = null;
            if (context.isRestricted()) {
                context2 = context;
                m5484 = null;
            } else {
                context2 = context;
                m5484 = AbstractC2389.m5484(context2, i, new TypedValue(), 0, null, false, true);
            }
            if (m5484 != null) {
                this.f17978 = m5484;
                this.f17987 = true;
                return true;
            }
            if (!this.f17983) {
                this.f17983 = true;
                Resources resources = context2.getResources();
                int i2 = this.f17982;
                if (i2 != 0 && resources.getResourceTypeName(i2).equals("font")) {
                    try {
                        XmlResourceParser xml = resources.getXml(i2);
                        while (xml.getEventType() != 1) {
                            if (xml.getEventType() == 2 && xml.getName().equals("font-family")) {
                                TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xml), AbstractC2179.f8547);
                                str = obtainAttributes.getString(7);
                                obtainAttributes.recycle();
                                break;
                            }
                            xml.next();
                        }
                    } catch (Throwable unused) {
                    }
                }
                str = null;
                if (str != null && (create = Typeface.create(str, 0)) != Typeface.DEFAULT) {
                    typeface = Typeface.create(create, this.f17981);
                }
            }
            if (typeface != null) {
                this.f17978 = typeface;
                this.f17987 = true;
                return true;
            }
        }
        return false;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m9527(Context context, TextPaint textPaint, ˊʻ r5) {
        m9528(context, textPaint, r5);
        ColorStateList colorStateList = this.f17985;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        ColorStateList colorStateList2 = this.f17990;
        textPaint.setShadowLayer(this.f17988, this.f17992, this.f17986, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m9528(Context context, TextPaint textPaint, ˊʻ r4) {
        Typeface typeface;
        if (m9526(context) && this.f17987 && (typeface = this.f17978) != null) {
            m9531(context, textPaint, typeface);
            return;
        }
        m9530();
        m9531(context, textPaint, this.f17978);
        m9529(context, new C4761(this, context, textPaint, r4));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9529(Context context, ˊʻ r11) {
        if (!m9526(context)) {
            m9530();
        }
        int i = this.f17982;
        if (i == 0) {
            this.f17987 = true;
        }
        if (this.f17987) {
            r11.ᴵᵔ(this.f17978, true);
            return;
        }
        try {
            C4763 c4763 = new C4763(this, r11);
            ThreadLocal threadLocal = AbstractC2389.f9219;
            if (context.isRestricted()) {
                c4763.m5498(-4);
            } else {
                AbstractC2389.m5484(context, i, new TypedValue(), 0, c4763, false, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.f17987 = true;
            r11.ˈٴ(1);
        } catch (Exception e) {
            String str = "Error loading font " + this.f17989;
            this.f17987 = true;
            r11.ˈٴ(-3);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9530() {
        String str;
        Typeface typeface = this.f17978;
        int i = this.f17981;
        if (typeface == null && (str = this.f17989) != null) {
            this.f17978 = Typeface.create(str, i);
        }
        if (this.f17978 == null) {
            int i2 = this.f17984;
            if (i2 == 1) {
                this.f17978 = Typeface.SANS_SERIF;
            } else if (i2 == 2) {
                this.f17978 = Typeface.SERIF;
            } else if (i2 != 3) {
                this.f17978 = Typeface.DEFAULT;
            } else {
                this.f17978 = Typeface.MONOSPACE;
            }
            this.f17978 = Typeface.create(this.f17978, i);
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m9531(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface m3610 = AbstractC1158.m3610(context.getResources().getConfiguration(), typeface);
        if (m3610 != null) {
            typeface = m3610;
        }
        textPaint.setTypeface(typeface);
        int i = (~typeface.getStyle()) & this.f17981;
        textPaint.setFakeBoldText((i & 1) != 0);
        textPaint.setTextSkewX((i & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f17991);
        if (Build.VERSION.SDK_INT >= 26) {
            textPaint.setFontVariationSettings(this.f17979);
        }
        if (this.f17977) {
            textPaint.setLetterSpacing(this.f17980);
        }
    }
}
