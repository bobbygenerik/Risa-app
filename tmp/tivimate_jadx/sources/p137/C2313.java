package p137;

import android.text.StaticLayout;
import android.widget.TextView;

/* renamed from: ˉˆ.ᴵʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2313 extends C2285 {
    @Override // p137.AbstractC2235
    /* renamed from: ⁱˊ */
    public boolean mo5236(TextView textView) {
        return textView.isHorizontallyScrollable();
    }

    @Override // p137.C2285, p137.AbstractC2235
    /* renamed from: ﹳٴ */
    public void mo5237(StaticLayout.Builder builder, TextView textView) {
        builder.setTextDirection(textView.getTextDirectionHeuristic());
    }
}
