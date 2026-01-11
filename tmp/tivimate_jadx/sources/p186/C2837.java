package p186;

import android.view.WindowInsets;
import p349.C4292;

/* renamed from: ˋᵔ.ﹳﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2837 extends C2838 {

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public C4292 f10638;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public C4292 f10639;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public C4292 f10640;

    public C2837(C2816 c2816, WindowInsets windowInsets) {
        super(c2816, windowInsets);
        this.f10639 = null;
        this.f10638 = null;
        this.f10640 = null;
    }

    @Override // p186.C2822
    /* renamed from: ˆʾ */
    public C4292 mo6264() {
        if (this.f10639 == null) {
            this.f10639 = C4292.m8692(this.f10576.getSystemGestureInsets());
        }
        return this.f10639;
    }

    @Override // p186.AbstractC2810, p186.C2822
    /* renamed from: ˉʿ */
    public C2816 mo6244(int i, int i2, int i3, int i4) {
        return C2816.m6253(null, this.f10576.inset(i, i2, i3, i4));
    }

    @Override // p186.C2822
    /* renamed from: ᵔᵢ */
    public C4292 mo6266() {
        if (this.f10638 == null) {
            this.f10638 = C4292.m8692(this.f10576.getMandatorySystemGestureInsets());
        }
        return this.f10638;
    }

    @Override // p186.C2788, p186.C2822
    /* renamed from: ﹳᐧ */
    public void mo6198(C4292 c4292) {
    }

    @Override // p186.C2822
    /* renamed from: ﾞʻ */
    public C4292 mo6268() {
        if (this.f10640 == null) {
            this.f10640 = C4292.m8692(this.f10576.getTappableElementInsets());
        }
        return this.f10640;
    }
}
