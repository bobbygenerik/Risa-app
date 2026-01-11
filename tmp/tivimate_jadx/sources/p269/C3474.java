package p269;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p186.AbstractC2776;
import p186.AbstractC2823;
import p349.C4292;
import ʻʿ.ˈ;

/* renamed from: ـˏ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3474 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C4292 f13638;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C4292 f13639;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f13640;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f13641 = new ArrayList();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3475 f13642;

    public C3474(ViewGroup viewGroup) {
        C4292 c4292 = C4292.f15887;
        this.f13638 = c4292;
        this.f13639 = c4292;
        Drawable background = viewGroup.getBackground();
        this.f13640 = background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : 0;
        C3475 c3475 = new C3475(this, viewGroup.getContext(), viewGroup);
        this.f13642 = c3475;
        c3475.setWillNotDraw(true);
        ˈ r1 = new ˈ(27, this);
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        AbstractC2776.m6173(c3475, r1);
        AbstractC2823.m6274(c3475, new C3473(this));
        viewGroup.addView(c3475, 0);
    }
}
