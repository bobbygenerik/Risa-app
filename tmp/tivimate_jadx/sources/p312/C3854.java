package p312;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import ar.tvplayer.tv.R;
import p179.AbstractC2673;
import p179.AbstractC2727;

/* renamed from: ᐧⁱ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3854 extends AbstractC2727 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String[] f14903;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final float[] f14904;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final /* synthetic */ C3860 f14905;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f14906;

    public C3854(C3860 c3860, String[] strArr, float[] fArr) {
        this.f14905 = c3860;
        this.f14903 = strArr;
        this.f14904 = fArr;
    }

    @Override // p179.AbstractC2727
    /* renamed from: ᵔᵢ */
    public final AbstractC2673 mo610(ViewGroup viewGroup, int i) {
        return new C3843(LayoutInflater.from(this.f14905.getContext()).inflate(R.layout.2df, viewGroup, false));
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﹳٴ */
    public final int mo611() {
        return this.f14903.length;
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﾞᴵ */
    public final void mo612(AbstractC2673 abstractC2673, final int i) {
        C3843 c3843 = (C3843) abstractC2673;
        View view = c3843.f14888;
        View view2 = c3843.f10176;
        String[] strArr = this.f14903;
        if (i < strArr.length) {
            c3843.f14889.setText(strArr[i]);
        }
        if (i == this.f14906) {
            view2.setSelected(true);
            view.setVisibility(0);
        } else {
            view2.setSelected(false);
            view.setVisibility(4);
        }
        view2.setOnClickListener(new View.OnClickListener() { // from class: ᐧⁱ.ﾞʻ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                C3854 c3854 = C3854.this;
                C3860 c3860 = c3854.f14905;
                int i2 = c3854.f14906;
                int i3 = i;
                if (i3 != i2) {
                    c3860.setPlaybackSpeed(c3854.f14904[i3]);
                }
                c3860.f14984.dismiss();
            }
        });
    }
}
