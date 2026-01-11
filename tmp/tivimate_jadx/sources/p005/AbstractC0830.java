package p005;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.InflateException;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import p143.AbstractC2392;
import p349.C4287;
import ᴵˋ.ˊʻ;

/* renamed from: ʻˈ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0830 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int[] f3544 = {R.attr.name, R.attr.tint, R.attr.height, R.attr.width, R.attr.alpha, R.attr.autoMirrored, R.attr.tintMode, R.attr.viewportWidth, R.attr.viewportHeight};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final int[] f3543 = {R.attr.name, R.attr.pivotX, R.attr.pivotY, R.attr.scaleX, R.attr.scaleY, R.attr.rotation, R.attr.translateX, R.attr.translateY};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final int[] f3536 = {R.attr.name, R.attr.fillColor, R.attr.pathData, R.attr.strokeColor, R.attr.strokeWidth, R.attr.trimPathStart, R.attr.trimPathEnd, R.attr.trimPathOffset, R.attr.strokeLineCap, R.attr.strokeLineJoin, R.attr.strokeMiterLimit, R.attr.strokeAlpha, R.attr.fillAlpha, R.attr.fillType};

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final int[] f3538 = {R.attr.name, R.attr.pathData, R.attr.fillType};

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final int[] f3539 = {R.attr.drawable};

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final int[] f3545 = {R.attr.name, R.attr.animation};

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final int[] f3541 = {R.attr.interpolator, R.attr.duration, R.attr.startOffset, R.attr.repeatCount, R.attr.repeatMode, R.attr.valueFrom, R.attr.valueTo, R.attr.valueType};

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final int[] f3542 = {R.attr.ordering};

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final int[] f3535 = {R.attr.valueFrom, R.attr.valueTo, R.attr.valueType, R.attr.propertyName};

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final int[] f3537 = {R.attr.value, R.attr.interpolator, R.attr.valueType, R.attr.fraction};

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final int[] f3540 = {R.attr.propertyName, R.attr.pathData, R.attr.propertyXName, R.attr.propertyYName};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m2972(int i) {
        return i >= 28 && i <= 31;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static ValueAnimator m2973(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ObjectAnimator objectAnimator, XmlPullParser xmlPullParser) {
        ValueAnimator valueAnimator;
        int i;
        ValueAnimator valueAnimator2;
        TypedArray m5494 = AbstractC2392.m5494(resources, theme, attributeSet, f3541);
        TypedArray m54942 = AbstractC2392.m5494(resources, theme, attributeSet, f3540);
        ValueAnimator valueAnimator3 = objectAnimator == null ? new ValueAnimator() : objectAnimator;
        long j = AbstractC2392.m5490(xmlPullParser, "duration") ? m5494.getInt(1, 300) : 300;
        long j2 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "startOffset") != null ? m5494.getInt(2, 0) : 0;
        int i2 = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueType") != null ? m5494.getInt(7, 4) : 4;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueFrom") != null && xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueTo") != null) {
            if (i2 == 4) {
                TypedValue peekValue = m5494.peekValue(5);
                boolean z = peekValue != null;
                int i3 = z ? peekValue.type : 0;
                TypedValue peekValue2 = m5494.peekValue(6);
                boolean z2 = peekValue2 != null;
                i2 = ((z && m2972(i3)) || (z2 && m2972(z2 ? peekValue2.type : 0))) ? 3 : 0;
            }
            PropertyValuesHolder m2974 = m2974(m5494, i2, 5, 6, "");
            if (m2974 != null) {
                valueAnimator3.setValues(m2974);
            }
        }
        valueAnimator3.setDuration(j);
        valueAnimator3.setStartDelay(j2);
        valueAnimator3.setRepeatCount(xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "repeatCount") != null ? m5494.getInt(3, 0) : 0);
        valueAnimator3.setRepeatMode(xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "repeatMode") != null ? m5494.getInt(4, 1) : 1);
        if (m54942 != null) {
            ObjectAnimator objectAnimator2 = (ObjectAnimator) valueAnimator3;
            String m5487 = AbstractC2392.m5487(m54942, xmlPullParser, "pathData", 1);
            if (m5487 != null) {
                String m54872 = AbstractC2392.m5487(m54942, xmlPullParser, "propertyXName", 2);
                String m54873 = AbstractC2392.m5487(m54942, xmlPullParser, "propertyYName", 3);
                if (i2 != 2) {
                }
                if (m54872 == null && m54873 == null) {
                    throw new InflateException(m54942.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path path = ˊʻ.ˆʾ(m5487);
                PathMeasure pathMeasure = new PathMeasure(path, false);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Float.valueOf(0.0f));
                float f = 0.0f;
                do {
                    f += pathMeasure.getLength();
                    arrayList.add(Float.valueOf(f));
                } while (pathMeasure.nextContour());
                PathMeasure pathMeasure2 = new PathMeasure(path, false);
                int min = Math.min(100, ((int) (f / 0.5f)) + 1);
                float[] fArr = new float[min];
                float[] fArr2 = new float[min];
                float[] fArr3 = new float[2];
                float f2 = f / (min - 1);
                int i4 = 0;
                valueAnimator = valueAnimator3;
                float f3 = 0.0f;
                int i5 = 0;
                while (true) {
                    if (i4 >= min) {
                        break;
                    }
                    int i6 = min;
                    pathMeasure2.getPosTan(f3 - ((Float) arrayList.get(i5)).floatValue(), fArr3, null);
                    fArr[i4] = fArr3[0];
                    fArr2[i4] = fArr3[1];
                    int i7 = i5 + 1;
                    f3 += f2;
                    if (i7 < arrayList.size() && f3 > ((Float) arrayList.get(i7)).floatValue()) {
                        pathMeasure2.nextContour();
                        i5 = i7;
                    }
                    i4++;
                    min = i6;
                }
                PropertyValuesHolder ofFloat = m54872 != null ? PropertyValuesHolder.ofFloat(m54872, fArr) : null;
                PropertyValuesHolder ofFloat2 = m54873 != null ? PropertyValuesHolder.ofFloat(m54873, fArr2) : null;
                if (ofFloat == null) {
                    objectAnimator2.setValues(ofFloat2);
                } else if (ofFloat2 == null) {
                    objectAnimator2.setValues(ofFloat);
                } else {
                    objectAnimator2.setValues(ofFloat, ofFloat2);
                }
                i = 0;
            } else {
                valueAnimator = valueAnimator3;
                i = 0;
                objectAnimator2.setPropertyName(AbstractC2392.m5487(m54942, xmlPullParser, "propertyName", 0));
            }
        } else {
            valueAnimator = valueAnimator3;
            i = 0;
        }
        int resourceId = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "interpolator") != null ? m5494.getResourceId(i, i) : i;
        if (resourceId > 0) {
            valueAnimator2 = valueAnimator;
            valueAnimator2.setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
        } else {
            valueAnimator2 = valueAnimator;
        }
        m5494.recycle();
        if (m54942 != null) {
            m54942.recycle();
        }
        return valueAnimator2;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [android.animation.TypeEvaluator, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v26, types: [android.animation.TypeEvaluator, java.lang.Object] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static PropertyValuesHolder m2974(TypedArray typedArray, int i, int i2, int i3, String str) {
        PropertyValuesHolder ofFloat;
        TypedValue peekValue = typedArray.peekValue(i2);
        boolean z = peekValue != null;
        int i4 = z ? peekValue.type : 0;
        TypedValue peekValue2 = typedArray.peekValue(i3);
        boolean z2 = peekValue2 != null;
        int i5 = z2 ? peekValue2.type : 0;
        if (i == 4) {
            i = ((z && m2972(i4)) || (z2 && m2972(i5))) ? 3 : 0;
        }
        boolean z3 = i == 0;
        PropertyValuesHolder propertyValuesHolder = null;
        if (i == 2) {
            String string = typedArray.getString(i2);
            String string2 = typedArray.getString(i3);
            C4287[] c4287Arr = ˊʻ.ʼˎ(string);
            C4287[] c4287Arr2 = ˊʻ.ʼˎ(string2);
            if (c4287Arr != null || c4287Arr2 != null) {
                if (c4287Arr != null) {
                    ?? obj = new Object();
                    if (c4287Arr2 == null) {
                        return PropertyValuesHolder.ofObject(str, (TypeEvaluator) obj, c4287Arr);
                    }
                    if (ˊʻ.ˈ(c4287Arr, c4287Arr2)) {
                        return PropertyValuesHolder.ofObject(str, (TypeEvaluator) obj, c4287Arr, c4287Arr2);
                    }
                    throw new InflateException(" Can't morph from " + string + " to " + string2);
                }
                if (c4287Arr2 != null) {
                    return PropertyValuesHolder.ofObject(str, (TypeEvaluator) new Object(), c4287Arr2);
                }
            }
            return null;
        }
        C0827 c0827 = i == 3 ? C0827.f3532 : null;
        if (z3) {
            if (z) {
                float dimension = i4 == 5 ? typedArray.getDimension(i2, 0.0f) : typedArray.getFloat(i2, 0.0f);
                if (z2) {
                    ofFloat = PropertyValuesHolder.ofFloat(str, dimension, i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
                } else {
                    ofFloat = PropertyValuesHolder.ofFloat(str, dimension);
                }
            } else {
                ofFloat = PropertyValuesHolder.ofFloat(str, i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
            }
            propertyValuesHolder = ofFloat;
        } else if (z) {
            int dimension2 = i4 == 5 ? (int) typedArray.getDimension(i2, 0.0f) : m2972(i4) ? typedArray.getColor(i2, 0) : typedArray.getInt(i2, 0);
            if (z2) {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, dimension2, i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : m2972(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
            } else {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, dimension2);
            }
        } else if (z2) {
            propertyValuesHolder = PropertyValuesHolder.ofInt(str, i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : m2972(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
        }
        if (propertyValuesHolder != null && c0827 != null) {
            propertyValuesHolder.setEvaluator(c0827);
        }
        return propertyValuesHolder;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x03a3, code lost:
    
        r2 = new android.animation.Animator[r10.size()];
        r3 = r10.size();
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x03ae, code lost:
    
        if (r1 >= r3) goto L220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x03b0, code lost:
    
        r4 = r10.get(r1);
        r1 = r1 + 1;
        r2[r11] = (android.animation.Animator) r4;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x03be, code lost:
    
        if (r33 != 0) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x03c0, code lost:
    
        r32.playTogether(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x03c3, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x03c4, code lost:
    
        r32.playSequentially(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x03c7, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x039f, code lost:
    
        if (r32 == null) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x03a1, code lost:
    
        if (r10 == null) goto L212;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0377 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x037b  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.animation.Animator m2975(android.content.Context r27, android.content.res.Resources r28, android.content.res.Resources.Theme r29, org.xmlpull.v1.XmlPullParser r30, android.util.AttributeSet r31, android.animation.AnimatorSet r32, int r33) {
        /*
            Method dump skipped, instructions count: 968
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p005.AbstractC0830.m2975(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int):android.animation.Animator");
    }
}
