package p053;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import java.util.HashSet;
import java.util.Set;
import p035.AbstractC1220;
import p179.AbstractC2673;
import p179.AbstractC2727;
import p179.C2700;
import p312.C3855;
import p312.C3860;
import ʽⁱ.ᵎﹶ;

/* renamed from: ʽᵔ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1432 extends AbstractC2727 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ int f5595 = 1;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final CharSequence[] f5596;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final /* synthetic */ Object f5597;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public Object f5598;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final CharSequence[] f5599;

    public C1432(C1434 c1434, CharSequence[] charSequenceArr, CharSequence[] charSequenceArr2, CharSequence charSequence) {
        this.f5597 = c1434;
        this.f5596 = charSequenceArr;
        this.f5599 = charSequenceArr2;
        this.f5598 = charSequence;
    }

    public C1432(C1434 c1434, CharSequence[] charSequenceArr, CharSequence[] charSequenceArr2, Set set) {
        this.f5597 = c1434;
        this.f5596 = charSequenceArr;
        this.f5599 = charSequenceArr2;
        this.f5598 = new HashSet(set);
    }

    public C1432(C3860 c3860, String[] strArr, Drawable[] drawableArr) {
        this.f5597 = c3860;
        this.f5596 = strArr;
        this.f5599 = new String[strArr.length];
        this.f5598 = drawableArr;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean m4197(int i) {
        C3860 c3860 = (C3860) this.f5597;
        ᵎﹶ r1 = c3860.f15025;
        if (r1 == null) {
            return false;
        }
        if (i == 0) {
            return r1.ᐧﹶ(13);
        }
        if (i != 1) {
            return true;
        }
        return r1.ᐧﹶ(30) && c3860.f15025.ᐧﹶ(29);
    }

    @Override // p179.AbstractC2727
    /* renamed from: ᵔᵢ */
    public final AbstractC2673 mo610(ViewGroup viewGroup, int i) {
        switch (this.f5595) {
            case 0:
                return new ViewOnClickListenerC1433(AbstractC1220.m3789(viewGroup, R.layout.48, viewGroup, false), this);
            case 1:
                return new ViewOnClickListenerC1433(AbstractC1220.m3789(viewGroup, R.layout.qo, viewGroup, false), this);
            default:
                C3860 c3860 = (C3860) this.f5597;
                return new C3855(c3860, LayoutInflater.from(c3860.getContext()).inflate(R.layout.513, viewGroup, false));
        }
    }

    @Override // p179.AbstractC2727
    /* renamed from: ⁱˊ */
    public long mo2393(int i) {
        switch (this.f5595) {
            case 2:
                return i;
            default:
                return super.mo2393(i);
        }
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﹳٴ */
    public final int mo611() {
        switch (this.f5595) {
            case 0:
                return this.f5596.length;
            case 1:
                return this.f5596.length;
            default:
                return ((String[]) this.f5596).length;
        }
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﾞᴵ */
    public final void mo612(AbstractC2673 abstractC2673, int i) {
        switch (this.f5595) {
            case 0:
                ViewOnClickListenerC1433 viewOnClickListenerC1433 = (ViewOnClickListenerC1433) abstractC2673;
                viewOnClickListenerC1433.f5602.setChecked(((HashSet) this.f5598).contains(this.f5599[i].toString()));
                viewOnClickListenerC1433.f5600.setText(this.f5596[i]);
                return;
            case 1:
                ViewOnClickListenerC1433 viewOnClickListenerC14332 = (ViewOnClickListenerC1433) abstractC2673;
                viewOnClickListenerC14332.f5602.setChecked(TextUtils.equals(this.f5599[i].toString(), (CharSequence) this.f5598));
                viewOnClickListenerC14332.f5600.setText(this.f5596[i]);
                return;
            default:
                C3855 c3855 = (C3855) abstractC2673;
                View view = c3855.f10176;
                if (m4197(i)) {
                    view.setLayoutParams(new C2700(-1, -2));
                } else {
                    view.setLayoutParams(new C2700(0, 0));
                }
                TextView textView = c3855.f14910;
                ImageView imageView = c3855.f14909;
                TextView textView2 = c3855.f14907;
                textView.setText(((String[]) this.f5596)[i]);
                String str = ((String[]) this.f5599)[i];
                if (str == null) {
                    textView2.setVisibility(8);
                } else {
                    textView2.setText(str);
                }
                Drawable drawable = ((Drawable[]) this.f5598)[i];
                if (drawable == null) {
                    imageView.setVisibility(8);
                    return;
                } else {
                    imageView.setImageDrawable(drawable);
                    return;
                }
        }
    }
}
