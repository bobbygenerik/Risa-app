package p065;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;

/* renamed from: ʾˋ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1613 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final float f6438;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final float f6439;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f6440;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float f6441;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float f6442;

    public C1613(Context context, XmlResourceParser xmlResourceParser) {
        this.f6442 = Float.NaN;
        this.f6441 = Float.NaN;
        this.f6438 = Float.NaN;
        this.f6439 = Float.NaN;
        this.f6440 = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), AbstractC1597.f6285);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == 0) {
                int resourceId = obtainStyledAttributes.getResourceId(index, this.f6440);
                this.f6440 = resourceId;
                String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                context.getResources().getResourceName(resourceId);
                if ("layout".equals(resourceTypeName)) {
                    new C1601().m4377((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                }
            } else if (index == 1) {
                this.f6439 = obtainStyledAttributes.getDimension(index, this.f6439);
            } else if (index == 2) {
                this.f6441 = obtainStyledAttributes.getDimension(index, this.f6441);
            } else if (index == 3) {
                this.f6438 = obtainStyledAttributes.getDimension(index, this.f6438);
            } else if (index == 4) {
                this.f6442 = obtainStyledAttributes.getDimension(index, this.f6442);
            }
        }
        obtainStyledAttributes.recycle();
    }
}
