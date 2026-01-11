package p179;

import p137.AbstractC2305;

/* renamed from: ˋˋ.ᐧﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2723 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f10367;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f10368;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f10369;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f10370;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f10371;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public long f10372;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f10373;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f10374;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f10375;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f10376;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f10377;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f10378;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f10379;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f10380;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f10381;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f10382;

    public final String toString() {
        StringBuilder sb = new StringBuilder("State{mTargetPosition=");
        sb.append(this.f10380);
        sb.append(", mData=null, mItemCount=");
        sb.append(this.f10374);
        sb.append(", mIsMeasuring=");
        sb.append(this.f10367);
        sb.append(", mPreviousLayoutItemCount=");
        sb.append(this.f10379);
        sb.append(", mDeletedInvisibleItemCountSincePreviousLayout=");
        sb.append(this.f10369);
        sb.append(", mStructureChanged=");
        sb.append(this.f10382);
        sb.append(", mInPreLayout=");
        sb.append(this.f10376);
        sb.append(", mRunSimpleAnimations=");
        sb.append(this.f10370);
        sb.append(", mRunPredictiveAnimations=");
        return AbstractC2305.m5377(sb, this.f10375, '}');
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m6109() {
        return this.f10376 ? this.f10379 - this.f10369 : this.f10374;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6110(int i) {
        if ((this.f10371 & i) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f10371));
    }
}
