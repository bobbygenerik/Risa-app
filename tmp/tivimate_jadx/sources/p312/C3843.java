package p312;

import android.os.Build;
import android.view.View;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import p179.AbstractC2673;

/* renamed from: ᐧⁱ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3843 extends AbstractC2673 {

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final View f14888;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final TextView f14889;

    public C3843(View view) {
        super(view);
        if (Build.VERSION.SDK_INT < 26) {
            view.setFocusable(true);
        }
        this.f14889 = (TextView) view.findViewById(R.id.2gj);
        this.f14888 = view.findViewById(R.id.4qe);
    }
}
