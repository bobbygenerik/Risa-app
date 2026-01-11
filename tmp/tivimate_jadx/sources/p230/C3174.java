package p230;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.leanback.widget.C0097;
import com.google.android.material.timepicker.ﾞᴵ;
import java.util.HashMap;
import ᵎˉ.ⁱˊ;

/* renamed from: ˑʿ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3174 extends AbstractC3143 {

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public static final String[] f12116 = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public static final C0097 f12118 = new C0097(PointF.class, "topLeft", 10);

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public static final C0097 f12119 = new C0097(PointF.class, "bottomRight", 11);

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public static final C0097 f12117 = new C0097(PointF.class, "bottomRight", 12);

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public static final C0097 f12121 = new C0097(PointF.class, "topLeft", 13);

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public static final C0097 f12120 = new C0097(PointF.class, "position", 14);

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public static void m6991(C3171 c3171) {
        View view = c3171.f12114;
        HashMap hashMap = c3171.f12115;
        if (!view.isLaidOut() && view.getWidth() == 0 && view.getHeight() == 0) {
            return;
        }
        hashMap.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        hashMap.put("android:changeBounds:parent", view.getParent());
    }

    @Override // p230.AbstractC3143
    /* renamed from: ʼˎ */
    public final void mo6898(C3171 c3171) {
        m6991(c3171);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p230.AbstractC3143
    /* renamed from: ˉʿ */
    public final Animator mo6907(ViewGroup viewGroup, C3171 c3171, C3171 c31712) {
        int i;
        ObjectAnimator m6992;
        if (c3171 == null) {
            return null;
        }
        HashMap hashMap = c3171.f12115;
        if (c31712 == null) {
            return null;
        }
        HashMap hashMap2 = c31712.f12115;
        ViewGroup viewGroup2 = (ViewGroup) hashMap.get("android:changeBounds:parent");
        ViewGroup viewGroup3 = (ViewGroup) hashMap2.get("android:changeBounds:parent");
        if (viewGroup2 == null || viewGroup3 == null) {
            return null;
        }
        View view = c31712.f12114;
        Rect rect = (Rect) hashMap.get("android:changeBounds:bounds");
        Rect rect2 = (Rect) hashMap2.get("android:changeBounds:bounds");
        int i2 = rect.left;
        int i3 = rect2.left;
        int i4 = rect.top;
        int i5 = rect2.top;
        int i6 = rect.right;
        int i7 = rect2.right;
        int i8 = rect.bottom;
        int i9 = rect2.bottom;
        int i10 = i6 - i2;
        int i11 = i8 - i4;
        int i12 = i7 - i3;
        int i13 = i9 - i5;
        Rect rect3 = (Rect) hashMap.get("android:changeBounds:clip");
        Rect rect4 = (Rect) hashMap2.get("android:changeBounds:clip");
        if ((i10 == 0 || i11 == 0) && (i12 == 0 || i13 == 0)) {
            i = 0;
        } else {
            i = (i2 == i3 && i4 == i5) ? 0 : 1;
            if (i6 != i7 || i8 != i9) {
                i++;
            }
        }
        if ((rect3 != null && !rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
            i++;
        }
        int i14 = i;
        if (i14 <= 0) {
            return null;
        }
        boolean z = view instanceof TextView;
        C0097 c0097 = f12120;
        if (!z || (i2 == i3 && i6 == i7)) {
            AbstractC3168.m6980(view, i2, i4, i6, i8);
            if (i14 == 2) {
                if (i10 == i12 && i11 == i13) {
                    this.f12038.getClass();
                    m6992 = AbstractC3175.m6992(view, c0097, ⁱˊ.ˉʿ(i2, i4, i3, i5));
                } else {
                    C3185 c3185 = new C3185(view);
                    this.f12038.getClass();
                    ObjectAnimator m69922 = AbstractC3175.m6992(c3185, f12118, ⁱˊ.ˉʿ(i2, i4, i3, i5));
                    this.f12038.getClass();
                    ObjectAnimator m69923 = AbstractC3175.m6992(c3185, f12119, ⁱˊ.ˉʿ(i6, i8, i7, i9));
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(m69922, m69923);
                    animatorSet.addListener(new ﾞᴵ(2));
                    m6992 = animatorSet;
                }
            } else if (i2 == i3 && i4 == i5) {
                this.f12038.getClass();
                m6992 = AbstractC3175.m6992(view, f12117, ⁱˊ.ˉʿ(i6, i8, i7, i9));
            } else {
                this.f12038.getClass();
                m6992 = AbstractC3175.m6992(view, f12121, ⁱˊ.ˉʿ(i2, i4, i3, i5));
            }
        } else {
            AbstractC3168.m6980(view, i3, i4, i12 + i3, i13 + i4);
            float f = i3;
            this.f12038.getClass();
            m6992 = AbstractC3175.m6992(view, c0097, ⁱˊ.ˉʿ(f, i4, f, i5));
        }
        if (view.getParent() instanceof ViewGroup) {
            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
            ˈˆ.ﾞᴵ.ᴵˑ(viewGroup4, true);
            m6900().m6932(new C3147(viewGroup4, 1));
        }
        return m6992;
    }

    @Override // p230.AbstractC3143
    /* renamed from: ˑﹳ */
    public final void mo6914(C3171 c3171) {
        m6991(c3171);
    }

    @Override // p230.AbstractC3143
    /* renamed from: ـˆ */
    public final String[] mo6916() {
        return f12116;
    }

    @Override // p230.AbstractC3143
    /* renamed from: ᵢˏ */
    public final boolean mo6930() {
        return true;
    }
}
