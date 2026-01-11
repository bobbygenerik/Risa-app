package p005;

import p349.C4287;
import ᴵˋ.ˊʻ;

/* renamed from: ʻˈ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0826 extends AbstractC0821 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f3529;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String f3530;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C4287[] f3531;

    public AbstractC0826() {
        this.f3531 = null;
        this.f3529 = 0;
    }

    public AbstractC0826(AbstractC0826 abstractC0826) {
        this.f3531 = null;
        this.f3529 = 0;
        this.f3530 = abstractC0826.f3530;
        this.f3531 = ˊʻ.ﾞʻ(abstractC0826.f3531);
    }

    public C4287[] getPathData() {
        return this.f3531;
    }

    public String getPathName() {
        return this.f3530;
    }

    public void setPathData(C4287[] c4287Arr) {
        if (!ˊʻ.ˈ(this.f3531, c4287Arr)) {
            this.f3531 = ˊʻ.ﾞʻ(c4287Arr);
            return;
        }
        C4287[] c4287Arr2 = this.f3531;
        for (int i = 0; i < c4287Arr.length; i++) {
            c4287Arr2[i].f15872 = c4287Arr[i].f15872;
            int i2 = 0;
            while (true) {
                float[] fArr = c4287Arr[i].f15871;
                if (i2 < fArr.length) {
                    c4287Arr2[i].f15871[i2] = fArr[i2];
                    i2++;
                }
            }
        }
    }
}
