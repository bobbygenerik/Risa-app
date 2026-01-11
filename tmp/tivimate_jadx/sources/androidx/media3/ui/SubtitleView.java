package androidx.media3.ui;

import android.content.Context;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p312.C3841;
import p312.C3851;
import p312.C3862;
import p312.InterfaceC3874;
import p388.C4625;
import p388.C4626;
import p388.InterfaceC4627;
import ᴵˋ.ˊʻ;

/* loaded from: classes.dex */
public final class SubtitleView extends FrameLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public float f1306;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public List f1307;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public float f1308;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public InterfaceC3874 f1309;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f1310;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f1311;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C3862 f1312;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f1313;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public View f1314;

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1307 = Collections.EMPTY_LIST;
        this.f1312 = C3862.f15037;
        this.f1306 = 0.0533f;
        this.f1308 = 0.08f;
        this.f1313 = true;
        this.f1310 = true;
        C3851 c3851 = new C3851(context, 0);
        this.f1309 = c3851;
        this.f1314 = c3851;
        addView(c3851);
        this.f1311 = 1;
    }

    private List<C4625> getCuesWithStylingPreferencesApplied() {
        if (this.f1313 && this.f1310) {
            return this.f1307;
        }
        ArrayList arrayList = new ArrayList(this.f1307.size());
        for (int i = 0; i < this.f1307.size(); i++) {
            C4626 m9182 = ((C4625) this.f1307.get(i)).m9182();
            if (!this.f1313) {
                m9182.f17293 = false;
                CharSequence charSequence = m9182.f17297;
                if (charSequence instanceof Spanned) {
                    if (!(charSequence instanceof Spannable)) {
                        m9182.f17297 = SpannableString.valueOf(charSequence);
                        m9182.f17296 = null;
                    }
                    CharSequence charSequence2 = m9182.f17297;
                    charSequence2.getClass();
                    Spannable spannable = (Spannable) charSequence2;
                    for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
                        if (!(obj instanceof InterfaceC4627)) {
                            spannable.removeSpan(obj);
                        }
                    }
                }
                ˊʻ.ٴᵢ(m9182);
            } else if (!this.f1310) {
                ˊʻ.ٴᵢ(m9182);
            }
            arrayList.add(m9182.m9183());
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private C3862 getUserCaptionStyle() {
        boolean isInEditMode = isInEditMode();
        C3862 c3862 = C3862.f15037;
        if (isInEditMode) {
            return c3862;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        if (captioningManager != null && captioningManager.isEnabled()) {
            CaptioningManager.CaptionStyle userStyle = captioningManager.getUserStyle();
            c3862 = new C3862(userStyle.hasForegroundColor() ? userStyle.foregroundColor : -1, userStyle.hasBackgroundColor() ? userStyle.backgroundColor : -16777216, userStyle.hasWindowColor() ? userStyle.windowColor : 0, userStyle.hasEdgeType() ? userStyle.edgeType : 0, userStyle.hasEdgeColor() ? userStyle.edgeColor : -1, userStyle.getTypeface());
        }
        return c3862;
    }

    private <T extends View & InterfaceC3874> void setView(T t) {
        removeView(this.f1314);
        View view = this.f1314;
        if (view instanceof C3841) {
            ((C3841) view).f14882.destroy();
        }
        this.f1314 = t;
        this.f1309 = t;
        addView(t);
    }

    public void setApplyEmbeddedFontSizes(boolean z) {
        this.f1310 = z;
        m806();
    }

    public void setApplyEmbeddedStyles(boolean z) {
        this.f1313 = z;
        m806();
    }

    public void setBottomPaddingFraction(float f) {
        this.f1308 = f;
        m806();
    }

    public void setCues(List<C4625> list) {
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        this.f1307 = list;
        m806();
    }

    public void setFractionalTextSize(float f) {
        this.f1306 = f;
        m806();
    }

    public void setStyle(C3862 c3862) {
        this.f1312 = c3862;
        m806();
    }

    public void setViewType(int i) {
        if (this.f1311 == i) {
            return;
        }
        if (i == 1) {
            setView(new C3851(getContext(), 0));
        } else {
            if (i != 2) {
                throw new IllegalArgumentException();
            }
            setView(new C3841(getContext()));
        }
        this.f1311 = i;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m806() {
        this.f1309.mo8014(getCuesWithStylingPreferencesApplied(), this.f1312, this.f1306, this.f1308);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m807() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m808() {
        setStyle(getUserCaptionStyle());
    }
}
