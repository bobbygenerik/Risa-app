package androidx.leanback.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: androidx.leanback.widget.ﹳـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0149 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Rect f1015 = new Rect();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m667(View view, C0123 c0123, int i) {
        View view2;
        int height;
        int width;
        int width2;
        int width3;
        C0151 c0151 = (C0151) view.getLayoutParams();
        int i2 = c0123.f969;
        if (i2 == 0 || (view2 = view.findViewById(i2)) == null) {
            view2 = view;
        }
        int i3 = c0123.f968;
        Rect rect = f1015;
        if (i != 0) {
            if (c0123.f966) {
                float f = c0123.f965;
                if (f == 0.0f) {
                    i3 += view2.getPaddingTop();
                } else if (f == 100.0f) {
                    i3 -= view2.getPaddingBottom();
                }
            }
            if (c0123.f965 != -1.0f) {
                if (view2 == view) {
                    c0151.getClass();
                    height = (view2.getHeight() - c0151.f1024) - c0151.f1022;
                } else {
                    height = view2.getHeight();
                }
                i3 += (int) ((height * c0123.f965) / 100.0f);
            }
            if (view != view2) {
                rect.top = i3;
                ((ViewGroup) view).offsetDescendantRectToMyCoords(view2, rect);
                i3 = rect.top - c0151.f1024;
            }
            return c0123.f967 ? view2.getBaseline() + i3 : i3;
        }
        if (view.getLayoutDirection() != 1) {
            if (c0123.f966) {
                float f2 = c0123.f965;
                if (f2 == 0.0f) {
                    i3 += view2.getPaddingLeft();
                } else if (f2 == 100.0f) {
                    i3 -= view2.getPaddingRight();
                }
            }
            if (c0123.f965 != -1.0f) {
                if (view2 == view) {
                    c0151.getClass();
                    width = (view2.getWidth() - c0151.f1019) - c0151.f1021;
                } else {
                    width = view2.getWidth();
                }
                i3 += (int) ((width * c0123.f965) / 100.0f);
            }
            if (view == view2) {
                return i3;
            }
            rect.left = i3;
            ((ViewGroup) view).offsetDescendantRectToMyCoords(view2, rect);
            return rect.left - c0151.f1019;
        }
        if (view2 == view) {
            c0151.getClass();
            width2 = (view2.getWidth() - c0151.f1019) - c0151.f1021;
        } else {
            width2 = view2.getWidth();
        }
        int i4 = width2 - i3;
        if (c0123.f966) {
            float f3 = c0123.f965;
            if (f3 == 0.0f) {
                i4 -= view2.getPaddingRight();
            } else if (f3 == 100.0f) {
                i4 += view2.getPaddingLeft();
            }
        }
        if (c0123.f965 != -1.0f) {
            if (view2 == view) {
                c0151.getClass();
                width3 = (view2.getWidth() - c0151.f1019) - c0151.f1021;
            } else {
                width3 = view2.getWidth();
            }
            i4 -= (int) ((width3 * c0123.f965) / 100.0f);
        }
        if (view == view2) {
            return i4;
        }
        rect.right = i4;
        ((ViewGroup) view).offsetDescendantRectToMyCoords(view2, rect);
        return rect.right + c0151.f1021;
    }
}
