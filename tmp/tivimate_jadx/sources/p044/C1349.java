package p044;

import android.graphics.Canvas;
import android.graphics.Region;
import android.os.Build;

/* renamed from: ʽˊ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1349 extends AbstractC1340 {
    @Override // p188.C2844
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo4013(Canvas canvas) {
        if (this.f5177.f5130.isEmpty()) {
            super.mo4013(canvas);
            return;
        }
        canvas.save();
        if (Build.VERSION.SDK_INT >= 26) {
            canvas.clipOutRect(this.f5177.f5130);
        } else {
            canvas.clipRect(this.f5177.f5130, Region.Op.DIFFERENCE);
        }
        super.mo4013(canvas);
        canvas.restore();
    }
}
