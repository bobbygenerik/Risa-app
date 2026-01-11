package p137;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import com.google.android.gms.internal.measurement.ˏʻ;
import p012.C0882;
import p415.InterfaceC4927;
import ᴵˋ.ˊʻ;
import ﹳٴ.ﹳٴ;

/* renamed from: ˉˆ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2338 extends CheckedTextView implements InterfaceC4927 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2315 f9078;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2294 f9079;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C2297 f9080;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C0882 f9081;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0086 A[Catch: all -> 0x0065, TryCatch #1 {all -> 0x0065, blocks: (B:3:0x004d, B:5:0x0053, B:8:0x0059, B:9:0x007f, B:11:0x0086, B:12:0x008d, B:14:0x0094, B:21:0x0068, B:23:0x006e, B:25:0x0074), top: B:2:0x004d }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0094 A[Catch: all -> 0x0065, TRY_LEAVE, TryCatch #1 {all -> 0x0065, blocks: (B:3:0x004d, B:5:0x0053, B:8:0x0059, B:9:0x007f, B:11:0x0086, B:12:0x008d, B:14:0x0094, B:21:0x0068, B:23:0x006e, B:25:0x0074), top: B:2:0x004d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2338(android.content.Context r9, android.util.AttributeSet r10) {
        /*
            r8 = this;
            p137.AbstractC2339.m5434(r9)
            r6 = 2130968817(0x7f0400f1, float:1.7546298E38)
            r8.<init>(r9, r10, r6)
            android.content.Context r9 = r8.getContext()
            p137.AbstractC2281.m5326(r9, r8)
            ˉˆ.ᴵˑ r9 = new ˉˆ.ᴵˑ
            r9.<init>(r8)
            r8.f9078 = r9
            r9.m5415(r10, r6)
            r9.m5412()
            ʻᴵ.ʼʼ r9 = new ʻᴵ.ʼʼ
            r9.<init>(r8)
            r8.f9081 = r9
            r9.m3123(r10, r6)
            ˉˆ.יـ r9 = new ˉˆ.יـ
            r9.<init>(r8)
            r8.f9079 = r9
            android.content.Context r9 = r8.getContext()
            r0 = 0
            int[] r3 = p350.AbstractC4295.f15923
            com.parse.ٴʼ r9 = com.parse.ٴʼ.ʿᵢ(r6, r0, r9, r10, r3)
            java.lang.Object r1 = r9.ᴵˊ
            r7 = r1
            android.content.res.TypedArray r7 = (android.content.res.TypedArray) r7
            android.content.Context r2 = r8.getContext()
            java.lang.Object r1 = r9.ᴵˊ
            r5 = r1
            android.content.res.TypedArray r5 = (android.content.res.TypedArray) r5
            r1 = r8
            r4 = r10
            p186.AbstractC2823.m6282(r1, r2, r3, r4, r5, r6)
            r10 = 1
            boolean r2 = r7.hasValue(r10)     // Catch: java.lang.Throwable -> L65
            if (r2 == 0) goto L68
            int r10 = r7.getResourceId(r10, r0)     // Catch: java.lang.Throwable -> L65
            if (r10 == 0) goto L68
            android.content.Context r2 = r8.getContext()     // Catch: java.lang.Throwable -> L65 android.content.res.Resources.NotFoundException -> L68
            android.graphics.drawable.Drawable r10 = ᴵˋ.ˊʻ.ﹳᐧ(r2, r10)     // Catch: java.lang.Throwable -> L65 android.content.res.Resources.NotFoundException -> L68
            r8.setCheckMarkDrawable(r10)     // Catch: java.lang.Throwable -> L65 android.content.res.Resources.NotFoundException -> L68
            goto L7f
        L65:
            r0 = move-exception
            r10 = r0
            goto Lac
        L68:
            boolean r10 = r7.hasValue(r0)     // Catch: java.lang.Throwable -> L65
            if (r10 == 0) goto L7f
            int r10 = r7.getResourceId(r0, r0)     // Catch: java.lang.Throwable -> L65
            if (r10 == 0) goto L7f
            android.content.Context r0 = r8.getContext()     // Catch: java.lang.Throwable -> L65
            android.graphics.drawable.Drawable r10 = ᴵˋ.ˊʻ.ﹳᐧ(r0, r10)     // Catch: java.lang.Throwable -> L65
            r8.setCheckMarkDrawable(r10)     // Catch: java.lang.Throwable -> L65
        L7f:
            r10 = 2
            boolean r0 = r7.hasValue(r10)     // Catch: java.lang.Throwable -> L65
            if (r0 == 0) goto L8d
            android.content.res.ColorStateList r10 = r9.ˈʿ(r10)     // Catch: java.lang.Throwable -> L65
            r8.setCheckMarkTintList(r10)     // Catch: java.lang.Throwable -> L65
        L8d:
            r10 = 3
            boolean r0 = r7.hasValue(r10)     // Catch: java.lang.Throwable -> L65
            if (r0 == 0) goto La1
            r0 = -1
            int r10 = r7.getInt(r10, r0)     // Catch: java.lang.Throwable -> L65
            r0 = 0
            android.graphics.PorterDuff$Mode r10 = p137.AbstractC2307.m5386(r10, r0)     // Catch: java.lang.Throwable -> L65
            r8.setCheckMarkTintMode(r10)     // Catch: java.lang.Throwable -> L65
        La1:
            r9.ᐧᴵ()
            ˉˆ.ـˆ r9 = r8.getEmojiTextViewHelper()
            r9.m5346(r4, r6)
            return
        Lac:
            r9.ᐧᴵ()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: p137.C2338.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    private C2297 getEmojiTextViewHelper() {
        if (this.f9080 == null) {
            this.f9080 = new C2297(this);
        }
        return this.f9080;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C2315 c2315 = this.f9078;
        if (c2315 != null) {
            c2315.m5412();
        }
        C0882 c0882 = this.f9081;
        if (c0882 != null) {
            c0882.m3135();
        }
        C2294 c2294 = this.f9079;
        if (c2294 != null) {
            c2294.m5342();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return ﹳٴ.ᴵˑ(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0882 c0882 = this.f9081;
        if (c0882 != null) {
            return c0882.m3121();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0882 c0882 = this.f9081;
        if (c0882 != null) {
            return c0882.m3129();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        C2294 c2294 = this.f9079;
        if (c2294 != null) {
            return c2294.f8974;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        C2294 c2294 = this.f9079;
        if (c2294 != null) {
            return c2294.f8973;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f9078.m5406();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f9078.m5408();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        ˏʻ.ʼʼ(editorInfo, onCreateInputConnection, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().m5344(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0882 c0882 = this.f9081;
        if (c0882 != null) {
            c0882.m3124();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0882 c0882 = this.f9081;
        if (c0882 != null) {
            c0882.m3117(i);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(ˊʻ.ﹳᐧ(getContext(), i));
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        C2294 c2294 = this.f9079;
        if (c2294 != null) {
            if (c2294.f8972) {
                c2294.f8972 = false;
            } else {
                c2294.f8972 = true;
                c2294.m5342();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C2315 c2315 = this.f9078;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C2315 c2315 = this.f9078;
        if (c2315 != null) {
            c2315.m5412();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(ﹳٴ.ˉـ(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().m5345(z);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0882 c0882 = this.f9081;
        if (c0882 != null) {
            c0882.m3128(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0882 c0882 = this.f9081;
        if (c0882 != null) {
            c0882.m3120(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        C2294 c2294 = this.f9079;
        if (c2294 != null) {
            c2294.f8974 = colorStateList;
            c2294.f8970 = true;
            c2294.m5342();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        C2294 c2294 = this.f9079;
        if (c2294 != null) {
            c2294.f8973 = mode;
            c2294.f8971 = true;
            c2294.m5342();
        }
    }

    @Override // p415.InterfaceC4927
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C2315 c2315 = this.f9078;
        c2315.m5414(colorStateList);
        c2315.m5412();
    }

    @Override // p415.InterfaceC4927
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C2315 c2315 = this.f9078;
        c2315.m5407(mode);
        c2315.m5412();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C2315 c2315 = this.f9078;
        if (c2315 != null) {
            c2315.m5410(context, i);
        }
    }
}
