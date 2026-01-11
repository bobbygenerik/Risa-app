package p158;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;

/* renamed from: ˊˋ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2538 extends ClickableSpan {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f9635;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f9636;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2535 f9637;

    public C2538(int i, C2535 c2535, int i2) {
        this.f9636 = i;
        this.f9637 = c2535;
        this.f9635 = i2;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f9636);
        this.f9637.f9633.performAction(this.f9635, bundle);
    }
}
