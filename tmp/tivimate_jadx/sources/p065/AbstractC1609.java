package p065;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import java.util.HashMap;
import p072.AbstractC1632;
import p072.C1635;

/* renamed from: ʾˋ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1609 extends View {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Context f6408;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int[] f6409;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public AbstractC1632 f6410;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public String f6411;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public HashMap f6412;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f6413;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public String f6414;

    public AbstractC1609(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6409 = new int[32];
        this.f6412 = new HashMap();
        this.f6408 = context;
        mo85(attributeSet);
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f6409, this.f6413);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f6414;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f6411;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setIds(String str) {
        this.f6414 = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f6413 = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m4393(str.substring(i));
                return;
            } else {
                m4393(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    public void setReferenceTags(String str) {
        this.f6411 = str;
        if (str == null) {
            return;
        }
        int i = 0;
        this.f6413 = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf == -1) {
                m4387(str.substring(i));
                return;
            } else {
                m4387(str.substring(i, indexOf));
                i = indexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f6414 = null;
        this.f6413 = 0;
        for (int i : iArr) {
            m4392(i);
        }
    }

    @Override // android.view.View
    public final void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.f6414 == null) {
            m4392(i);
        }
    }

    /* renamed from: ʼˎ */
    public void mo84(C1635 c1635, boolean z) {
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4387(String str) {
        if (str == null || str.length() == 0 || this.f6408 == null) {
            return;
        }
        String trim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof C1600) && trim.equals(((C1600) layoutParams).f6316)) {
                if (childAt.getId() == -1) {
                    String str2 = "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID";
                } else {
                    m4392(childAt.getId());
                }
            }
        }
    }

    /* renamed from: ˆʾ */
    public void mo93() {
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m4388() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        m4389((ConstraintLayout) parent);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m4389(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i = 0; i < this.f6413; i++) {
            View view = (View) constraintLayout.f257.get(this.f6409[i]);
            if (view != null) {
                view.setVisibility(visibility);
                if (elevation > 0.0f) {
                    view.setTranslationZ(view.getTranslationZ() + elevation);
                }
            }
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m4390() {
        if (this.f6410 == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof C1600) {
            ((C1600) layoutParams).f6341 = this.f6410;
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int m4391(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String str2;
        if (str != null && (resources = this.f6408.getResources()) != null) {
            int childCount = constraintLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = constraintLayout.getChildAt(i);
                if (childAt.getId() != -1) {
                    try {
                        str2 = resources.getResourceEntryName(childAt.getId());
                    } catch (Resources.NotFoundException unused) {
                        str2 = null;
                    }
                    if (str.equals(str2)) {
                        return childAt.getId();
                    }
                }
            }
        }
        return 0;
    }

    /* renamed from: ᵔᵢ */
    public void mo85(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, AbstractC1597.f6290);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 35) {
                    String string = obtainStyledAttributes.getString(index);
                    this.f6414 = string;
                    setIds(string);
                } else if (index == 36) {
                    String string2 = obtainStyledAttributes.getString(index);
                    this.f6411 = string2;
                    setReferenceTags(string2);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4392(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.f6413 + 1;
        int[] iArr = this.f6409;
        if (i2 > iArr.length) {
            this.f6409 = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f6409;
        int i3 = this.f6413;
        iArr2[i3] = i;
        this.f6413 = i3 + 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x005b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4393(java.lang.String r6) {
        /*
            r5 = this;
            android.content.Context r0 = r5.f6408
            if (r6 == 0) goto L9a
            int r1 = r6.length()
            if (r1 != 0) goto Lc
            goto L9a
        Lc:
            if (r0 != 0) goto L10
            goto L9a
        L10:
            java.lang.String r6 = r6.trim()
            android.view.ViewParent r1 = r5.getParent()
            boolean r1 = r1 instanceof androidx.constraintlayout.widget.ConstraintLayout
            r2 = 0
            if (r1 == 0) goto L24
            android.view.ViewParent r1 = r5.getParent()
            androidx.constraintlayout.widget.ConstraintLayout r1 = (androidx.constraintlayout.widget.ConstraintLayout) r1
            goto L25
        L24:
            r1 = r2
        L25:
            boolean r3 = r5.isInEditMode()
            if (r3 == 0) goto L50
            if (r1 == 0) goto L50
            boolean r3 = p137.AbstractC2305.m5366(r6)
            if (r3 == 0) goto L44
            java.util.HashMap r3 = r1.f258
            if (r3 == 0) goto L44
            boolean r3 = r3.containsKey(r6)
            if (r3 == 0) goto L44
            java.util.HashMap r3 = r1.f258
            java.lang.Object r3 = r3.get(r6)
            goto L45
        L44:
            r3 = r2
        L45:
            boolean r4 = r3 instanceof java.lang.Integer
            if (r4 == 0) goto L50
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            goto L51
        L50:
            r3 = 0
        L51:
            if (r3 != 0) goto L59
            if (r1 == 0) goto L59
            int r3 = r5.m4391(r1, r6)
        L59:
            if (r3 != 0) goto L65
            java.lang.Class<ʾˋ.ˉˆ> r1 = p065.AbstractC1602.class
            java.lang.reflect.Field r1 = r1.getField(r6)     // Catch: java.lang.Exception -> L65
            int r3 = r1.getInt(r2)     // Catch: java.lang.Exception -> L65
        L65:
            if (r3 != 0) goto L75
            android.content.res.Resources r1 = r0.getResources()
            java.lang.String r2 = "id"
            java.lang.String r0 = r0.getPackageName()
            int r3 = r1.getIdentifier(r6, r2, r0)
        L75:
            if (r3 == 0) goto L84
            java.util.HashMap r0 = r5.f6412
            java.lang.Integer r1 = java.lang.Integer.valueOf(r3)
            r0.put(r1, r6)
            r5.m4392(r3)
            goto L9a
        L84:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Could not find id of \""
            r0.<init>(r1)
            r0.append(r6)
            java.lang.String r6 = "\""
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            java.lang.String r0 = "ConstraintHelper"
        L9a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p065.AbstractC1609.m4393(java.lang.String):void");
    }

    /* renamed from: ﾞᴵ */
    public void mo94(ConstraintLayout constraintLayout) {
    }
}
