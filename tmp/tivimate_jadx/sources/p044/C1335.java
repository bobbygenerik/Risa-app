package p044;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import p188.C2844;
import p188.C2861;
import p188.C2862;

/* renamed from: ʽˊ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1335 extends C2861 {

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final RectF f5130;

    public C1335(C1335 c1335) {
        super(c1335);
        this.f5130 = c1335.f5130;
    }

    public C1335(C2862 c2862, RectF rectF) {
        super(c2862);
        this.f5130 = rectF;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˋⁱ.ʼˎ, ʽˊ.ᵎﹶ, android.graphics.drawable.Drawable] */
    @Override // p188.C2861, android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        ?? c2844 = new C2844(this);
        c2844.f5177 = this;
        c2844.invalidateSelf();
        return c2844;
    }
}
