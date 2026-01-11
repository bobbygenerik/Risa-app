package androidx.appcompat.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ListView;
import p350.AbstractC4295;

/* loaded from: classes.dex */
public class AlertController$RecycleListView extends ListView {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f38;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f39;

    public AlertController$RecycleListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC4295.f15910);
        this.f39 = obtainStyledAttributes.getDimensionPixelOffset(0, -1);
        this.f38 = obtainStyledAttributes.getDimensionPixelOffset(1, -1);
    }
}
