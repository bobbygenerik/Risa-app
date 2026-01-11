package p229;

import android.os.Handler;
import android.view.View;
import android.view.Window;
import androidx.lifecycle.C0180;
import androidx.lifecycle.C0184;
import androidx.lifecycle.InterfaceC0162;
import androidx.lifecycle.InterfaceC0191;
import p333.InterfaceC4203;
import p363.AbstractActivityC4410;
import ʼ.ᵎﹶ;

/* renamed from: ˑʼ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3114 extends ᵎﹶ implements InterfaceC0191, InterfaceC0162, InterfaceC4203, InterfaceC3119 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final AbstractActivityC4410 f11849;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C3085 f11850;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final AbstractActivityC4410 f11851;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final /* synthetic */ AbstractActivityC4410 f11852;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final Handler f11853;

    public C3114(AbstractActivityC4410 abstractActivityC4410) {
        this.f11852 = abstractActivityC4410;
        Handler handler = new Handler();
        this.f11851 = abstractActivityC4410;
        this.f11849 = abstractActivityC4410;
        this.f11853 = handler;
        this.f11850 = new C3085();
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final View m6754(int i) {
        return this.f11852.findViewById(i);
    }

    @Override // androidx.lifecycle.InterfaceC0162
    /* renamed from: ˋᵔ */
    public final C0184 mo691() {
        return this.f11852.f16401;
    }

    @Override // androidx.lifecycle.InterfaceC0191
    /* renamed from: ᵔי */
    public final C0180 mo724() {
        return this.f11852.mo724();
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final boolean m6755() {
        Window window = this.f11852.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // p229.InterfaceC3119
    /* renamed from: ⁱˊ */
    public final void mo6723() {
    }

    @Override // p333.InterfaceC4203
    /* renamed from: ﾞᴵ */
    public final C3125 mo3852() {
        return (C3125) this.f11852.f4903.f13456;
    }
}
