package p275;

import android.os.Build;
import androidx.leanback.widget.RunnableC0114;
import java.util.ArrayList;
import ˉᵎ.ⁱˊ;
import ˏˆ.ﹳٴ;
import ᴵˋ.ˊʻ;

/* renamed from: ـﹶ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3513 extends ⁱˊ {

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final /* synthetic */ C3526 f13842;

    public C3513(C3526 c3526) {
        this.f13842 = c3526;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m7479(Throwable th) {
        ((C3508) this.f13842.f13866).m7475(th);
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m7480(ﹳٴ r7) {
        C3526 c3526 = this.f13842;
        c3526.f13867 = r7;
        ﹳٴ r1 = (ﹳٴ) c3526.f13867;
        C3508 c3508 = (C3508) c3526.f13866;
        c3526.f13868 = new ᵢ.ﹳٴ(r1, c3508.f13831, c3508.f13827, Build.VERSION.SDK_INT >= 34 ? AbstractC3518.m7484() : ˊʻ.יـ());
        C3508 c35082 = (C3508) c3526.f13866;
        c35082.getClass();
        ArrayList arrayList = new ArrayList();
        c35082.f13834.writeLock().lock();
        try {
            c35082.f13828 = 1;
            arrayList.addAll(c35082.f13833);
            c35082.f13833.clear();
            c35082.f13834.writeLock().unlock();
            c35082.f13829.post(new RunnableC0114(arrayList, c35082.f13828, (Throwable) null));
        } catch (Throwable th) {
            c35082.f13834.writeLock().unlock();
            throw th;
        }
    }
}
