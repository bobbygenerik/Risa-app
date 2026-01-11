package p137;

import android.view.textclassifier.TextClassificationManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;

/* renamed from: ˉˆ.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2279 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static TextClassifier m5322(TextView textView) {
        TextClassificationManager textClassificationManager = (TextClassificationManager) textView.getContext().getSystemService(TextClassificationManager.class);
        return textClassificationManager != null ? textClassificationManager.getTextClassifier() : TextClassifier.NO_OP;
    }
}
