package p188;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import p259.AbstractC3399;
import ﹳˋ.ʽʽ;
import ﹳˋ.ٴﹶ;

/* renamed from: ˋⁱ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2862 implements InterfaceC2869 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ٴﹶ f10767 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public ٴﹶ f10766 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public ٴﹶ f10759 = new Object();

    /* renamed from: ˈ, reason: contains not printable characters */
    public ٴﹶ f10761 = new Object();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public InterfaceC2852 f10762 = new C2867(0.0f);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public InterfaceC2852 f10769 = new C2867(0.0f);

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public InterfaceC2852 f10764 = new C2867(0.0f);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public InterfaceC2852 f10765 = new C2867(0.0f);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public ﾞᴵ f10758 = new Object();

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public ﾞᴵ f10760 = new Object();

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public ﾞᴵ f10763 = new Object();

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public ﾞᴵ f10768 = new Object();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static C2853 m6361(Context context, AttributeSet attributeSet, int i, int i2) {
        C2867 c2867 = new C2867(0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3399.f13287, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        return m6363(context, resourceId, resourceId2, c2867);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static InterfaceC2852 m6362(TypedArray typedArray, int i, InterfaceC2852 interfaceC2852) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue != null) {
            int i2 = peekValue.type;
            if (i2 == 5) {
                return new C2867(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i2 == 6) {
                return new C2851(peekValue.getFraction(1.0f, 1.0f));
            }
        }
        return interfaceC2852;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static C2853 m6363(Context context, int i, int i2, C2867 c2867) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
        if (i2 != 0) {
            contextThemeWrapper.getTheme().applyStyle(i2, true);
        }
        TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(AbstractC3399.f13296);
        try {
            int i3 = obtainStyledAttributes.getInt(0, 0);
            int i4 = obtainStyledAttributes.getInt(3, i3);
            int i5 = obtainStyledAttributes.getInt(4, i3);
            int i6 = obtainStyledAttributes.getInt(2, i3);
            int i7 = obtainStyledAttributes.getInt(1, i3);
            InterfaceC2852 m6362 = m6362(obtainStyledAttributes, 5, c2867);
            InterfaceC2852 m63622 = m6362(obtainStyledAttributes, 8, m6362);
            InterfaceC2852 m63623 = m6362(obtainStyledAttributes, 9, m6362);
            InterfaceC2852 m63624 = m6362(obtainStyledAttributes, 7, m6362);
            InterfaceC2852 m63625 = m6362(obtainStyledAttributes, 6, m6362);
            C2853 c2853 = new C2853();
            c2853.f10724 = ʽʽ.ᵎﹶ(i4);
            c2853.f10719 = m63622;
            c2853.f10723 = ʽʽ.ᵎﹶ(i5);
            c2853.f10726 = m63623;
            c2853.f10716 = ʽʽ.ᵎﹶ(i6);
            c2853.f10721 = m63624;
            c2853.f10718 = ʽʽ.ᵎﹶ(i7);
            c2853.f10722 = m63625;
            return c2853;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public final String toString() {
        return "[" + this.f10762 + ", " + this.f10769 + ", " + this.f10764 + ", " + this.f10765 + "]";
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean m6364() {
        return (this.f10766 instanceof C2859) && (this.f10767 instanceof C2859) && (this.f10759 instanceof C2859) && (this.f10761 instanceof C2859);
    }

    @Override // p188.InterfaceC2869
    /* renamed from: ʽ */
    public final C2862 mo6346(int[] iArr) {
        return this;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean m6365(RectF rectF) {
        boolean z = this.f10768.getClass().equals(ﾞᴵ.class) && this.f10760.getClass().equals(ﾞᴵ.class) && this.f10758.getClass().equals(ﾞᴵ.class) && this.f10763.getClass().equals(ﾞᴵ.class);
        float mo6342 = this.f10762.mo6342(rectF);
        return z && ((this.f10769.mo6342(rectF) > mo6342 ? 1 : (this.f10769.mo6342(rectF) == mo6342 ? 0 : -1)) == 0 && (this.f10765.mo6342(rectF) > mo6342 ? 1 : (this.f10765.mo6342(rectF) == mo6342 ? 0 : -1)) == 0 && (this.f10764.mo6342(rectF) > mo6342 ? 1 : (this.f10764.mo6342(rectF) == mo6342 ? 0 : -1)) == 0) && m6364();
    }

    @Override // p188.InterfaceC2869
    /* renamed from: ˈ */
    public final C2862 mo6347() {
        return this;
    }

    @Override // p188.InterfaceC2869
    /* renamed from: ˑﹳ */
    public final boolean mo6348() {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˋⁱ.ˉʿ, java.lang.Object] */
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C2853 m6366() {
        ?? obj = new Object();
        obj.f10724 = this.f10767;
        obj.f10723 = this.f10766;
        obj.f10716 = this.f10759;
        obj.f10718 = this.f10761;
        obj.f10719 = this.f10762;
        obj.f10726 = this.f10769;
        obj.f10721 = this.f10764;
        obj.f10722 = this.f10765;
        obj.f10715 = this.f10758;
        obj.f10717 = this.f10760;
        obj.f10720 = this.f10763;
        obj.f10725 = this.f10768;
        return obj;
    }

    @Override // p188.InterfaceC2869
    /* renamed from: ⁱˊ */
    public final C2862 mo6350(float f) {
        C2853 m6366 = m6366();
        m6366.f10719 = new C2867(f);
        m6366.f10726 = new C2867(f);
        m6366.f10721 = new C2867(f);
        m6366.f10722 = new C2867(f);
        return m6366.m6356();
    }

    @Override // p188.InterfaceC2869
    /* renamed from: ﹳٴ */
    public final C2862 mo6351(C2851 c2851) {
        C2853 m6366 = m6366();
        m6366.f10719 = c2851;
        m6366.f10726 = c2851;
        m6366.f10721 = c2851;
        m6366.f10722 = c2851;
        return m6366.m6356();
    }
}
