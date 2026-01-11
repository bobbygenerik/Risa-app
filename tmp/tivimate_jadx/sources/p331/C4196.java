package p331;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.bumptech.glide.C0233;
import com.bumptech.glide.C0234;
import com.bumptech.glide.ComponentCallbacks2C0236;
import com.bumptech.glide.ComponentCallbacks2C0238;
import java.util.ArrayList;
import p031.InterfaceC1147;
import p080.C1714;
import p087.AbstractC1746;
import p087.AbstractC1751;
import p185.C2765;
import p257.InterfaceC3396;
import p296.C3681;
import p376.C4536;
import p376.C4538;
import p387.C4616;
import p399.AbstractC4754;
import p399.C4755;

/* renamed from: ᴵﹶ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4196 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C4190 f15623;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f15624;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayList f15625;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f15626;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ComponentCallbacks2C0236 f15627;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C4190 f15628;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f15629;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final InterfaceC3396 f15630;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public C4190 f15631;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f15632;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f15633;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public C0234 f15634;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Handler f15635;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4536 f15636;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public Bitmap f15637;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f15638;

    public C4196(ComponentCallbacks2C0238 componentCallbacks2C0238, C4536 c4536, int i, int i2, Bitmap bitmap) {
        InterfaceC3396 interfaceC3396 = componentCallbacks2C0238.f1709;
        C0233 c0233 = componentCallbacks2C0238.f1705;
        Context baseContext = c0233.getBaseContext();
        AbstractC1751.m4711(baseContext, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        ComponentCallbacks2C0236 m7501 = ComponentCallbacks2C0238.m1182(baseContext).f1707.m7501(baseContext);
        Context baseContext2 = c0233.getBaseContext();
        AbstractC1751.m4711(baseContext2, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        ComponentCallbacks2C0236 m75012 = ComponentCallbacks2C0238.m1182(baseContext2).f1707.m7501(baseContext2);
        m75012.getClass();
        C0234 mo1157 = new C0234(m75012.f1682, m75012, Bitmap.class, m75012.f1688).mo1157(ComponentCallbacks2C0236.f1680).mo1157(((C4755) ((C4755) ((C4755) new AbstractC4754().m9513(C1714.f7010)).m9506()).m9514()).m9515(i, i2));
        this.f15625 = new ArrayList();
        this.f15627 = m7501;
        Handler handler = new Handler(Looper.getMainLooper(), new C3681(2, this));
        this.f15630 = interfaceC3396;
        this.f15635 = handler;
        this.f15634 = mo1157;
        this.f15636 = c4536;
        m8585(C4616.f17217, bitmap);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8585(InterfaceC1147 interfaceC1147, Bitmap bitmap) {
        AbstractC1751.m4711(interfaceC1147, "Argument must not be null");
        AbstractC1751.m4711(bitmap, "Argument must not be null");
        this.f15637 = bitmap;
        this.f15634 = this.f15634.mo1157(new AbstractC4754().m9508(interfaceC1147, true));
        this.f15633 = AbstractC1746.m4698(bitmap);
        this.f15629 = bitmap.getWidth();
        this.f15624 = bitmap.getHeight();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8586(C4190 c4190) {
        this.f15632 = false;
        boolean z = this.f15626;
        Handler handler = this.f15635;
        if (z) {
            handler.obtainMessage(2, c4190).sendToTarget();
            return;
        }
        if (!this.f15638) {
            this.f15628 = c4190;
            return;
        }
        if (c4190.f15598 != null) {
            Bitmap bitmap = this.f15637;
            if (bitmap != null) {
                this.f15630.mo7284(bitmap);
                this.f15637 = null;
            }
            C4190 c41902 = this.f15623;
            this.f15623 = c4190;
            ArrayList arrayList = this.f15625;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                C4194 c4194 = (C4194) ((InterfaceC4191) arrayList.get(size));
                Object callback = c4194.getCallback();
                while (callback instanceof Drawable) {
                    callback = ((Drawable) callback).getCallback();
                }
                if (callback == null) {
                    c4194.stop();
                    c4194.invalidateSelf();
                } else {
                    c4194.invalidateSelf();
                    C4190 c41903 = ((C4196) c4194.f15607.f3515).f15623;
                    if ((c41903 != null ? c41903.f15600 : -1) == r5.f15636.f16992.f16995 - 1) {
                        c4194.f15610++;
                    }
                    int i = c4194.f15612;
                    if (i != -1 && c4194.f15610 >= i) {
                        c4194.stop();
                    }
                }
            }
            if (c41902 != null) {
                handler.obtainMessage(2, c41902).sendToTarget();
            }
        }
        m8587();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8587() {
        int i;
        if (!this.f15638 || this.f15632) {
            return;
        }
        C4190 c4190 = this.f15628;
        if (c4190 != null) {
            this.f15628 = null;
            m8586(c4190);
            return;
        }
        this.f15632 = true;
        C4536 c4536 = this.f15636;
        int i2 = c4536.f16992.f16995;
        long uptimeMillis = SystemClock.uptimeMillis() + ((i2 <= 0 || (i = c4536.f16984) < 0) ? 0 : (i < 0 || i >= i2) ? -1 : ((C4538) r2.f16998.get(i)).f17005);
        int i3 = (c4536.f16984 + 1) % c4536.f16992.f16995;
        c4536.f16984 = i3;
        this.f15631 = new C4190(this.f15635, i3, uptimeMillis);
        C0234 m1154 = this.f15634.mo1157((C4755) new AbstractC4754().m9518(new C2765(Double.valueOf(Math.random())))).m1154(c4536);
        m1154.m1147(this.f15631, m1154);
    }
}
