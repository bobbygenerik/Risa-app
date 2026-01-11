package p186;

import android.os.Build;
import androidx.core.widget.NestedScrollView;

/* renamed from: ˋᵔ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2799 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC2806 f10551;

    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, ˋᵔ.יـ] */
    public C2799(NestedScrollView nestedScrollView) {
        if (Build.VERSION.SDK_INT >= 35) {
            this.f10551 = new C2836(nestedScrollView);
        } else {
            this.f10551 = new Object();
        }
    }
}
