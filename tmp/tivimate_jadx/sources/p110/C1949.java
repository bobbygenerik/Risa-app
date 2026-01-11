package p110;

import android.R;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import com.google.android.material.chip.Chip;
import java.util.ArrayList;
import p142.AbstractC2382;
import p158.C2526;
import p158.C2535;

/* renamed from: ˆᵢ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1949 extends AbstractC2382 {

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final /* synthetic */ Chip f7731;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1949(Chip chip, Chip chip2) {
        super(chip2);
        this.f7731 = chip;
    }

    @Override // p142.AbstractC2382
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void mo4903(int i, boolean z) {
        Chip chip = this.f7731;
        if (i == 1) {
            chip.f2670 = z;
        }
        C1953 c1953 = chip.f2681;
        boolean z2 = chip.f2670;
        boolean z3 = false;
        if (c1953.f7764 != null) {
            z3 = c1953.m4914(z2 ? new int[]{R.attr.state_pressed, R.attr.state_enabled} : C1953.f7736);
        }
        if (z3) {
            chip.refreshDrawableState();
        }
    }

    @Override // p142.AbstractC2382
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void mo4904(int i, C2535 c2535) {
        Rect closeIconTouchBoundsInt;
        AccessibilityNodeInfo accessibilityNodeInfo = c2535.f9633;
        if (i != 1) {
            accessibilityNodeInfo.setContentDescription("");
            accessibilityNodeInfo.setBoundsInParent(Chip.f2668);
            return;
        }
        Chip chip = this.f7731;
        CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
        if (closeIconContentDescription != null) {
            accessibilityNodeInfo.setContentDescription(closeIconContentDescription);
        } else {
            CharSequence text = chip.getText();
            accessibilityNodeInfo.setContentDescription(chip.getContext().getString(ar.tvplayer.tv.R.string.29q, TextUtils.isEmpty(text) ? "" : text).trim());
        }
        closeIconTouchBoundsInt = chip.getCloseIconTouchBoundsInt();
        accessibilityNodeInfo.setBoundsInParent(closeIconTouchBoundsInt);
        c2535.m5675(C2526.f9620);
        accessibilityNodeInfo.setEnabled(chip.isEnabled());
        c2535.m5665(Button.class.getName());
    }

    @Override // p142.AbstractC2382
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void mo4905(ArrayList arrayList) {
        C1953 c1953;
        arrayList.add(0);
        Rect rect = Chip.f2668;
        Chip chip = this.f7731;
        if (!chip.m2381() || (c1953 = chip.f2681) == null || !c1953.f7746 || chip.f2673 == null) {
            return;
        }
        arrayList.add(1);
    }
}
