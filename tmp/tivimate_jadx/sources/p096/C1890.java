package p096;

import android.animation.ObjectAnimator;
import android.graphics.drawable.AnimationDrawable;
import ˈˆ.ﾞᴵ;

/* renamed from: ˆʾ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1890 extends ﾞᴵ {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ObjectAnimator f7536;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f7537;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.animation.TimeInterpolator, java.lang.Object, ˆʾ.ˈ] */
    public C1890(AnimationDrawable animationDrawable, boolean z, boolean z2) {
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        int i = z ? numberOfFrames - 1 : 0;
        int i2 = z ? 0 : numberOfFrames - 1;
        ?? obj = new Object();
        int numberOfFrames2 = animationDrawable.getNumberOfFrames();
        obj.f7539 = numberOfFrames2;
        int[] iArr = obj.f7540;
        if (iArr == null || iArr.length < numberOfFrames2) {
            obj.f7540 = new int[numberOfFrames2];
        }
        int[] iArr2 = obj.f7540;
        int i3 = 0;
        for (int i4 = 0; i4 < numberOfFrames2; i4++) {
            int duration = animationDrawable.getDuration(z ? (numberOfFrames2 - i4) - 1 : i4);
            iArr2[i4] = duration;
            i3 += duration;
        }
        obj.f7538 = i3;
        ObjectAnimator ofInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i, i2);
        ofInt.setAutoCancel(true);
        ofInt.setDuration(obj.f7538);
        ofInt.setInterpolator(obj);
        this.f7537 = z2;
        this.f7536 = ofInt;
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final void m4815() {
        this.f7536.reverse();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m4816() {
        return this.f7537;
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final void m4817() {
        this.f7536.start();
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final void m4818() {
        this.f7536.cancel();
    }
}
