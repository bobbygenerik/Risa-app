package p312;

import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import com.google.android.material.datepicker.ViewOnClickListenerC0663;
import p179.AbstractC2673;

/* renamed from: ᐧⁱ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3855 extends AbstractC2673 {

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final TextView f14907;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final /* synthetic */ C3860 f14908;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final ImageView f14909;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final TextView f14910;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3855(C3860 c3860, View view) {
        super(view);
        this.f14908 = c3860;
        if (Build.VERSION.SDK_INT < 26) {
            view.setFocusable(true);
        }
        this.f14910 = (TextView) view.findViewById(R.id.mf);
        this.f14907 = (TextView) view.findViewById(R.id.1bj);
        this.f14909 = (ImageView) view.findViewById(R.id.5d4);
        view.setOnClickListener(new ViewOnClickListenerC0663(12, this));
    }
}
