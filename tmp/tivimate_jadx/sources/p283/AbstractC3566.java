package p283;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import ar.tvplayer.tv.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.TreeMap;
import org.xmlpull.v1.XmlPullParserException;
import p032.C1161;
import p129.AbstractC2185;
import p170.C2617;
import p184.AbstractC2764;
import p188.C2847;
import p188.C2849;
import p188.C2860;
import p188.C2862;
import p188.C2865;
import p188.C2867;
import p188.InterfaceC2852;
import p188.InterfaceC2869;
import p259.AbstractC3399;
import ˉˆ.ʿ;

/* renamed from: ٴˉ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3566 extends LinearLayout {

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static final Object f13921 = null;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ʿ f13922;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f13923;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C1161 f13924;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f13925;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C2865 f13926;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f13927;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public C2849 f13928;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayList f13929;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Integer[] f13930;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C2847 f13931;

    /* JADX WARN: Type inference failed for: r0v33, types: [ˋⁱ.ʽʽ, java.lang.Object] */
    public AbstractC3566(Context context, AttributeSet attributeSet) {
        super(AbstractC2764.m6163(context, attributeSet, R.attr.3rh, R.style.f2674759j), attributeSet, R.attr.3rh);
        C2865 m6369;
        int next;
        XmlResourceParser xml;
        ?? obj;
        AttributeSet asAttributeSet;
        int next2;
        C2847 c2847;
        this.f13923 = 0;
        this.f13929 = new ArrayList();
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this;
        this.f13922 = new ʿ(24, materialButtonToggleGroup);
        this.f13924 = new C1161(21, materialButtonToggleGroup);
        this.f13927 = true;
        new HashMap();
        new HashMap();
        new ArrayList();
        new ArrayList();
        Context context2 = getContext();
        TypedArray m5186 = AbstractC2185.m5186(context2, attributeSet, AbstractC3399.f13289, R.attr.3rh, R.style.f2674759j, new int[0]);
        if (m5186.hasValue(2)) {
            int resourceId = m5186.getResourceId(2, 0);
            if (resourceId != 0 && context2.getResources().getResourceTypeName(resourceId).equals("xml")) {
                try {
                    xml = context2.getResources().getXml(resourceId);
                    try {
                        obj = new Object();
                        obj.f10693 = new int[10];
                        obj.f10694 = new ʿ[10];
                        asAttributeSet = Xml.asAttributeSet(xml);
                        do {
                            next2 = xml.next();
                            if (next2 == 2) {
                                break;
                            }
                        } while (next2 != 1);
                    } finally {
                    }
                } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
                }
                if (next2 != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                if (xml.getName().equals("selector")) {
                    obj.m6343(context2, xml, asAttributeSet, context2.getTheme());
                }
                xml.close();
                c2847 = obj;
                this.f13931 = c2847;
            }
            c2847 = null;
            this.f13931 = c2847;
        }
        if (m5186.hasValue(6)) {
            C2849 m6344 = C2849.m6344(context2, m5186, 6);
            this.f13928 = m6344;
            if (m6344 == null) {
                C2617 c2617 = new C2617(C2862.m6363(context2, m5186.getResourceId(6, 0), m5186.getResourceId(7, 0), new C2867(0)).m6356());
                this.f13928 = c2617.f9918 != 0 ? new C2849(c2617) : null;
            }
        }
        if (m5186.hasValue(3)) {
            C2867 c2867 = new C2867(0.0f);
            int resourceId2 = m5186.getResourceId(3, 0);
            if (resourceId2 == 0) {
                m6369 = C2865.m6369(C2862.m6362(m5186, 3, c2867));
            } else if (context2.getResources().getResourceTypeName(resourceId2).equals("xml")) {
                try {
                    XmlResourceParser xml2 = context2.getResources().getXml(resourceId2);
                    try {
                        m6369 = new C2865();
                        AttributeSet asAttributeSet2 = Xml.asAttributeSet(xml2);
                        do {
                            next = xml2.next();
                            if (next == 2) {
                                break;
                            }
                        } while (next != 1);
                        if (next != 2) {
                            throw new XmlPullParserException("No start tag found");
                        }
                        if (xml2.getName().equals("selector")) {
                            m6369.m6371(context2, xml2, asAttributeSet2, context2.getTheme());
                        }
                        xml2.close();
                    } finally {
                    }
                } catch (Resources.NotFoundException | IOException | XmlPullParserException unused2) {
                    m6369 = C2865.m6369(c2867);
                }
            } else {
                m6369 = C2865.m6369(C2862.m6362(m5186, 3, c2867));
            }
            this.f13926 = m6369;
        }
        this.f13925 = m5186.getDimensionPixelSize(1, 0);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(m5186.getBoolean(0, true));
        setOverflowMode(m5186.getInt(5, 0));
        getResources().getDimensionPixelOffset(R.dimen.2ur);
        m5186.recycle();
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (m7514(i)) {
                return i;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (m7514(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(View.generateViewId());
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [ٴˉ.ﾞᴵ, android.widget.LinearLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v3, types: [ٴˉ.ﾞᴵ, android.widget.LinearLayout$LayoutParams] */
    /* JADX WARN: Type inference failed for: r0v4, types: [ٴˉ.ﾞᴵ, android.widget.LinearLayout$LayoutParams] */
    /* renamed from: ˈ, reason: contains not printable characters */
    public static C3570 m7512(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LinearLayout.LayoutParams ? new LinearLayout.LayoutParams((LinearLayout.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LinearLayout.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LinearLayout.LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof MaterialButton) {
            m7518();
            this.f13927 = true;
            int indexOfChild = indexOfChild(null);
            if (indexOfChild < 0 || i != -1) {
                super.addView(view, i, layoutParams);
            } else {
                super.addView(view, indexOfChild, layoutParams);
            }
            MaterialButton materialButton = (MaterialButton) view;
            setGeneratedIdIfNeeded(materialButton);
            materialButton.setOnPressedChangeListenerInternal(this.f13922);
            this.f13929.add(materialButton.getShapeAppearance());
            materialButton.setEnabled(isEnabled());
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C3570;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.f13924);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            treeMap.put((MaterialButton) getChildAt(i), Integer.valueOf(i));
        }
        this.f13930 = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C3570(-2, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new C3570(-2, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m7512(layoutParams);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m7512(layoutParams);
    }

    public C2847 getButtonSizeChange() {
        return this.f13931;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        Integer[] numArr = this.f13930;
        return (numArr == null || i2 >= numArr.length) ? i2 : numArr[i2].intValue();
    }

    public InterfaceC2852 getInnerCornerSize() {
        return this.f13926.f10775;
    }

    public C2865 getInnerCornerSizeStateList() {
        return this.f13926;
    }

    public Drawable getOverflowButtonIcon() {
        throw null;
    }

    public int getOverflowMode() {
        return this.f13923;
    }

    public C2862 getShapeAppearance() {
        C2849 c2849 = this.f13928;
        if (c2849 == null) {
            return null;
        }
        return c2849.m6349();
    }

    public int getSpacing() {
        return this.f13925;
    }

    public C2849 getStateListShapeAppearance() {
        return this.f13928;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m7518();
            m7516();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        m7517();
        m7515();
        super.onMeasure(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            this.f13929.remove(indexOfChild);
        }
        this.f13927 = true;
        m7515();
        m7518();
        m7517();
    }

    public void setButtonSizeChange(C2847 c2847) {
        if (this.f13931 != c2847) {
            this.f13931 = c2847;
            m7516();
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        for (int i = 0; i < getChildCount(); i++) {
            ((MaterialButton) getChildAt(i)).setEnabled(z);
        }
    }

    public void setInnerCornerSize(InterfaceC2852 interfaceC2852) {
        this.f13926 = C2865.m6369(interfaceC2852);
        this.f13927 = true;
        m7515();
        invalidate();
    }

    public void setInnerCornerSizeStateList(C2865 c2865) {
        this.f13926 = c2865;
        this.f13927 = true;
        m7515();
        invalidate();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (getOrientation() != i) {
            this.f13927 = true;
        }
        super.setOrientation(i);
    }

    public void setOverflowButtonIcon(Drawable drawable) {
        throw null;
    }

    public void setOverflowButtonIconResource(int i) {
        throw null;
    }

    public void setOverflowMode(int i) {
        if (this.f13923 != i) {
            this.f13923 = i;
            requestLayout();
            invalidate();
        }
    }

    public void setShapeAppearance(C2862 c2862) {
        C2617 c2617 = new C2617(c2862);
        this.f13928 = c2617.f9918 == 0 ? null : new C2849(c2617);
        this.f13927 = true;
        m7515();
        invalidate();
    }

    public void setSpacing(int i) {
        this.f13925 = i;
        invalidate();
        requestLayout();
    }

    public void setStateListShapeAppearance(C2849 c2849) {
        this.f13928 = c2849;
        this.f13927 = true;
        m7515();
        invalidate();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ٴˉ.ﾞᴵ, android.widget.LinearLayout$LayoutParams] */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: ʽ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C3570 generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        ?? layoutParams = new LinearLayout.LayoutParams(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3399.f13300);
        obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.getText(1);
        obtainStyledAttributes.recycle();
        return layoutParams;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m7514(int i) {
        return getChildAt(i).getVisibility() != 8;
    }

    /* JADX WARN: Type inference failed for: r7v2, types: [ˋⁱ.ᵔʾ[], java.io.Serializable] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m7515() {
        C2617 c2617;
        int i;
        if (!(this.f13926 == null && this.f13928 == null) && this.f13927) {
            this.f13927 = false;
            int childCount = getChildCount();
            int firstVisibleChildIndex = getFirstVisibleChildIndex();
            int lastVisibleChildIndex = getLastVisibleChildIndex();
            int i2 = 0;
            while (i2 < childCount) {
                MaterialButton materialButton = (MaterialButton) getChildAt(i2);
                if (materialButton.getVisibility() != 8) {
                    boolean z = i2 == firstVisibleChildIndex;
                    boolean z2 = i2 == lastVisibleChildIndex;
                    Object obj = this.f13928;
                    ArrayList arrayList = this.f13929;
                    if (obj == null || (!z && !z2)) {
                        obj = (InterfaceC2869) arrayList.get(i2);
                    }
                    if (obj instanceof C2849) {
                        C2849 c2849 = (C2849) obj;
                        C2617 c26172 = new C2617(1);
                        int i3 = c2849.f10705;
                        c26172.f9918 = i3;
                        c26172.f9913 = c2849.f10704;
                        int[][] iArr = c2849.f10699;
                        int[][] iArr2 = new int[iArr.length];
                        c26172.f9914 = iArr2;
                        C2862[] c2862Arr = c2849.f10700;
                        c26172.f9915 = new C2862[c2862Arr.length];
                        System.arraycopy(iArr, 0, iArr2, 0, i3);
                        System.arraycopy(c2862Arr, 0, (C2862[]) c26172.f9915, 0, c26172.f9918);
                        c26172.f9920 = c2849.f10701;
                        c26172.f9916 = c2849.f10706;
                        c26172.f9917 = c2849.f10702;
                        c26172.f9912 = c2849.f10703;
                        c2617 = c26172;
                    } else {
                        c2617 = new C2617((C2862) arrayList.get(i2));
                    }
                    boolean z3 = getOrientation() == 0;
                    boolean z4 = getLayoutDirection() == 1;
                    if (z3) {
                        i = z ? 5 : 0;
                        if (z2) {
                            i |= 10;
                        }
                        if (z4) {
                            i = ((i & 10) >> 1) | ((i & 5) << 1);
                        }
                    } else {
                        i = z ? 3 : 0;
                        if (z2) {
                            i |= 12;
                        }
                    }
                    int i4 = ~i;
                    C2865 c2865 = this.f13926;
                    if ((i4 | 1) == i4) {
                        c2617.f9920 = c2865;
                    }
                    if ((i4 | 2) == i4) {
                        c2617.f9916 = c2865;
                    }
                    if ((i4 | 4) == i4) {
                        c2617.f9917 = c2865;
                    }
                    if ((i4 | 8) == i4) {
                        c2617.f9912 = c2865;
                    }
                    C2849 c28492 = c2617.f9918 == 0 ? null : new C2849(c2617);
                    boolean mo6348 = c28492.mo6348();
                    C2862 c2862 = c28492;
                    if (!mo6348) {
                        c2862 = c28492.m6349();
                    }
                    materialButton.setShapeAppearance(c2862);
                }
                i2++;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7516() {
        MaterialButton materialButton;
        MaterialButton materialButton2;
        float max;
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        if (firstVisibleChildIndex == -1 || this.f13931 == null || getChildCount() == 0) {
            return;
        }
        int i = Integer.MAX_VALUE;
        for (int i2 = firstVisibleChildIndex; i2 <= lastVisibleChildIndex; i2++) {
            if (m7514(i2)) {
                if (m7514(i2) && this.f13931 != null) {
                    MaterialButton materialButton3 = (MaterialButton) getChildAt(i2);
                    C2847 c2847 = this.f13931;
                    int width = materialButton3.getWidth();
                    int i3 = -width;
                    for (int i4 = 0; i4 < c2847.f10696; i4++) {
                        C2860 c2860 = (C2860) c2847.f10694[i4].ᴵˊ;
                        int i5 = c2860.f10741;
                        float f = c2860.f10740;
                        if (i5 == 2) {
                            max = Math.max(i3, f);
                        } else if (i5 == 1) {
                            max = Math.max(i3, width * f);
                        }
                        i3 = (int) max;
                    }
                    int max2 = Math.max(0, i3);
                    int i6 = i2 - 1;
                    while (true) {
                        materialButton = null;
                        if (i6 < 0) {
                            materialButton2 = null;
                            break;
                        } else {
                            if (m7514(i6)) {
                                materialButton2 = (MaterialButton) getChildAt(i6);
                                break;
                            }
                            i6--;
                        }
                    }
                    int allowedWidthDecrease = materialButton2 == null ? 0 : materialButton2.getAllowedWidthDecrease();
                    int childCount = getChildCount();
                    int i7 = i2 + 1;
                    while (true) {
                        if (i7 >= childCount) {
                            break;
                        }
                        if (m7514(i7)) {
                            materialButton = (MaterialButton) getChildAt(i7);
                            break;
                        }
                        i7++;
                    }
                    r5 = Math.min(max2, allowedWidthDecrease + (materialButton != null ? materialButton.getAllowedWidthDecrease() : 0));
                }
                if (i2 != firstVisibleChildIndex && i2 != lastVisibleChildIndex) {
                    r5 /= 2;
                }
                i = Math.min(i, r5);
            }
        }
        int i8 = firstVisibleChildIndex;
        while (i8 <= lastVisibleChildIndex) {
            if (m7514(i8)) {
                ((MaterialButton) getChildAt(i8)).setSizeChange(this.f13931);
                ((MaterialButton) getChildAt(i8)).setWidthChangeMax((i8 == firstVisibleChildIndex || i8 == lastVisibleChildIndex) ? i : i * 2);
            }
            i8++;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7517() {
        int i;
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i2 = firstVisibleChildIndex + 1; i2 < getChildCount(); i2++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i2);
            MaterialButton materialButton2 = (MaterialButton) getChildAt(i2 - 1);
            if (this.f13925 <= 0) {
                i = Math.min(materialButton.getStrokeWidth(), materialButton2.getStrokeWidth());
                materialButton.setShouldDrawSurfaceColorStroke(true);
                materialButton2.setShouldDrawSurfaceColorStroke(true);
            } else {
                materialButton.setShouldDrawSurfaceColorStroke(false);
                materialButton2.setShouldDrawSurfaceColorStroke(false);
                i = 0;
            }
            ViewGroup.LayoutParams layoutParams = materialButton.getLayoutParams();
            LinearLayout.LayoutParams c3570 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new C3570(layoutParams.width, layoutParams.height);
            if (getOrientation() == 0) {
                c3570.setMarginEnd(0);
                c3570.setMarginStart(this.f13925 - i);
                c3570.topMargin = 0;
            } else {
                c3570.bottomMargin = 0;
                c3570.topMargin = this.f13925 - i;
                c3570.setMarginStart(0);
            }
            materialButton.setLayoutParams(c3570);
        }
        if (getChildCount() == 0 || firstVisibleChildIndex == -1) {
            return;
        }
        ViewGroup.LayoutParams layoutParams2 = ((MaterialButton) getChildAt(firstVisibleChildIndex)).getLayoutParams();
        LinearLayout.LayoutParams c35702 = layoutParams2 instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams2 : new C3570(layoutParams2.width, layoutParams2.height);
        if (getOrientation() == 1) {
            c35702.topMargin = 0;
            c35702.bottomMargin = 0;
        } else {
            c35702.setMarginEnd(0);
            c35702.setMarginStart(0);
            c35702.leftMargin = 0;
            c35702.rightMargin = 0;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m7518() {
        for (int i = 0; i < getChildCount(); i++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i);
            LinearLayout.LayoutParams layoutParams = materialButton.f2634;
            if (layoutParams != null) {
                materialButton.setLayoutParams(layoutParams);
                materialButton.f2634 = null;
                materialButton.f2628 = -1.0f;
            }
        }
    }
}
