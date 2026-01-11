package p179;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import p035.AbstractC1237;

/* renamed from: ˋˋ.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2701 extends AbstractC1237 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ int f10284;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2701(AbstractC2669 abstractC2669, int i) {
        super(abstractC2669);
        this.f10284 = i;
    }

    @Override // p035.AbstractC1237
    /* renamed from: ʼˎ */
    public final int mo3818() {
        int i;
        int m5987;
        switch (this.f10284) {
            case 0:
                AbstractC2669 abstractC2669 = (AbstractC2669) this.f4813;
                i = abstractC2669.f10152;
                m5987 = abstractC2669.m5987();
                break;
            default:
                AbstractC2669 abstractC26692 = (AbstractC2669) this.f4813;
                i = abstractC26692.f10148;
                m5987 = abstractC26692.m5988();
                break;
        }
        return i - m5987;
    }

    @Override // p035.AbstractC1237
    /* renamed from: ʼᐧ */
    public final int mo3819(View view) {
        switch (this.f10284) {
            case 0:
                AbstractC2669 abstractC2669 = (AbstractC2669) this.f4813;
                Rect rect = (Rect) this.f4812;
                abstractC2669.m5979(view, rect);
                return rect.left;
            default:
                AbstractC2669 abstractC26692 = (AbstractC2669) this.f4813;
                Rect rect2 = (Rect) this.f4812;
                abstractC26692.m5979(view, rect2);
                return rect2.top;
        }
    }

    @Override // p035.AbstractC1237
    /* renamed from: ˆʾ */
    public final int mo3820() {
        switch (this.f10284) {
            case 0:
                return ((AbstractC2669) this.f4813).m5987();
            default:
                return ((AbstractC2669) this.f4813).m5988();
        }
    }

    @Override // p035.AbstractC1237
    /* renamed from: ˈ */
    public final int mo3821(View view) {
        int mo491;
        int i;
        switch (this.f10284) {
            case 0:
                C2700 c2700 = (C2700) view.getLayoutParams();
                mo491 = ((AbstractC2669) this.f4813).mo491(view);
                i = ((ViewGroup.MarginLayoutParams) c2700).rightMargin;
                break;
            default:
                C2700 c27002 = (C2700) view.getLayoutParams();
                mo491 = ((AbstractC2669) this.f4813).mo477(view);
                i = ((ViewGroup.MarginLayoutParams) c27002).bottomMargin;
                break;
        }
        return mo491 + i;
    }

    @Override // p035.AbstractC1237
    /* renamed from: ˉʿ */
    public final int mo3822() {
        switch (this.f10284) {
            case 0:
                return ((AbstractC2669) this.f4813).m5984();
            default:
                return ((AbstractC2669) this.f4813).m5989();
        }
    }

    @Override // p035.AbstractC1237
    /* renamed from: ˉˆ */
    public final int mo3823(View view) {
        switch (this.f10284) {
            case 0:
                AbstractC2669 abstractC2669 = (AbstractC2669) this.f4813;
                Rect rect = (Rect) this.f4812;
                abstractC2669.m5979(view, rect);
                return rect.right;
            default:
                AbstractC2669 abstractC26692 = (AbstractC2669) this.f4813;
                Rect rect2 = (Rect) this.f4812;
                abstractC26692.m5979(view, rect2);
                return rect2.bottom;
        }
    }

    @Override // p035.AbstractC1237
    /* renamed from: ˑﹳ */
    public final int mo3824(View view) {
        int m5966;
        int i;
        switch (this.f10284) {
            case 0:
                C2700 c2700 = (C2700) view.getLayoutParams();
                ((AbstractC2669) this.f4813).getClass();
                m5966 = AbstractC2669.m5966(view) + ((ViewGroup.MarginLayoutParams) c2700).leftMargin;
                i = ((ViewGroup.MarginLayoutParams) c2700).rightMargin;
                break;
            default:
                C2700 c27002 = (C2700) view.getLayoutParams();
                ((AbstractC2669) this.f4813).getClass();
                m5966 = AbstractC2669.m5964(view) + ((ViewGroup.MarginLayoutParams) c27002).topMargin;
                i = ((ViewGroup.MarginLayoutParams) c27002).bottomMargin;
                break;
        }
        return m5966 + i;
    }

    @Override // p035.AbstractC1237
    /* renamed from: ٴﹶ */
    public final int mo3825() {
        switch (this.f10284) {
            case 0:
                return ((AbstractC2669) this.f4813).f10156;
            default:
                return ((AbstractC2669) this.f4813).f10147;
        }
    }

    @Override // p035.AbstractC1237
    /* renamed from: ᵎﹶ */
    public final int mo3826(View view) {
        int mo472;
        int i;
        switch (this.f10284) {
            case 0:
                C2700 c2700 = (C2700) view.getLayoutParams();
                mo472 = ((AbstractC2669) this.f4813).mo472(view);
                i = ((ViewGroup.MarginLayoutParams) c2700).leftMargin;
                break;
            default:
                C2700 c27002 = (C2700) view.getLayoutParams();
                mo472 = ((AbstractC2669) this.f4813).mo516(view);
                i = ((ViewGroup.MarginLayoutParams) c27002).topMargin;
                break;
        }
        return mo472 - i;
    }

    @Override // p035.AbstractC1237
    /* renamed from: ᵔʾ */
    public final int mo3827() {
        int m5984;
        int m5987;
        switch (this.f10284) {
            case 0:
                AbstractC2669 abstractC2669 = (AbstractC2669) this.f4813;
                m5984 = abstractC2669.f10152 - abstractC2669.m5984();
                m5987 = abstractC2669.m5987();
                break;
            default:
                AbstractC2669 abstractC26692 = (AbstractC2669) this.f4813;
                m5984 = abstractC26692.f10148 - abstractC26692.m5989();
                m5987 = abstractC26692.m5988();
                break;
        }
        return m5984 - m5987;
    }

    @Override // p035.AbstractC1237
    /* renamed from: ᵔᵢ */
    public final int mo3828() {
        switch (this.f10284) {
            case 0:
                return ((AbstractC2669) this.f4813).f10152;
            default:
                return ((AbstractC2669) this.f4813).f10148;
        }
    }

    @Override // p035.AbstractC1237
    /* renamed from: ᵔﹳ */
    public final void mo3829(int i) {
        switch (this.f10284) {
            case 0:
                ((AbstractC2669) this.f4813).mo997(i);
                return;
            default:
                ((AbstractC2669) this.f4813).mo1009(i);
                return;
        }
    }

    @Override // p035.AbstractC1237
    /* renamed from: ﾞʻ */
    public final int mo3830() {
        switch (this.f10284) {
            case 0:
                return ((AbstractC2669) this.f4813).f10147;
            default:
                return ((AbstractC2669) this.f4813).f10156;
        }
    }

    @Override // p035.AbstractC1237
    /* renamed from: ﾞᴵ */
    public final int mo3831(View view) {
        int m5964;
        int i;
        switch (this.f10284) {
            case 0:
                C2700 c2700 = (C2700) view.getLayoutParams();
                ((AbstractC2669) this.f4813).getClass();
                m5964 = AbstractC2669.m5964(view) + ((ViewGroup.MarginLayoutParams) c2700).topMargin;
                i = ((ViewGroup.MarginLayoutParams) c2700).bottomMargin;
                break;
            default:
                C2700 c27002 = (C2700) view.getLayoutParams();
                ((AbstractC2669) this.f4813).getClass();
                m5964 = AbstractC2669.m5966(view) + ((ViewGroup.MarginLayoutParams) c27002).leftMargin;
                i = ((ViewGroup.MarginLayoutParams) c27002).rightMargin;
                break;
        }
        return m5964 + i;
    }
}
