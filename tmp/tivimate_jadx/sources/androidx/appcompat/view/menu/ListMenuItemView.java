package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import com.parse.ٴʼ;
import p350.AbstractC4295;
import p353.C4329;
import p353.InterfaceC4304;
import p353.MenuC4312;

/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements InterfaceC4304, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public RadioButton f53;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C4329 f54;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f55;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final boolean f56;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public TextView f57;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public ImageView f58;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public TextView f59;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public boolean f60;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public LayoutInflater f61;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final Drawable f62;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ImageView f63;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public ImageView f64;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public CheckBox f65;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final int f66;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public LinearLayout f67;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final Context f68;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final Drawable f69;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ٴʼ r6 = ٴʼ.ʿᵢ(R.attr.4lc, 0, getContext(), attributeSet, AbstractC4295.f15922);
        this.f62 = r6.ˑٴ(5);
        TypedArray typedArray = (TypedArray) r6.ᴵˊ;
        this.f66 = typedArray.getResourceId(1, -1);
        this.f55 = typedArray.getBoolean(7, false);
        this.f68 = context;
        this.f69 = r6.ˑٴ(8);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.6qh, 0);
        this.f56 = obtainStyledAttributes.hasValue(0);
        r6.ᐧᴵ();
        obtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.f61 == null) {
            this.f61 = LayoutInflater.from(getContext());
        }
        return this.f61;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f63;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f58;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f58.getLayoutParams();
        rect.top = this.f58.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    @Override // p353.InterfaceC4304
    public C4329 getItemData() {
        return this.f54;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        setBackground(this.f62);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f57 = textView;
        int i = this.f66;
        if (i != -1) {
            textView.setTextAppearance(this.f68, i);
        }
        this.f59 = (TextView) findViewById(R.id.1ls);
        ImageView imageView = (ImageView) findViewById(R.id.6qe);
        this.f63 = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f69);
        }
        this.f58 = (ImageView) findViewById(R.id.721);
        this.f67 = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        if (this.f64 != null && this.f55) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f64.getLayoutParams();
            int i3 = layoutParams.height;
            if (i3 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i3;
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        View view;
        if (!z && this.f53 == null && this.f65 == null) {
            return;
        }
        if ((this.f54.f16075 & 4) != 0) {
            if (this.f53 == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.3ks, (ViewGroup) this, false);
                this.f53 = radioButton;
                LinearLayout linearLayout = this.f67;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f53;
            view = this.f65;
        } else {
            if (this.f65 == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.37k, (ViewGroup) this, false);
                this.f65 = checkBox;
                LinearLayout linearLayout2 = this.f67;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f65;
            view = this.f53;
        }
        if (z) {
            compoundButton.setChecked(this.f54.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f65;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f53;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if ((this.f54.f16075 & 4) != 0) {
            if (this.f53 == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.3ks, (ViewGroup) this, false);
                this.f53 = radioButton;
                LinearLayout linearLayout = this.f67;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f53;
        } else {
            if (this.f65 == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.37k, (ViewGroup) this, false);
                this.f65 = checkBox;
                LinearLayout linearLayout2 = this.f67;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f65;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.f60 = z;
        this.f55 = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f58;
        if (imageView != null) {
            imageView.setVisibility((this.f56 || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        MenuC4312 menuC4312 = this.f54.f16087;
        boolean z = this.f60;
        if (z || this.f55) {
            ImageView imageView = this.f64;
            if (imageView == null && drawable == null && !this.f55) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.io, (ViewGroup) this, false);
                this.f64 = imageView2;
                LinearLayout linearLayout = this.f67;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.f55) {
                this.f64.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.f64;
            if (!z) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.f64.getVisibility() != 0) {
                this.f64.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f57.getVisibility() != 8) {
                this.f57.setVisibility(8);
            }
        } else {
            this.f57.setText(charSequence);
            if (this.f57.getVisibility() != 0) {
                this.f57.setVisibility(0);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0055, code lost:
    
        if (r0 == false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x011b  */
    @Override // p353.InterfaceC4304
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo28(p353.C4329 r11) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.ListMenuItemView.mo28(ᵔʾ.ﾞʻ):void");
    }
}
