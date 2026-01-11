package p008;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import p215.C3010;
import p283.RunnableC3568;
import p409.RunnableC4848;

/* renamed from: ʻˑ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0838 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f3574;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Object f3575;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Object f3576;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f3577;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f3578;

    public /* synthetic */ C0838() {
        this.f3578 = 0;
    }

    public C0838(BottomSheetBehavior bottomSheetBehavior) {
        this.f3578 = 2;
        this.f3576 = bottomSheetBehavior;
        this.f3575 = new RunnableC4848(2, this);
    }

    public C0838(SideSheetBehavior sideSheetBehavior) {
        this.f3578 = 1;
        this.f3576 = sideSheetBehavior;
        this.f3575 = new RunnableC3568(6, this);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m2978() {
        int i = 0;
        while (true) {
            byte[] bArr = (byte[]) this.f3575;
            if (i >= bArr.length) {
                this.f3577 = 0;
                return;
            } else {
                bArr[i] = 0;
                i++;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int m2979(int i, byte[] bArr) {
        byte[] bArr2 = (byte[]) this.f3575;
        try {
            int i2 = this.f3577;
            if (i + i2 > bArr.length) {
                throw new RuntimeException("output buffer too short for doFinal()");
            }
            int i3 = 0;
            if (i2 != 0) {
                if (!this.f3574) {
                    throw new RuntimeException("data not block size aligned");
                }
                ((C3010) this.f3576).m6540(0, 0, bArr2, bArr2);
                int i4 = this.f3577;
                this.f3577 = 0;
                System.arraycopy(bArr2, 0, bArr, i, i4);
                i3 = i4;
            }
            m2978();
            return i3;
        } catch (Throwable th) {
            m2978();
            throw th;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m2980(int i) {
        switch (this.f3578) {
            case 1:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f3576;
                WeakReference weakReference = sideSheetBehavior.f2811;
                if (weakReference == null || weakReference.get() == null) {
                    return;
                }
                this.f3577 = i;
                if (this.f3574) {
                    return;
                }
                ((View) sideSheetBehavior.f2811.get()).postOnAnimation((RunnableC3568) this.f3575);
                this.f3574 = true;
                return;
            default:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f3576;
                WeakReference weakReference2 = bottomSheetBehavior.f2607;
                if (weakReference2 == null || weakReference2.get() == null) {
                    return;
                }
                this.f3577 = i;
                if (this.f3574) {
                    return;
                }
                ((View) bottomSheetBehavior.f2607.get()).postOnAnimation((RunnableC4848) this.f3575);
                this.f3574 = true;
                return;
        }
    }
}
