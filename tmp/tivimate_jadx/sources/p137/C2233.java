package p137;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.gms.internal.measurement.ˏʻ;
import p003.C0790;
import p012.C0882;
import p020.AbstractC1028;
import p020.C1025;
import p020.C1026;
import p186.AbstractC2823;
import p186.C2804;
import p186.C2826;
import p186.InterfaceC2774;
import p186.InterfaceC2786;
import p415.C4920;
import p415.InterfaceC4927;
import ʻʿ.ˈ;
import ﹳٴ.ﹳٴ;

/* renamed from: ˉˆ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2233 extends EditText implements InterfaceC2774, InterfaceC4927 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2250 f8762;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0882 f8763;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C4920 f8764;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C2248 f8765;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2315 f8766;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C2250 f8767;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r4v5, types: [ﹳـ.ˆʾ, java.lang.Object] */
    public C2233(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        AbstractC2339.m5434(context);
        AbstractC2281.m5326(getContext(), this);
        C0882 c0882 = new C0882(this);
        this.f8763 = c0882;
        c0882.m3123(attributeSet, i);
        C2315 c2315 = new C2315(this);
        this.f8766 = c2315;
        c2315.m5415(attributeSet, i);
        c2315.m5412();
        C2250 c2250 = new C2250();
        c2250.f8823 = this;
        this.f8762 = c2250;
        this.f8764 = new Object();
        C2250 c22502 = new C2250(this);
        this.f8767 = c22502;
        c22502.mo5266(attributeSet, i);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean isFocusable = super.isFocusable();
        boolean isClickable = super.isClickable();
        boolean isLongClickable = super.isLongClickable();
        int inputType = super.getInputType();
        KeyListener m5267 = c22502.m5267(keyListener);
        if (m5267 == keyListener) {
            return;
        }
        super.setKeyListener(m5267);
        super.setRawInputType(inputType);
        super.setFocusable(isFocusable);
        super.setClickable(isClickable);
        super.setLongClickable(isLongClickable);
    }

    private C2248 getSuperCaller() {
        if (this.f8765 == null) {
            this.f8765 = new C2248(this);
        }
        return this.f8765;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C0882 c0882 = this.f8763;
        if (c0882 != null) {
            c0882.m3135();
        }
        C2315 c2315 = this.f8766;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return ﹳٴ.ᴵˑ(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0882 c0882 = this.f8763;
        if (c0882 != null) {
            return c0882.m3121();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0882 c0882 = this.f8763;
        if (c0882 != null) {
            return c0882.m3129();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f8766.m5406();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f8766.m5408();
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        C2250 c2250;
        if (Build.VERSION.SDK_INT >= 28 || (c2250 = this.f8762) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = (TextClassifier) c2250.f8822;
        return textClassifier == null ? AbstractC2279.m5322((TextView) c2250.f8823) : textClassifier;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        int i;
        String[] m6277;
        InputConnection c1026;
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f8766.getClass();
        C2315.m5403(editorInfo, onCreateInputConnection, this);
        ˏʻ.ʼʼ(editorInfo, onCreateInputConnection, this);
        if (onCreateInputConnection != null && (i = Build.VERSION.SDK_INT) <= 30 && (m6277 = AbstractC2823.m6277(this)) != null) {
            AbstractC1028.m3352(editorInfo, m6277);
            ˈ r2 = new ˈ(5, this);
            if (i >= 25) {
                c1026 = new C1025(onCreateInputConnection, r2);
            } else if (AbstractC1028.m3353(editorInfo).length != 0) {
                c1026 = new C1026(onCreateInputConnection, r2);
            }
            onCreateInputConnection = c1026;
        }
        return this.f8767.m5263(onCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i = Build.VERSION.SDK_INT;
        if (i < 30 || i >= 33) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        int i = Build.VERSION.SDK_INT;
        boolean z = false;
        if (i < 31 && i >= 24 && dragEvent.getLocalState() == null && AbstractC2823.m6277(this) != null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                }
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (activity == null) {
                String str = "Can't handle drop: no activity: view=" + this;
            } else if (dragEvent.getAction() != 1 && dragEvent.getAction() == 3) {
                z = AbstractC2265.m5300(dragEvent, this, activity);
            }
        }
        if (z) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public final boolean onTextContextMenuItem(int i) {
        InterfaceC2786 interfaceC2786;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31 || AbstractC2823.m6277(this) == null || !(i == 16908322 || i == 16908337)) {
            return super.onTextContextMenuItem(i);
        }
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
        if (primaryClip != null && primaryClip.getItemCount() > 0) {
            if (i2 >= 31) {
                interfaceC2786 = new C0790(primaryClip, 1);
            } else {
                C2804 c2804 = new C2804();
                c2804.f10560 = primaryClip;
                c2804.f10557 = 1;
                interfaceC2786 = c2804;
            }
            interfaceC2786.mo2897(i == 16908322 ? 0 : 1);
            AbstractC2823.m6269(this, interfaceC2786.build());
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0882 c0882 = this.f8763;
        if (c0882 != null) {
            c0882.m3124();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0882 c0882 = this.f8763;
        if (c0882 != null) {
            c0882.m3117(i);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C2315 c2315 = this.f8766;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C2315 c2315 = this.f8766;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(ﹳٴ.ˉـ(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        this.f8767.m5264(z);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f8767.m5267(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0882 c0882 = this.f8763;
        if (c0882 != null) {
            c0882.m3128(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0882 c0882 = this.f8763;
        if (c0882 != null) {
            c0882.m3120(mode);
        }
    }

    @Override // p415.InterfaceC4927
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C2315 c2315 = this.f8766;
        c2315.m5414(colorStateList);
        c2315.m5412();
    }

    @Override // p415.InterfaceC4927
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C2315 c2315 = this.f8766;
        c2315.m5407(mode);
        c2315.m5412();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C2315 c2315 = this.f8766;
        if (c2315 != null) {
            c2315.m5410(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        C2250 c2250;
        if (Build.VERSION.SDK_INT >= 28 || (c2250 = this.f8762) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            c2250.f8822 = textClassifier;
        }
    }

    @Override // p186.InterfaceC2774
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2826 mo5235(C2826 c2826) {
        this.f8764.getClass();
        return C4920.m9722(this, c2826);
    }
}
