package p065;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import android.util.Xml;
import java.util.HashMap;
import p010.AbstractC0844;
import p223.C3056;

/* renamed from: ʾˋ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1610 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f6415;

    /* renamed from: ˈ, reason: contains not printable characters */
    public float f6416;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public String f6417;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f6418;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f6419;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f6420 = false;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f6421;

    public C1610(C1610 c1610, Object obj) {
        c1610.getClass();
        this.f6419 = c1610.f6419;
        m4395(obj);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, ʾˋ.ﹳٴ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m4394(Context context, XmlResourceParser xmlResourceParser, HashMap hashMap) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), AbstractC1597.f6286);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        int i = 0;
        boolean z = false;
        Object obj = null;
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            int i3 = 1;
            if (index == 0) {
                str = obtainStyledAttributes.getString(index);
                if (str != null && str.length() > 0) {
                    str = Character.toUpperCase(str.charAt(0)) + str.substring(1);
                }
            } else if (index == 10) {
                str = obtainStyledAttributes.getString(index);
                z = true;
            } else if (index == 1) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                i = 6;
            } else {
                int i4 = 3;
                if (index == 3) {
                    obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else {
                    i4 = 4;
                    if (index == 2) {
                        obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                    } else {
                        if (index == 7) {
                            obj = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                        } else if (index == 4) {
                            obj = Float.valueOf(obtainStyledAttributes.getDimension(index, 0.0f));
                        } else {
                            i4 = 5;
                            if (index == 5) {
                                obj = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                                i = 2;
                            } else {
                                if (index == 6) {
                                    obj = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                                } else if (index == 9) {
                                    obj = obtainStyledAttributes.getString(index);
                                } else {
                                    i3 = 8;
                                    if (index == 8) {
                                        int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                                        if (resourceId == -1) {
                                            resourceId = obtainStyledAttributes.getInt(index, -1);
                                        }
                                        obj = Integer.valueOf(resourceId);
                                    }
                                }
                                i = i3;
                            }
                        }
                        i = 7;
                    }
                }
                i = i4;
            }
        }
        if (str != null && obj != null) {
            ?? obj2 = new Object();
            obj2.f6419 = i;
            obj2.f6420 = z;
            obj2.m4395(obj);
            hashMap.put(str, obj2);
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4395(Object obj) {
        switch (AbstractC0844.m3018(this.f6419)) {
            case 0:
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                this.f6415 = ((Integer) obj).intValue();
                return;
            case 1:
                this.f6416 = ((Float) obj).floatValue();
                return;
            case 2:
            case 3:
                this.f6418 = ((Integer) obj).intValue();
                return;
            case 4:
                this.f6417 = (String) obj;
                return;
            case 5:
                this.f6421 = ((Boolean) obj).booleanValue();
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                this.f6416 = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }
}
