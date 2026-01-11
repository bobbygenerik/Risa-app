package p188;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import j$.util.Objects;
import java.util.BitSet;
import p021.AbstractC1032;
import p021.AbstractC1033;
import p083.C1720;
import p167.C2603;
import p167.C2608;
import p235.C3197;
import p283.C3569;
import p349.AbstractC4293;
import ʽٴ.ˈ;
import ˉˆ.ʿ;
import ˊⁱ.ˑﹳ;

/* renamed from: ˋⁱ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2844 extends Drawable implements InterfaceC2843 {

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public static final C2863[] f10648;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public static final Paint f10649;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final C2845 f10650;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final AbstractC2858[] f10651;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ʿ f10652;

    /* renamed from: ʿ, reason: contains not printable characters */
    public C2862 f10653;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public C2603 f10654;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final Region f10655;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final Paint f10656;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final AbstractC2858[] f10657;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final RectF f10658;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public boolean f10659;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final Matrix f10660;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f10661;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final ˑﹳ f10662;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final C1720 f10663;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public C3569 f10664;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final Paint f10665;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public PorterDuffColorFilter f10666;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final Path f10667;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f10668;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public float[] f10669;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public float[] f10670;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C2861 f10671;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final boolean f10672;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final BitSet f10673;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final RectF f10674;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final C2608[] f10675;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final Path f10676;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final RectF f10677;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final Region f10678;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public PorterDuffColorFilter f10679;

    static {
        Paint paint = new Paint(1);
        f10649 = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        f10648 = new C2863[4];
        int i = 0;
        while (true) {
            C2863[] c2863Arr = f10648;
            if (i >= c2863Arr.length) {
                return;
            }
            c2863Arr[i] = new C2863(i);
            i++;
        }
    }

    public C2844() {
        this(new C2862());
    }

    public C2844(Context context, AttributeSet attributeSet, int i, int i2) {
        this(C2862.m6361(context, attributeSet, i, i2).m6356());
    }

    public C2844(C2861 c2861) {
        this.f10652 = new ʿ(11, this);
        this.f10651 = new AbstractC2858[4];
        this.f10657 = new AbstractC2858[4];
        this.f10673 = new BitSet(8);
        this.f10660 = new Matrix();
        this.f10676 = new Path();
        this.f10667 = new Path();
        this.f10674 = new RectF();
        this.f10677 = new RectF();
        this.f10655 = new Region();
        this.f10678 = new Region();
        Paint paint = new Paint(1);
        this.f10656 = paint;
        Paint paint2 = new Paint(1);
        this.f10665 = paint2;
        this.f10663 = new C1720();
        this.f10650 = Looper.getMainLooper().getThread() == Thread.currentThread() ? AbstractC2854.f10727 : new C2845();
        this.f10658 = new RectF();
        this.f10672 = true;
        this.f10659 = true;
        this.f10675 = new C2608[4];
        this.f10671 = c2861;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        m6324();
        m6329(getState());
        this.f10662 = new ˑﹳ(3, this);
    }

    public C2844(C2862 c2862) {
        this(new C2861(c2862));
    }

    public C2844(InterfaceC2869 interfaceC2869) {
        this(new C2861(interfaceC2869));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static float m6314(RectF rectF, C2862 c2862, float[] fArr) {
        if (fArr == null) {
            if (c2862.m6365(rectF)) {
                return c2862.f10762.mo6342(rectF);
            }
            return -1.0f;
        }
        if (fArr.length > 1) {
            float f = fArr[0];
            for (int i = 1; i < fArr.length; i++) {
                if (fArr[i] != f) {
                    return -1.0f;
                }
            }
        }
        if (c2862.m6364()) {
            return fArr[0];
        }
        return -1.0f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0093, code lost:
    
        if (r4.m6364() != false) goto L43;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r20) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p188.C2844.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f10671.f10750;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f10671;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.f10671.getClass();
        RectF m6326 = m6326();
        if (m6326.isEmpty()) {
            return;
        }
        float m6314 = m6314(m6326, this.f10671.f10755.mo6347(), this.f10670);
        if (m6314 >= 0.0f) {
            outline.setRoundRect(getBounds(), m6314 * this.f10671.f10742);
            return;
        }
        boolean z = this.f10661;
        Path path = this.f10676;
        if (z) {
            m6330(m6326, path);
            this.f10661 = false;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            AbstractC1032.m3370(outline, path);
            return;
        }
        if (i >= 29) {
            try {
                AbstractC1033.m3371(outline, path);
            } catch (IllegalArgumentException unused) {
            }
        } else if (path.isConvex()) {
            AbstractC1033.m3371(outline, path);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.f10671.f10751;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.f10655;
        region.set(bounds);
        RectF m6326 = m6326();
        Path path = this.f10676;
        m6330(m6326, path);
        Region region2 = this.f10678;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.f10661 = true;
        this.f10668 = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (super.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.f10671.f10749;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        this.f10671.getClass();
        ColorStateList colorStateList2 = this.f10671.f10746;
        if (colorStateList2 != null && colorStateList2.isStateful()) {
            return true;
        }
        ColorStateList colorStateList3 = this.f10671.f10744;
        return (colorStateList3 != null && colorStateList3.isStateful()) || this.f10671.f10755.mo6348();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f10671 = new C2861(this.f10671);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f10661 = true;
        this.f10668 = true;
        super.onBoundsChange(rect);
        if (this.f10671.f10755.mo6348() && !rect.isEmpty()) {
            m6331(this.f10659, getState());
        }
        this.f10659 = rect.isEmpty();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        if (this.f10671.f10755.mo6348()) {
            m6331(false, iArr);
        }
        boolean z = m6329(iArr) || m6324();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        C2861 c2861 = this.f10671;
        if (c2861.f10750 != i) {
            c2861.f10750 = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f10671.getClass();
        super.invalidateSelf();
    }

    @Override // p188.InterfaceC2843
    public final void setShapeAppearanceModel(C2862 c2862) {
        this.f10671.f10755 = c2862;
        this.f10670 = null;
        this.f10669 = null;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f10671.f10749 = colorStateList;
        m6324();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        C2861 c2861 = this.f10671;
        if (c2861.f10757 != mode) {
            c2861.f10757 = mode;
            m6324();
            super.invalidateSelf();
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C2862 m6315() {
        return this.f10671.f10755.mo6347();
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m6316(InterfaceC2869 interfaceC2869) {
        if (interfaceC2869 instanceof C2862) {
            setShapeAppearanceModel((C2862) interfaceC2869);
            return;
        }
        C2849 c2849 = (C2849) interfaceC2869;
        C2861 c2861 = this.f10671;
        if (c2861.f10755 != c2849) {
            c2861.f10755 = c2849;
            m6331(true, getState());
            invalidateSelf();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m6317(int i) {
        int i2;
        C2861 c2861 = this.f10671;
        float f = c2861.f10747 + 0.0f + c2861.f10756;
        C3197 c3197 = c2861.f10754;
        if (c3197 == null || !c3197.f12235 || AbstractC4293.m8697(i, 255) != c3197.f12232) {
            return i;
        }
        float min = (c3197.f12233 <= 0.0f || f <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f / r4)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
        int alpha = Color.alpha(i);
        int i3 = ˈ.ˏי(min, AbstractC4293.m8697(i, 255), c3197.f12234);
        if (min > 0.0f && (i2 = c3197.f12231) != 0) {
            i3 = AbstractC4293.m8698(AbstractC4293.m8697(i2, C3197.f12230), i3);
        }
        return AbstractC4293.m8697(i3, alpha);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final float m6318() {
        if (m6325()) {
            return this.f10665.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m6319(Canvas canvas) {
        if (this.f10673.cardinality() > 0) {
        }
        int i = this.f10671.f10748;
        Path path = this.f10676;
        C1720 c1720 = this.f10663;
        if (i != 0) {
            canvas.drawPath(path, c1720.f7033);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            AbstractC2858 abstractC2858 = this.f10651[i2];
            int i3 = this.f10671.f10752;
            Matrix matrix = AbstractC2858.f10738;
            abstractC2858.mo6359(matrix, c1720, i3, canvas);
            this.f10657[i2].mo6359(matrix, c1720, this.f10671.f10752, canvas);
        }
        if (this.f10672) {
            double d = 0;
            int sin = (int) (Math.sin(Math.toRadians(d)) * this.f10671.f10748);
            int cos = (int) (Math.cos(Math.toRadians(d)) * this.f10671.f10748);
            canvas.translate(-sin, -cos);
            canvas.drawPath(path, f10649);
            canvas.translate(sin, cos);
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m6320(C2603 c2603) {
        if (this.f10654 == c2603) {
            return;
        }
        this.f10654 = c2603;
        int i = 0;
        while (true) {
            C2608[] c2608Arr = this.f10675;
            if (i >= c2608Arr.length) {
                m6331(true, getState());
                invalidateSelf();
                return;
            }
            if (c2608Arr[i] == null) {
                c2608Arr[i] = new C2608(this, f10648[i]);
            }
            C2608 c2608 = c2608Arr[i];
            C2603 c26032 = new C2603();
            c26032.m5852((float) c2603.f9853);
            double d = c2603.f9854;
            c26032.m5851((float) (d * d));
            c2608.f9878 = c26032;
            i++;
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m6321(ColorStateList colorStateList) {
        C2861 c2861 = this.f10671;
        if (c2861.f10744 != colorStateList) {
            c2861.f10744 = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final void m6322() {
        C2861 c2861 = this.f10671;
        float f = c2861.f10747 + 0.0f;
        c2861.f10752 = (int) Math.ceil(0.75f * f);
        this.f10671.f10748 = (int) Math.ceil(f * 0.25f);
        m6324();
        super.invalidateSelf();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m6323(Canvas canvas, Paint paint, Path path, C2862 c2862, float[] fArr, RectF rectF) {
        float m6314 = m6314(rectF, c2862, fArr);
        if (m6314 < 0.0f) {
            canvas.drawPath(path, paint);
        } else {
            float f = m6314 * this.f10671.f10742;
            canvas.drawRoundRect(rectF, f, f, paint);
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final boolean m6324() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f10666;
        PorterDuffColorFilter porterDuffColorFilter3 = this.f10679;
        C2861 c2861 = this.f10671;
        ColorStateList colorStateList = c2861.f10749;
        PorterDuff.Mode mode = c2861.f10757;
        if (colorStateList == null || mode == null) {
            int color = this.f10656.getColor();
            int m6317 = m6317(color);
            porterDuffColorFilter = m6317 != color ? new PorterDuffColorFilter(m6317, PorterDuff.Mode.SRC_IN) : null;
        } else {
            porterDuffColorFilter = new PorterDuffColorFilter(m6317(colorStateList.getColorForState(getState(), 0)), mode);
        }
        this.f10666 = porterDuffColorFilter;
        this.f10671.getClass();
        this.f10679 = null;
        this.f10671.getClass();
        return (Objects.equals(porterDuffColorFilter2, this.f10666) && Objects.equals(porterDuffColorFilter3, this.f10679)) ? false : true;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean m6325() {
        Paint.Style style = this.f10671.f10743;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f10665.getStrokeWidth() > 0.0f;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final RectF m6326() {
        Rect bounds = getBounds();
        RectF rectF = this.f10674;
        rectF.set(bounds);
        return rectF;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m6327(float f) {
        C2861 c2861 = this.f10671;
        if (c2861.f10747 != f) {
            c2861.f10747 = f;
            m6322();
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final float m6328() {
        float[] fArr = this.f10670;
        if (fArr != null) {
            return (((fArr[3] + fArr[2]) - fArr[1]) - fArr[0]) / 2.0f;
        }
        RectF m6326 = m6326();
        C2862 m6315 = m6315();
        C2845 c2845 = this.f10650;
        c2845.getClass();
        float mo6342 = m6315.f10762.mo6342(m6326);
        C2862 m63152 = m6315();
        c2845.getClass();
        float mo63422 = m63152.f10765.mo6342(m6326) + mo6342;
        C2862 m63153 = m6315();
        c2845.getClass();
        float mo63423 = mo63422 - m63153.f10764.mo6342(m6326);
        C2862 m63154 = m6315();
        c2845.getClass();
        return (mo63423 - m63154.f10769.mo6342(m6326)) / 2.0f;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean m6329(int[] iArr) {
        boolean z;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.f10671.f10744 == null || color2 == (colorForState2 = this.f10671.f10744.getColorForState(iArr, (color2 = (paint2 = this.f10656).getColor())))) {
            z = false;
        } else {
            paint2.setColor(colorForState2);
            z = true;
        }
        if (this.f10671.f10746 == null || color == (colorForState = this.f10671.f10746.getColorForState(iArr, (color = (paint = this.f10665).getColor())))) {
            return z;
        }
        paint.setColor(colorForState);
        return true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6330(RectF rectF, Path path) {
        this.f10650.m6339(this.f10671.f10755.mo6347(), this.f10670, this.f10671.f10742, rectF, this.f10662, path);
        if (this.f10671.f10753 != 1.0f) {
            Matrix matrix = this.f10660;
            matrix.reset();
            float f = this.f10671.f10753;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.f10658, true);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m6331(boolean z, int[] iArr) {
        RectF m6326 = m6326();
        if (!this.f10671.f10755.mo6348() || m6326.isEmpty()) {
            return;
        }
        int i = 0;
        boolean z2 = z | (this.f10654 == null);
        if (this.f10670 == null) {
            this.f10670 = new float[4];
        }
        C2862 mo6346 = this.f10671.f10755.mo6346(iArr);
        while (i < 4) {
            this.f10650.getClass();
            float mo6342 = (i != 1 ? i != 2 ? i != 3 ? mo6346.f10769 : mo6346.f10762 : mo6346.f10765 : mo6346.f10764).mo6342(m6326);
            if (z2) {
                this.f10670[i] = mo6342;
            }
            C2608[] c2608Arr = this.f10675;
            C2608 c2608 = c2608Arr[i];
            if (c2608 != null) {
                c2608.m5861(mo6342);
                if (z2) {
                    c2608Arr[i].m5860();
                }
            }
            i++;
        }
        if (z2) {
            invalidateSelf();
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m6332(Context context) {
        this.f10671.f10754 = new C3197(context);
        m6322();
    }

    /* renamed from: ﾞᴵ */
    public void mo4013(Canvas canvas) {
        C2862 c2862 = this.f10653;
        float[] fArr = this.f10669;
        RectF m6326 = m6326();
        RectF rectF = this.f10677;
        rectF.set(m6326);
        float m6318 = m6318();
        rectF.inset(m6318, m6318);
        m6323(canvas, this.f10665, this.f10667, c2862, fArr, rectF);
    }
}
