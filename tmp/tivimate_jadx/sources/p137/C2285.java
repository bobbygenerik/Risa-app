package p137;

import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.widget.TextView;

/* renamed from: ˉˆ.ˏᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2285 extends AbstractC2235 {
    @Override // p137.AbstractC2235
    /* renamed from: ﹳٴ */
    public void mo5237(StaticLayout.Builder builder, TextView textView) {
        builder.setTextDirection((TextDirectionHeuristic) C2274.m5310(textView, TextDirectionHeuristics.FIRSTSTRONG_LTR, "getTextDirectionHeuristic"));
    }
}
