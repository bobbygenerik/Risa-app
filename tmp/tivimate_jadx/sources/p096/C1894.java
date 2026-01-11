package p096;

import android.graphics.drawable.Animatable;
import p005.C0833;
import ˈˆ.ﾞᴵ;

/* renamed from: ˆʾ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1894 extends ﾞᴵ {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ int f7597;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Animatable f7598;

    public /* synthetic */ C1894(Animatable animatable, int i) {
        this.f7597 = i;
        this.f7598 = animatable;
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final void m4835() {
        switch (this.f7597) {
            case 0:
                this.f7598.start();
                return;
            default:
                ((C0833) this.f7598).start();
                return;
        }
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final void m4836() {
        switch (this.f7597) {
            case 0:
                this.f7598.stop();
                return;
            default:
                ((C0833) this.f7598).stop();
                return;
        }
    }
}
