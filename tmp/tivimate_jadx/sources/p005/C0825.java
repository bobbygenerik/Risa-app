package p005;

import android.animation.TypeEvaluator;
import p349.C4287;
import ᴵˋ.ˊʻ;

/* renamed from: ʻˈ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0825 implements TypeEvaluator {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C4287[] f3528;

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f, Object obj, Object obj2) {
        C4287[] c4287Arr = (C4287[]) obj;
        C4287[] c4287Arr2 = (C4287[]) obj2;
        if (!ˊʻ.ˈ(c4287Arr, c4287Arr2)) {
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
        if (!ˊʻ.ˈ(this.f3528, c4287Arr)) {
            this.f3528 = ˊʻ.ﾞʻ(c4287Arr);
        }
        for (int i = 0; i < c4287Arr.length; i++) {
            C4287 c4287 = this.f3528[i];
            C4287 c42872 = c4287Arr[i];
            C4287 c42873 = c4287Arr2[i];
            c4287.getClass();
            c4287.f15872 = c42872.f15872;
            int i2 = 0;
            while (true) {
                float[] fArr = c42872.f15871;
                if (i2 < fArr.length) {
                    c4287.f15871[i2] = (c42873.f15871[i2] * f) + ((1.0f - f) * fArr[i2]);
                    i2++;
                }
            }
        }
        return this.f3528;
    }
}
