package p005;

import android.graphics.Matrix;
import android.graphics.Paint;
import java.util.ArrayList;
import p255.C3359;

/* renamed from: ʻˈ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0832 extends AbstractC0821 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public float f3555;

    /* renamed from: ʽ, reason: contains not printable characters */
    public float f3556;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Matrix f3557;

    /* renamed from: ˈ, reason: contains not printable characters */
    public float f3558;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public float f3559;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public String f3560;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public float f3561;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public float f3562;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f3563;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Matrix f3564;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public float f3565;

    public C0832() {
        this.f3564 = new Matrix();
        this.f3563 = new ArrayList();
        this.f3556 = 0.0f;
        this.f3558 = 0.0f;
        this.f3559 = 0.0f;
        this.f3565 = 1.0f;
        this.f3561 = 1.0f;
        this.f3562 = 0.0f;
        this.f3555 = 0.0f;
        this.f3557 = new Matrix();
        this.f3560 = null;
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [ʻˈ.ٴﹶ, ʻˈ.ᵔʾ] */
    public C0832(C0832 c0832, C3359 c3359) {
        AbstractC0826 abstractC0826;
        this.f3564 = new Matrix();
        this.f3563 = new ArrayList();
        this.f3556 = 0.0f;
        this.f3558 = 0.0f;
        this.f3559 = 0.0f;
        this.f3565 = 1.0f;
        this.f3561 = 1.0f;
        this.f3562 = 0.0f;
        this.f3555 = 0.0f;
        Matrix matrix = new Matrix();
        this.f3557 = matrix;
        this.f3560 = null;
        this.f3556 = c0832.f3556;
        this.f3558 = c0832.f3558;
        this.f3559 = c0832.f3559;
        this.f3565 = c0832.f3565;
        this.f3561 = c0832.f3561;
        this.f3562 = c0832.f3562;
        this.f3555 = c0832.f3555;
        String str = c0832.f3560;
        this.f3560 = str;
        if (str != null) {
            c3359.put(str, this);
        }
        matrix.set(c0832.f3557);
        ArrayList arrayList = c0832.f3563;
        for (int i = 0; i < arrayList.size(); i++) {
            Object obj = arrayList.get(i);
            if (obj instanceof C0832) {
                this.f3563.add(new C0832((C0832) obj, c3359));
            } else {
                if (obj instanceof C0824) {
                    C0824 c0824 = (C0824) obj;
                    ?? abstractC08262 = new AbstractC0826(c0824);
                    abstractC08262.f3521 = 0.0f;
                    abstractC08262.f3523 = 1.0f;
                    abstractC08262.f3525 = 1.0f;
                    abstractC08262.f3517 = 0.0f;
                    abstractC08262.f3518 = 1.0f;
                    abstractC08262.f3522 = 0.0f;
                    abstractC08262.f3526 = Paint.Cap.BUTT;
                    abstractC08262.f3520 = Paint.Join.MITER;
                    abstractC08262.f3524 = 4.0f;
                    abstractC08262.f3519 = c0824.f3519;
                    abstractC08262.f3521 = c0824.f3521;
                    abstractC08262.f3523 = c0824.f3523;
                    abstractC08262.f3527 = c0824.f3527;
                    abstractC08262.f3529 = c0824.f3529;
                    abstractC08262.f3525 = c0824.f3525;
                    abstractC08262.f3517 = c0824.f3517;
                    abstractC08262.f3518 = c0824.f3518;
                    abstractC08262.f3522 = c0824.f3522;
                    abstractC08262.f3526 = c0824.f3526;
                    abstractC08262.f3520 = c0824.f3520;
                    abstractC08262.f3524 = c0824.f3524;
                    abstractC0826 = abstractC08262;
                } else {
                    if (!(obj instanceof C0819)) {
                        throw new IllegalStateException("Unknown object in the tree!");
                    }
                    abstractC0826 = new AbstractC0826((C0819) obj);
                }
                this.f3563.add(abstractC0826);
                Object obj2 = abstractC0826.f3530;
                if (obj2 != null) {
                    c3359.put(obj2, abstractC0826);
                }
            }
        }
    }

    public String getGroupName() {
        return this.f3560;
    }

    public Matrix getLocalMatrix() {
        return this.f3557;
    }

    public float getPivotX() {
        return this.f3558;
    }

    public float getPivotY() {
        return this.f3559;
    }

    public float getRotation() {
        return this.f3556;
    }

    public float getScaleX() {
        return this.f3565;
    }

    public float getScaleY() {
        return this.f3561;
    }

    public float getTranslateX() {
        return this.f3562;
    }

    public float getTranslateY() {
        return this.f3555;
    }

    public void setPivotX(float f) {
        if (f != this.f3558) {
            this.f3558 = f;
            m2977();
        }
    }

    public void setPivotY(float f) {
        if (f != this.f3559) {
            this.f3559 = f;
            m2977();
        }
    }

    public void setRotation(float f) {
        if (f != this.f3556) {
            this.f3556 = f;
            m2977();
        }
    }

    public void setScaleX(float f) {
        if (f != this.f3565) {
            this.f3565 = f;
            m2977();
        }
    }

    public void setScaleY(float f) {
        if (f != this.f3561) {
            this.f3561 = f;
            m2977();
        }
    }

    public void setTranslateX(float f) {
        if (f != this.f3562) {
            this.f3562 = f;
            m2977();
        }
    }

    public void setTranslateY(float f) {
        if (f != this.f3555) {
            this.f3555 = f;
            m2977();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m2977() {
        Matrix matrix = this.f3557;
        matrix.reset();
        matrix.postTranslate(-this.f3558, -this.f3559);
        matrix.postScale(this.f3565, this.f3561);
        matrix.postRotate(this.f3556, 0.0f, 0.0f);
        matrix.postTranslate(this.f3562 + this.f3558, this.f3555 + this.f3559);
    }

    @Override // p005.AbstractC0821
    /* renamed from: ⁱˊ */
    public final boolean mo2969(int[] iArr) {
        int i = 0;
        boolean z = false;
        while (true) {
            ArrayList arrayList = this.f3563;
            if (i >= arrayList.size()) {
                return z;
            }
            z |= ((AbstractC0821) arrayList.get(i)).mo2969(iArr);
            i++;
        }
    }

    @Override // p005.AbstractC0821
    /* renamed from: ﹳٴ */
    public final boolean mo2970() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f3563;
            if (i >= arrayList.size()) {
                return false;
            }
            if (((AbstractC0821) arrayList.get(i)).mo2970()) {
                return true;
            }
            i++;
        }
    }
}
