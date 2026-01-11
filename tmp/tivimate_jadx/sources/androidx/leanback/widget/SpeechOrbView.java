package androidx.leanback.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import ar.tvplayer.tv.R;

/* loaded from: classes.dex */
public class SpeechOrbView extends SearchOrbView {

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public C0116 f776;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public boolean f777;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final float f778;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public int f779;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public C0116 f780;

    public SpeechOrbView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f779 = 0;
        this.f777 = false;
        Resources resources = context.getResources();
        this.f778 = resources.getFraction(R.fraction.26a, 1, 1);
        this.f776 = new C0116(resources.getColor(R.color.10v), resources.getColor(R.color.2rs), resources.getColor(R.color.ne));
        this.f780 = new C0116(resources.getColor(R.color.6n5), resources.getColor(R.color.6n5), 0);
        m556();
    }

    @Override // androidx.leanback.widget.SearchOrbView
    public int getLayoutResourceId() {
        return R.layout.lb_speech_orb;
    }

    public void setListeningOrbColors(C0116 c0116) {
        this.f780 = c0116;
    }

    public void setNotListeningOrbColors(C0116 c0116) {
        this.f776 = c0116;
    }

    public void setSoundLevel(int i) {
        if (this.f777) {
            int i2 = this.f779;
            if (i > i2) {
                this.f779 = ((i - i2) / 2) + i2;
            } else {
                this.f779 = (int) (i2 * 0.7f);
            }
            float focusedZoom = (((this.f778 - getFocusedZoom()) * this.f779) / 100.0f) + 1.0f;
            View view = this.f744;
            view.setScaleX(focusedZoom);
            view.setScaleY(focusedZoom);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m556() {
        setOrbColors(this.f776);
        setOrbIcon(getResources().getDrawable(2131231126));
        m554(hasFocus());
        View view = this.f744;
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        this.f777 = false;
    }
}
