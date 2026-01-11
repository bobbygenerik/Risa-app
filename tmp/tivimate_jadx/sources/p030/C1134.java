package p030;

import android.adservices.measurement.MeasurementManager;
import android.content.Context;

/* renamed from: ʼᵎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1134 extends AbstractC1131 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1134(Context context, int i) {
        super(MeasurementManager.get(context));
        switch (i) {
            case 1:
                super((MeasurementManager) context.getSystemService(MeasurementManager.class));
                return;
            default:
                return;
        }
    }
}
