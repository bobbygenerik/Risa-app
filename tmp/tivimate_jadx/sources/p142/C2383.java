package p142;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.leanback.widget.ˉˆ;
import com.google.android.material.chip.Chip;
import java.util.WeakHashMap;
import p110.C1949;
import p158.C2535;
import p186.AbstractC2823;

/* renamed from: ˉـ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2383 extends ˉˆ {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC2382 f9212;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2383(AbstractC2382 abstractC2382) {
        super(28);
        this.f9212 = abstractC2382;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final C2535 m5478(int i) {
        AbstractC2382 abstractC2382 = this.f9212;
        int i2 = i == 2 ? abstractC2382.f9207 : abstractC2382.f9210;
        if (i2 == Integer.MIN_VALUE) {
            return null;
        }
        return m5480(i2);
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final boolean m5479(int i, int i2, Bundle bundle) {
        int i3;
        AbstractC2382 abstractC2382 = this.f9212;
        Chip chip = abstractC2382.f9202;
        if (i == -1) {
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            return chip.performAccessibilityAction(i2, bundle);
        }
        if (i2 == 1) {
            return abstractC2382.m5475(i);
        }
        if (i2 == 2) {
            return abstractC2382.m5471(i);
        }
        boolean z = false;
        if (i2 == 64) {
            AccessibilityManager accessibilityManager = abstractC2382.f9209;
            if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || (i3 = abstractC2382.f9207) == i) {
                return false;
            }
            if (i3 != Integer.MIN_VALUE) {
                abstractC2382.f9207 = Integer.MIN_VALUE;
                chip.invalidate();
                abstractC2382.m5477(i3, 65536);
            }
            abstractC2382.f9207 = i;
            chip.invalidate();
            abstractC2382.m5477(i, 32768);
            return true;
        }
        if (i2 == 128) {
            if (abstractC2382.f9207 != i) {
                return false;
            }
            abstractC2382.f9207 = Integer.MIN_VALUE;
            chip.invalidate();
            abstractC2382.m5477(i, 65536);
            return true;
        }
        Chip chip2 = ((C1949) abstractC2382).f7731;
        if (i2 == 16) {
            if (i == 0) {
                return chip2.performClick();
            }
            if (i == 1) {
                chip2.playSoundEffect(0);
                View.OnClickListener onClickListener = chip2.f2673;
                if (onClickListener != null) {
                    onClickListener.onClick(chip2);
                    z = true;
                }
                if (chip2.f2669) {
                    chip2.f2675.m5477(1, 1);
                }
            }
        }
        return z;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C2535 m5480(int i) {
        return new C2535(AccessibilityNodeInfo.obtain(this.f9212.m5474(i).f9633));
    }
}
