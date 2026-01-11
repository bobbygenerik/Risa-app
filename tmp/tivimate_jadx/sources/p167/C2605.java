package p167;

import android.view.View;
import com.google.android.gms.internal.play_billing.י;
import p188.InterfaceC2843;

/* renamed from: ˊᵔ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2605 extends י {

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final /* synthetic */ int f9865;

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m5854(InterfaceC2843 interfaceC2843, float f) {
        switch (this.f9865) {
            case 0:
                ((View) interfaceC2843).setAlpha(f);
                return;
            case 1:
                ((View) interfaceC2843).setScaleX(f);
                return;
            case 2:
                ((View) interfaceC2843).setScaleY(f);
                return;
            case 3:
                ((View) interfaceC2843).setRotation(f);
                return;
            case 4:
                ((View) interfaceC2843).setRotationX(f);
                return;
            default:
                ((View) interfaceC2843).setRotationY(f);
                return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final float m5855(InterfaceC2843 interfaceC2843) {
        switch (this.f9865) {
            case 0:
                return ((View) interfaceC2843).getAlpha();
            case 1:
                return ((View) interfaceC2843).getScaleX();
            case 2:
                return ((View) interfaceC2843).getScaleY();
            case 3:
                return ((View) interfaceC2843).getRotation();
            case 4:
                return ((View) interfaceC2843).getRotationX();
            default:
                return ((View) interfaceC2843).getRotationY();
        }
    }
}
