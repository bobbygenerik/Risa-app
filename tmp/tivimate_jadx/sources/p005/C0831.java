package p005;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.bumptech.glide.ˈ;
import java.util.ArrayDeque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p143.AbstractC2385;
import p143.AbstractC2392;
import p255.C3359;
import ᴵˋ.ˊʻ;

/* renamed from: ʻˈ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0831 extends AbstractC0816 {

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final PorterDuff.Mode f3546 = PorterDuff.Mode.SRC_IN;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public PorterDuffColorFilter f3547;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public ColorFilter f3548;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final Matrix f3549;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f3550;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final float[] f3551;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C0817 f3552;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f3553;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final Rect f3554;

    /* JADX WARN: Type inference failed for: r0v5, types: [android.graphics.drawable.Drawable$ConstantState, ʻˈ.ʼᐧ] */
    public C0831() {
        this.f3550 = true;
        this.f3551 = new float[9];
        this.f3549 = new Matrix();
        this.f3554 = new Rect();
        ?? constantState = new Drawable.ConstantState();
        constantState.f3482 = null;
        constantState.f3484 = f3546;
        constantState.f3489 = new C0822();
        this.f3552 = constantState;
    }

    public C0831(C0817 c0817) {
        this.f3550 = true;
        this.f3551 = new float[9];
        this.f3549 = new Matrix();
        this.f3554 = new Rect();
        this.f3552 = c0817;
        this.f3547 = m2976(c0817.f3482, c0817.f3484);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f3480;
        if (drawable == null) {
            return false;
        }
        drawable.canApplyTheme();
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.f3554;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f3548;
        if (colorFilter == null) {
            colorFilter = this.f3547;
        }
        Matrix matrix = this.f3549;
        canvas.getMatrix(matrix);
        float[] fArr = this.f3551;
        matrix.getValues(fArr);
        float abs = Math.abs(fArr[0]);
        float abs2 = Math.abs(fArr[4]);
        float abs3 = Math.abs(fArr[1]);
        float abs4 = Math.abs(fArr[3]);
        if (abs3 != 0.0f || abs4 != 0.0f) {
            abs = 1.0f;
            abs2 = 1.0f;
        }
        int width = (int) (rect.width() * abs);
        int min = Math.min(2048, width);
        int min2 = Math.min(2048, (int) (rect.height() * abs2));
        if (min <= 0 || min2 <= 0) {
            return;
        }
        int save = canvas.save();
        canvas.translate(rect.left, rect.top);
        if (isAutoMirrored() && getLayoutDirection() == 1) {
            canvas.translate(rect.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        rect.offsetTo(0, 0);
        C0817 c0817 = this.f3552;
        Bitmap bitmap = c0817.f3492;
        if (bitmap == null || min != bitmap.getWidth() || min2 != c0817.f3492.getHeight()) {
            c0817.f3492 = Bitmap.createBitmap(min, min2, Bitmap.Config.ARGB_8888);
            c0817.f3486 = true;
        }
        if (this.f3550) {
            C0817 c08172 = this.f3552;
            if (c08172.f3486 || c08172.f3487 != c08172.f3482 || c08172.f3488 != c08172.f3484 || c08172.f3483 != c08172.f3485 || c08172.f3481 != c08172.f3489.getRootAlpha()) {
                C0817 c08173 = this.f3552;
                c08173.f3492.eraseColor(0);
                Canvas canvas2 = new Canvas(c08173.f3492);
                C0822 c0822 = c08173.f3489;
                c0822.m2971(c0822.f3508, C0822.f3499, canvas2, min, min2);
                C0817 c08174 = this.f3552;
                c08174.f3487 = c08174.f3482;
                c08174.f3488 = c08174.f3484;
                c08174.f3481 = c08174.f3489.getRootAlpha();
                c08174.f3483 = c08174.f3485;
                c08174.f3486 = false;
            }
        } else {
            C0817 c08175 = this.f3552;
            c08175.f3492.eraseColor(0);
            Canvas canvas3 = new Canvas(c08175.f3492);
            C0822 c08222 = c08175.f3489;
            c08222.m2971(c08222.f3508, C0822.f3499, canvas3, min, min2);
        }
        C0817 c08176 = this.f3552;
        if (c08176.f3489.getRootAlpha() >= 255 && colorFilter == null) {
            paint = null;
        } else {
            if (c08176.f3491 == null) {
                Paint paint2 = new Paint();
                c08176.f3491 = paint2;
                paint2.setFilterBitmap(true);
            }
            c08176.f3491.setAlpha(c08176.f3489.getRootAlpha());
            c08176.f3491.setColorFilter(colorFilter);
            paint = c08176.f3491;
        }
        canvas.drawBitmap(c08176.f3492, (Rect) null, rect, paint);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.getAlpha() : this.f3552.f3489.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f3552.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.getColorFilter() : this.f3548;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f3480 != null && Build.VERSION.SDK_INT >= 24) {
            return new C0828(this.f3480.getConstantState());
        }
        this.f3552.f3490 = getChangingConfigurations();
        return this.f3552;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f3552.f3489.f3500;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f3552.f3489.f3510;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v13, types: [ʻˈ.ٴﹶ, ʻˈ.ᵔʾ, java.lang.Object] */
    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        int i;
        char c;
        int i2;
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        C0817 c0817 = this.f3552;
        c0817.f3489 = new C0822();
        TypedArray m5494 = AbstractC2392.m5494(resources, theme, attributeSet, AbstractC0830.f3544);
        C0817 c08172 = this.f3552;
        C0822 c0822 = c08172.f3489;
        int i3 = !AbstractC2392.m5490(xmlPullParser, "tintMode") ? -1 : m5494.getInt(6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        if (i3 == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (i3 != 5) {
            if (i3 != 9) {
                switch (i3) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        c08172.f3484 = mode;
        ColorStateList colorStateList = null;
        int i4 = 1;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "tint") != null) {
            TypedValue typedValue = new TypedValue();
            m5494.getValue(1, typedValue);
            int i5 = typedValue.type;
            if (i5 == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
            if (i5 < 28 || i5 > 31) {
                Resources resources2 = m5494.getResources();
                int resourceId = m5494.getResourceId(1, 0);
                ThreadLocal threadLocal = AbstractC2385.f9215;
                try {
                    colorStateList = AbstractC2385.m5482(resources2, resources2.getXml(resourceId), theme);
                } catch (Exception e) {
                }
            } else {
                colorStateList = ColorStateList.valueOf(typedValue.data);
            }
        }
        ColorStateList colorStateList2 = colorStateList;
        if (colorStateList2 != null) {
            c08172.f3482 = colorStateList2;
        }
        boolean z = c08172.f3485;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "autoMirrored") != null) {
            z = m5494.getBoolean(5, z);
        }
        c08172.f3485 = z;
        float f = c0822.f3502;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportWidth") != null) {
            f = m5494.getFloat(7, f);
        }
        c0822.f3502 = f;
        float f2 = c0822.f3507;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "viewportHeight") != null) {
            f2 = m5494.getFloat(8, f2);
        }
        c0822.f3507 = f2;
        if (c0822.f3502 <= 0.0f) {
            throw new XmlPullParserException(m5494.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f2 <= 0.0f) {
            throw new XmlPullParserException(m5494.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        c0822.f3510 = m5494.getDimension(3, c0822.f3510);
        float dimension = m5494.getDimension(2, c0822.f3500);
        c0822.f3500 = dimension;
        if (c0822.f3510 <= 0.0f) {
            throw new XmlPullParserException(m5494.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= 0.0f) {
            throw new XmlPullParserException(m5494.getPositionDescription() + "<vector> tag requires height > 0");
        }
        float alpha = c0822.getAlpha();
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "alpha") != null) {
            alpha = m5494.getFloat(4, alpha);
        }
        c0822.setAlpha(alpha);
        String string = m5494.getString(0);
        if (string != null) {
            c0822.f3504 = string;
            c0822.f3505.put(string, c0822);
        }
        m5494.recycle();
        c0817.f3490 = getChangingConfigurations();
        c0817.f3486 = true;
        C0817 c08173 = this.f3552;
        C0822 c08222 = c08173.f3489;
        ArrayDeque arrayDeque = new ArrayDeque();
        C0832 c0832 = c08222.f3508;
        C3359 c3359 = c08222.f3505;
        arrayDeque.push(c0832);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z2 = true;
        while (eventType != i4 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                C0832 c08322 = (C0832) arrayDeque.peek();
                i = depth;
                if ("path".equals(name)) {
                    ?? abstractC0826 = new AbstractC0826();
                    abstractC0826.f3521 = 0.0f;
                    abstractC0826.f3523 = 1.0f;
                    abstractC0826.f3525 = 1.0f;
                    abstractC0826.f3517 = 0.0f;
                    abstractC0826.f3518 = 1.0f;
                    abstractC0826.f3522 = 0.0f;
                    Paint.Cap cap = Paint.Cap.BUTT;
                    abstractC0826.f3526 = cap;
                    Paint.Join join = Paint.Join.MITER;
                    abstractC0826.f3520 = join;
                    abstractC0826.f3524 = 4.0f;
                    TypedArray m54942 = AbstractC2392.m5494(resources, theme, attributeSet, AbstractC0830.f3536);
                    if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null) {
                        String string2 = m54942.getString(0);
                        if (string2 != null) {
                            abstractC0826.f3530 = string2;
                        }
                        String string3 = m54942.getString(2);
                        if (string3 != null) {
                            abstractC0826.f3531 = ˊʻ.ʼˎ(string3);
                        }
                        abstractC0826.f3527 = AbstractC2392.m5486(m54942, xmlPullParser, theme, "fillColor", 1);
                        float f3 = abstractC0826.f3525;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillAlpha") != null) {
                            f3 = m54942.getFloat(12, f3);
                        }
                        abstractC0826.f3525 = f3;
                        int i6 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineCap") != null ? m54942.getInt(8, -1) : -1;
                        abstractC0826.f3526 = i6 != 0 ? i6 != 1 ? i6 != 2 ? abstractC0826.f3526 : Paint.Cap.SQUARE : Paint.Cap.ROUND : cap;
                        int i7 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeLineJoin") != null ? m54942.getInt(9, -1) : -1;
                        abstractC0826.f3520 = i7 != 0 ? i7 != 1 ? i7 != 2 ? abstractC0826.f3520 : Paint.Join.BEVEL : Paint.Join.ROUND : join;
                        float f4 = abstractC0826.f3524;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeMiterLimit") != null) {
                            f4 = m54942.getFloat(10, f4);
                        }
                        abstractC0826.f3524 = f4;
                        abstractC0826.f3519 = AbstractC2392.m5486(m54942, xmlPullParser, theme, "strokeColor", 3);
                        float f5 = abstractC0826.f3523;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeAlpha") != null) {
                            f5 = m54942.getFloat(11, f5);
                        }
                        abstractC0826.f3523 = f5;
                        float f6 = abstractC0826.f3521;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "strokeWidth") != null) {
                            f6 = m54942.getFloat(4, f6);
                        }
                        abstractC0826.f3521 = f6;
                        float f7 = abstractC0826.f3518;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathEnd") != null) {
                            f7 = m54942.getFloat(6, f7);
                        }
                        abstractC0826.f3518 = f7;
                        float f8 = abstractC0826.f3522;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathOffset") != null) {
                            f8 = m54942.getFloat(7, f8);
                        }
                        abstractC0826.f3522 = f8;
                        float f9 = abstractC0826.f3517;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "trimPathStart") != null) {
                            f9 = m54942.getFloat(5, f9);
                        }
                        abstractC0826.f3517 = f9;
                        int i8 = abstractC0826.f3529;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "fillType") != null) {
                            i8 = m54942.getInt(13, i8);
                        }
                        abstractC0826.f3529 = i8;
                    }
                    m54942.recycle();
                    c08322.f3563.add(abstractC0826);
                    if (abstractC0826.getPathName() != null) {
                        c3359.put(abstractC0826.getPathName(), abstractC0826);
                    }
                    c08173.f3490 = c08173.f3490;
                    z2 = false;
                    c = '\b';
                } else {
                    c = '\b';
                    if ("clip-path".equals(name)) {
                        AbstractC0826 abstractC08262 = new AbstractC0826();
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "pathData") != null) {
                            TypedArray m54943 = AbstractC2392.m5494(resources, theme, attributeSet, AbstractC0830.f3538);
                            String string4 = m54943.getString(0);
                            if (string4 != null) {
                                abstractC08262.f3530 = string4;
                            }
                            String string5 = m54943.getString(1);
                            if (string5 != null) {
                                abstractC08262.f3531 = ˊʻ.ʼˎ(string5);
                            }
                            abstractC08262.f3529 = !AbstractC2392.m5490(xmlPullParser, "fillType") ? 0 : m54943.getInt(2, 0);
                            m54943.recycle();
                        }
                        c08322.f3563.add(abstractC08262);
                        if (abstractC08262.getPathName() != null) {
                            c3359.put(abstractC08262.getPathName(), abstractC08262);
                        }
                        c08173.f3490 = c08173.f3490;
                    } else if ("group".equals(name)) {
                        C0832 c08323 = new C0832();
                        TypedArray m54944 = AbstractC2392.m5494(resources, theme, attributeSet, AbstractC0830.f3543);
                        float f10 = c08323.f3556;
                        if (AbstractC2392.m5490(xmlPullParser, "rotation")) {
                            f10 = m54944.getFloat(5, f10);
                        }
                        c08323.f3556 = f10;
                        c08323.f3558 = m54944.getFloat(1, c08323.f3558);
                        c08323.f3559 = m54944.getFloat(2, c08323.f3559);
                        float f11 = c08323.f3565;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleX") != null) {
                            f11 = m54944.getFloat(3, f11);
                        }
                        c08323.f3565 = f11;
                        float f12 = c08323.f3561;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "scaleY") != null) {
                            f12 = m54944.getFloat(4, f12);
                        }
                        c08323.f3561 = f12;
                        float f13 = c08323.f3562;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateX") != null) {
                            f13 = m54944.getFloat(6, f13);
                        }
                        c08323.f3562 = f13;
                        float f14 = c08323.f3555;
                        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "translateY") != null) {
                            f14 = m54944.getFloat(7, f14);
                        }
                        c08323.f3555 = f14;
                        String string6 = m54944.getString(0);
                        if (string6 != null) {
                            c08323.f3560 = string6;
                        }
                        c08323.m2977();
                        m54944.recycle();
                        c08322.f3563.add(c08323);
                        arrayDeque.push(c08323);
                        if (c08323.getGroupName() != null) {
                            c3359.put(c08323.getGroupName(), c08323);
                        }
                        c08173.f3490 = c08173.f3490;
                    }
                }
                i2 = 1;
            } else {
                i = depth;
                c = '\b';
                i2 = 1;
                if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                    arrayDeque.pop();
                }
            }
            eventType = xmlPullParser.next();
            i4 = i2;
            depth = i;
        }
        if (z2) {
            throw new XmlPullParserException("no path defined");
        }
        this.f3547 = m2976(c0817.f3482, c0817.f3484);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.isAutoMirrored() : this.f3552.f3485;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (super.isStateful()) {
            return true;
        }
        C0817 c0817 = this.f3552;
        if (c0817 == null) {
            return false;
        }
        C0822 c0822 = c0817.f3489;
        if (c0822.f3509 == null) {
            c0822.f3509 = Boolean.valueOf(c0822.f3508.mo2970());
        }
        if (c0822.f3509.booleanValue()) {
            return true;
        }
        ColorStateList colorStateList = this.f3552.f3482;
        return colorStateList != null && colorStateList.isStateful();
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.graphics.drawable.Drawable$ConstantState, ʻˈ.ʼᐧ] */
    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f3553 && super.mutate() == this) {
            C0817 c0817 = this.f3552;
            ?? constantState = new Drawable.ConstantState();
            constantState.f3482 = null;
            constantState.f3484 = f3546;
            if (c0817 != null) {
                constantState.f3490 = c0817.f3490;
                C0822 c0822 = new C0822(c0817.f3489);
                constantState.f3489 = c0822;
                if (c0817.f3489.f3506 != null) {
                    c0822.f3506 = new Paint(c0817.f3489.f3506);
                }
                if (c0817.f3489.f3503 != null) {
                    constantState.f3489.f3503 = new Paint(c0817.f3489.f3503);
                }
                constantState.f3482 = c0817.f3482;
                constantState.f3484 = c0817.f3484;
                constantState.f3485 = c0817.f3485;
            }
            this.f3552 = constantState;
            this.f3553 = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z;
        PorterDuff.Mode mode;
        Drawable drawable = this.f3480;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        C0817 c0817 = this.f3552;
        ColorStateList colorStateList = c0817.f3482;
        if (colorStateList == null || (mode = c0817.f3484) == null) {
            z = false;
        } else {
            this.f3547 = m2976(colorStateList, mode);
            invalidateSelf();
            z = true;
        }
        C0822 c0822 = c0817.f3489;
        if (c0822.f3509 == null) {
            c0822.f3509 = Boolean.valueOf(c0822.f3508.mo2970());
        }
        if (c0822.f3509.booleanValue()) {
            boolean mo2969 = c0817.f3489.f3508.mo2969(iArr);
            c0817.f3486 |= mo2969;
            if (mo2969) {
                invalidateSelf();
                return true;
            }
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j);
        } else {
            super.scheduleSelf(runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.setAlpha(i);
        } else if (this.f3552.f3489.getRootAlpha() != i) {
            this.f3552.f3489.setRootAlpha(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.setAutoMirrored(z);
        } else {
            this.f3552.f3485 = z;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f3548 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            ˈ.ˉٴ(drawable, i);
        } else {
            setTintList(ColorStateList.valueOf(i));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
            return;
        }
        C0817 c0817 = this.f3552;
        if (c0817.f3482 != colorStateList) {
            c0817.f3482 = colorStateList;
            this.f3547 = m2976(colorStateList, c0817.f3484);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.setTintMode(mode);
            return;
        }
        C0817 c0817 = this.f3552;
        if (c0817.f3484 != mode) {
            c0817.f3484 = mode;
            this.f3547 = m2976(c0817.f3482, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        Drawable drawable = this.f3480;
        return drawable != null ? drawable.setVisible(z, z2) : super.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f3480;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final PorterDuffColorFilter m2976(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }
}
