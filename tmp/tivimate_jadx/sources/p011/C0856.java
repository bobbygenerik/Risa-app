package p011;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;
import p179.AbstractC2673;

/* renamed from: ʻᐧ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0856 extends AbstractC2673 {

    /* renamed from: ʿ, reason: contains not printable characters */
    public boolean f3658;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final ColorStateList f3659;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public boolean f3660;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final SparseArray f3661;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final Drawable f3662;

    public C0856(View view) {
        super(view);
        SparseArray sparseArray = new SparseArray(4);
        this.f3661 = sparseArray;
        TextView textView = (TextView) view.findViewById(R.id.title);
        sparseArray.put(R.id.title, textView);
        sparseArray.put(R.id.summary, view.findViewById(R.id.summary));
        sparseArray.put(R.id.icon, view.findViewById(R.id.icon));
        sparseArray.put(ar.tvplayer.tv.R.id.1o3, view.findViewById(ar.tvplayer.tv.R.id.1o3));
        sparseArray.put(R.id.icon_frame, view.findViewById(R.id.icon_frame));
        this.f3662 = view.getBackground();
        if (textView != null) {
            this.f3659 = textView.getTextColors();
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final View m3054(int i) {
        SparseArray sparseArray = this.f3661;
        View view = (View) sparseArray.get(i);
        if (view != null) {
            return view;
        }
        View findViewById = this.f10176.findViewById(i);
        if (findViewById != null) {
            sparseArray.put(i, findViewById);
        }
        return findViewById;
    }
}
