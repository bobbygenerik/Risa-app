package p447;

import android.os.Looper;
import android.os.SystemClock;
import com.google.android.gms.internal.measurement.HandlerC0337;
import p004.C0796;
import p262.C3433;
import p384.C4603;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˉʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5256 extends AbstractC5308 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public HandlerC0337 f19831;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f19832;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C0796 f19833;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C3433 f19834;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C4603 f19835;

    /* JADX WARN: Type inference failed for: r4v3, types: [ʻˆ.ʽ, java.lang.Object] */
    public C5256(C5322 c5322) {
        super(c5322);
        this.f19832 = true;
        this.f19835 = new C4603(this);
        ?? obj = new Object();
        obj.f3353 = this;
        C5322 c53222 = (C5322) ((ᵎﹶ) this).ʾˋ;
        obj.f3351 = new C5244(obj, c53222, 0);
        c53222.f20206.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        obj.f3352 = elapsedRealtime;
        obj.f3354 = elapsedRealtime;
        this.f19833 = obj;
        this.f19834 = new C3433(this);
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final void m10392() {
        m10252();
        if (this.f19831 == null) {
            this.f19831 = new HandlerC0337(Looper.getMainLooper(), 0);
        }
    }

    @Override // p447.AbstractC5308
    /* renamed from: ˋˊ */
    public final boolean mo10296() {
        return false;
    }
}
