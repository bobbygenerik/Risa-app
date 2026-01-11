package p044;

import android.view.View;
import com.google.android.material.internal.CheckableImageButton;
import ˑˊ.ﹳٴ;

/* renamed from: ʽˊ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1331 extends AbstractC1343 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ int f5124;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1331(C1324 c1324, int i) {
        super(c1324);
        this.f5124 = i;
    }

    @Override // p044.AbstractC1343
    /* renamed from: ᵔﹳ */
    public void mo3973() {
        switch (this.f5124) {
            case 0:
                C1324 c1324 = this.f5182;
                c1324.f5080 = null;
                CheckableImageButton checkableImageButton = c1324.f5090;
                checkableImageButton.setOnLongClickListener(null);
                ﹳٴ.ʼˎ(checkableImageButton, (View.OnLongClickListener) null);
                return;
            default:
                return;
        }
    }
}
