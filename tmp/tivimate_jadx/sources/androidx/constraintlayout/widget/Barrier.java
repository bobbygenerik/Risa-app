package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import java.util.HashMap;
import p065.AbstractC1597;
import p065.AbstractC1609;
import p072.AbstractC1632;
import p072.C1635;
import p072.C1640;

/* loaded from: classes.dex */
public class Barrier extends AbstractC1609 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f252;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C1640 f253;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f254;

    public Barrier(Context context) {
        super(context);
        this.f6409 = new int[32];
        this.f6412 = new HashMap();
        this.f6408 = context;
        mo85(null);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public boolean getAllowsGoneWidget() {
        return this.f253.f6659;
    }

    public int getMargin() {
        return this.f253.f6660;
    }

    public int getType() {
        return this.f252;
    }

    public void setAllowsGoneWidget(boolean z) {
        this.f253.f6659 = z;
    }

    public void setDpMargin(int i) {
        this.f253.f6660 = (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i) {
        this.f253.f6660 = i;
    }

    public void setType(int i) {
        this.f252 = i;
    }

    @Override // p065.AbstractC1609
    /* renamed from: ʼˎ */
    public final void mo84(C1635 c1635, boolean z) {
        int i = this.f252;
        this.f254 = i;
        if (z) {
            if (i == 5) {
                this.f254 = 1;
            } else if (i == 6) {
                this.f254 = 0;
            }
        } else if (i == 5) {
            this.f254 = 0;
        } else if (i == 6) {
            this.f254 = 1;
        }
        if (c1635 instanceof C1640) {
            ((C1640) c1635).f6661 = this.f254;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ʾᵎ.ʼˎ, ʾᵎ.ﹳٴ] */
    @Override // p065.AbstractC1609
    /* renamed from: ᵔᵢ */
    public final void mo85(AttributeSet attributeSet) {
        super.mo85(attributeSet);
        ?? abstractC1632 = new AbstractC1632();
        abstractC1632.f6661 = 0;
        abstractC1632.f6659 = true;
        abstractC1632.f6660 = 0;
        abstractC1632.f6658 = false;
        this.f253 = abstractC1632;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, AbstractC1597.f6290);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 26) {
                    setType(obtainStyledAttributes.getInt(index, 0));
                } else if (index == 25) {
                    this.f253.f6659 = obtainStyledAttributes.getBoolean(index, true);
                } else if (index == 27) {
                    this.f253.f6660 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f6410 = this.f253;
        m4390();
    }
}
