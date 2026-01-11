package p096;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.StateSet;
import p219.AbstractC3024;
import p255.AbstractC3355;
import p255.C3352;
import p255.C3360;

/* renamed from: ˆʾ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1893 extends Drawable.ConstantState {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public boolean f7561;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public int f7562;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f7563;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f7564;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f7565;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f7566;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public boolean f7567;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f7568;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public int f7569;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f7570;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f7571;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public ColorStateList f7572;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public boolean f7573;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f7574;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int[][] f7575;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f7576;

    /* renamed from: ˏי, reason: contains not printable characters */
    public boolean f7577;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f7578;

    /* renamed from: יـ, reason: contains not printable characters */
    public int f7579;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public boolean f7580;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C3360 f7581;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f7582;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public Rect f7583;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public ColorFilter f7584;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public PorterDuff.Mode f7585;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C3352 f7586;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Drawable[] f7587;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f7588;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f7589;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int f7590;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public int f7591;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Resources f7592;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1892 f7593;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public boolean f7594;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean f7595;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public SparseArray f7596;

    public C1893(C1893 c1893, C1892 c1892, Resources resources) {
        this.f7563 = false;
        this.f7595 = false;
        this.f7580 = true;
        this.f7562 = 0;
        this.f7591 = 0;
        this.f7593 = c1892;
        this.f7592 = resources != null ? resources : c1893 != null ? c1893.f7592 : null;
        int i = c1893 != null ? c1893.f7565 : 0;
        int i2 = C1892.f7541;
        i = resources != null ? resources.getDisplayMetrics().densityDpi : i;
        i = i == 0 ? 160 : i;
        this.f7565 = i;
        if (c1893 != null) {
            this.f7571 = c1893.f7571;
            this.f7578 = c1893.f7578;
            this.f7567 = true;
            this.f7561 = true;
            this.f7563 = c1893.f7563;
            this.f7595 = c1893.f7595;
            this.f7580 = c1893.f7580;
            this.f7569 = c1893.f7569;
            this.f7562 = c1893.f7562;
            this.f7591 = c1893.f7591;
            this.f7568 = c1893.f7568;
            this.f7584 = c1893.f7584;
            this.f7566 = c1893.f7566;
            this.f7572 = c1893.f7572;
            this.f7585 = c1893.f7585;
            this.f7576 = c1893.f7576;
            this.f7582 = c1893.f7582;
            if (c1893.f7565 == i) {
                if (c1893.f7570) {
                    this.f7583 = c1893.f7583 != null ? new Rect(c1893.f7583) : null;
                    this.f7570 = true;
                }
                if (c1893.f7573) {
                    this.f7588 = c1893.f7588;
                    this.f7574 = c1893.f7574;
                    this.f7564 = c1893.f7564;
                    this.f7590 = c1893.f7590;
                    this.f7573 = true;
                }
            }
            if (c1893.f7594) {
                this.f7579 = c1893.f7579;
                this.f7594 = true;
            }
            if (c1893.f7577) {
                this.f7577 = true;
            }
            Drawable[] drawableArr = c1893.f7587;
            this.f7587 = new Drawable[drawableArr.length];
            this.f7589 = c1893.f7589;
            SparseArray sparseArray = c1893.f7596;
            if (sparseArray != null) {
                this.f7596 = sparseArray.clone();
            } else {
                this.f7596 = new SparseArray(this.f7589);
            }
            int i3 = this.f7589;
            for (int i4 = 0; i4 < i3; i4++) {
                Drawable drawable = drawableArr[i4];
                if (drawable != null) {
                    Drawable.ConstantState constantState = drawable.getConstantState();
                    if (constantState != null) {
                        this.f7596.put(i4, constantState);
                    } else {
                        this.f7587[i4] = drawableArr[i4];
                    }
                }
            }
        } else {
            this.f7587 = new Drawable[10];
            this.f7589 = 0;
        }
        if (c1893 != null) {
            this.f7575 = c1893.f7575;
        } else {
            this.f7575 = new int[this.f7587.length];
        }
        if (c1893 != null) {
            this.f7586 = c1893.f7586;
            this.f7581 = c1893.f7581;
        } else {
            this.f7586 = new C3352();
            this.f7581 = new C3360();
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        int i = this.f7589;
        Drawable[] drawableArr = this.f7587;
        for (int i2 = 0; i2 < i; i2++) {
            Drawable drawable = drawableArr[i2];
            if (drawable == null) {
                Drawable.ConstantState constantState = (Drawable.ConstantState) this.f7596.get(i2);
                if (constantState != null && constantState.canApplyTheme()) {
                    return true;
                }
            } else if (drawable.canApplyTheme()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.f7571 | this.f7578;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new C1892(this, null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new C1892(this, resources);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4829() {
        SparseArray sparseArray = this.f7596;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                int keyAt = this.f7596.keyAt(i);
                Drawable.ConstantState constantState = (Drawable.ConstantState) this.f7596.valueAt(i);
                Drawable[] drawableArr = this.f7587;
                Drawable newDrawable = constantState.newDrawable(this.f7592);
                newDrawable.setLayoutDirection(this.f7569);
                Drawable mutate = newDrawable.mutate();
                mutate.setCallback(this.f7593);
                drawableArr[keyAt] = mutate;
            }
            this.f7596 = null;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Drawable m4830(int i) {
        int indexOfKey;
        Drawable drawable = this.f7587[i];
        if (drawable != null) {
            return drawable;
        }
        SparseArray sparseArray = this.f7596;
        if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
            return null;
        }
        Drawable newDrawable = ((Drawable.ConstantState) this.f7596.valueAt(indexOfKey)).newDrawable(this.f7592);
        newDrawable.setLayoutDirection(this.f7569);
        Drawable mutate = newDrawable.mutate();
        mutate.setCallback(this.f7593);
        this.f7587[i] = mutate;
        this.f7596.removeAt(indexOfKey);
        if (this.f7596.size() == 0) {
            this.f7596 = null;
        }
        return mutate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m4831(int i) {
        ?? r5;
        if (i < 0) {
            return 0;
        }
        C3360 c3360 = this.f7581;
        int i2 = 0;
        int m6554 = AbstractC3024.m6554(c3360.f13144, c3360.f13143, i);
        if (m6554 >= 0 && (r5 = c3360.f13145[m6554]) != AbstractC3355.f13125) {
            i2 = r5;
        }
        return i2.intValue();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4832() {
        this.f7573 = true;
        m4829();
        int i = this.f7589;
        Drawable[] drawableArr = this.f7587;
        this.f7574 = -1;
        this.f7588 = -1;
        this.f7590 = 0;
        this.f7564 = 0;
        for (int i2 = 0; i2 < i; i2++) {
            Drawable drawable = drawableArr[i2];
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (intrinsicWidth > this.f7588) {
                this.f7588 = intrinsicWidth;
            }
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicHeight > this.f7574) {
                this.f7574 = intrinsicHeight;
            }
            int minimumWidth = drawable.getMinimumWidth();
            if (minimumWidth > this.f7564) {
                this.f7564 = minimumWidth;
            }
            int minimumHeight = drawable.getMinimumHeight();
            if (minimumHeight > this.f7590) {
                this.f7590 = minimumHeight;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m4833(Drawable drawable) {
        int i = this.f7589;
        if (i >= this.f7587.length) {
            int i2 = i + 10;
            Drawable[] drawableArr = new Drawable[i2];
            Drawable[] drawableArr2 = this.f7587;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i);
            }
            this.f7587 = drawableArr;
            int[][] iArr = new int[i2];
            System.arraycopy(this.f7575, 0, iArr, 0, i);
            this.f7575 = iArr;
        }
        drawable.mutate();
        drawable.setVisible(false, true);
        drawable.setCallback(this.f7593);
        this.f7587[i] = drawable;
        this.f7589++;
        this.f7578 = drawable.getChangingConfigurations() | this.f7578;
        this.f7594 = false;
        this.f7577 = false;
        this.f7583 = null;
        this.f7570 = false;
        this.f7573 = false;
        this.f7567 = false;
        return i;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int m4834(int[] iArr) {
        int[][] iArr2 = this.f7575;
        int i = this.f7589;
        for (int i2 = 0; i2 < i; i2++) {
            if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                return i2;
            }
        }
        return -1;
    }
}
